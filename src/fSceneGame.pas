/// <summary>
/// ***************************************************************************
///
/// Ok Ducky!
///
/// Copyright 2021-2025 Patrick PREMARTIN under AGPL 3.0 license.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
/// THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
/// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
/// DEALINGS IN THE SOFTWARE.
///
/// ***************************************************************************
///
/// Author(s) :
/// Patrick PREMARTIN
///
/// Site :
/// https://okducky.gamolf.fr
///
/// Project site :
/// https://github.com/DeveloppeurPascal/Ok-Ducky
///
/// ***************************************************************************
/// File last update : 2025-05-01T18:01:44.000+02:00
/// Signature : 0819879fac5220eccbcb95672b3f02d61342abc4
/// ***************************************************************************
/// </summary>

unit fSceneGame;

interface

{$MESSAGE WARN 'revoir affichage du score et des autres éléments de jeu'}

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Graphics,
  FMX.Controls,
  FMX.Forms,
  FMX.Dialogs,
  FMX.StdCtrls,
  System.Messaging,
  _ScenesAncestor,
  FMX.Objects,
  FMX.Layouts;

type
  TGameScene = class(T__SceneAncestor)
    GridPanelLayout1: TGridPanelLayout;
    txtScore: TText;
    txtVies: TText;
    txtMunitions: TText;
  private
  protected
    procedure DoScoreChanged(const Sender: TObject; const Msg: TMessage);
    procedure DoNbLivesChanged(const Sender: TObject; const Msg: TMessage);
    procedure DoNbBulletsChanged(const Sender: TObject; const Msg: TMessage);
    procedure EndOfGame;
  public
    procedure ShowScene; override;
    procedure HideScene; override;
  end;

implementation

{$R *.fmx}

uses
  uScene,
  uconsts,
  uGameData,
  uOkDuckyGameData;

{ TGameScene }

procedure TGameScene.DoNbBulletsChanged(const Sender: TObject;
  const Msg: TMessage);
begin
  txtMunitions.Text := (Msg as TNbBulletsChangedMessage).NbBullets.ToString;

  if ((Msg as TNbBulletsChangedMessage).NbBullets < 1) then
    EndOfGame;
end;

procedure TGameScene.DoNbLivesChanged(const Sender: TObject;
  const Msg: TMessage);
begin
  txtVies.Text := (Msg as TNbLivesChangedMessage).NbLives.ToString;

  if ((Msg as TNbLivesChangedMessage).NbLives < 1) then
    EndOfGame;
end;

procedure TGameScene.DoScoreChanged(const Sender: TObject; const Msg: TMessage);
begin
  txtScore.Text := (Msg as TScoreChangedMessage).Score.ToString;
end;

procedure TGameScene.EndOfGame;
begin
  TOkDuckyGameData.Current.StopGame;
  TScene.Current := TSceneType.GameOver;
end;

procedure TGameScene.HideScene;
begin
  inherited;
  TMessageManager.DefaultManager.Unsubscribe(TScoreChangedMessage,
    DoScoreChanged);
  TMessageManager.DefaultManager.Unsubscribe(TNbLivesChangedMessage,
    DoNbLivesChanged);
  TMessageManager.DefaultManager.Unsubscribe(TNbBulletsChangedMessage,
    DoNbBulletsChanged);
end;

procedure TGameScene.ShowScene;
begin
  inherited;
  TMessageManager.DefaultManager.SubscribeToMessage(TScoreChangedMessage,
    DoScoreChanged);
  TMessageManager.DefaultManager.SubscribeToMessage(TNbLivesChangedMessage,
    DoNbLivesChanged);
  TMessageManager.DefaultManager.SubscribeToMessage(TNbBulletsChangedMessage,
    DoNbBulletsChanged);

  txtScore.Text := TOkDuckyGameData.Current.Score.ToString;
  txtVies.Text := TOkDuckyGameData.Current.NbLives.ToString;
  txtMunitions.Text := TOkDuckyGameData.Current.NbBullets.ToString;
end;

initialization

TMessageManager.DefaultManager.SubscribeToMessage(TSceneFactory,
  procedure(const Sender: TObject; const Msg: TMessage)
  var
    NewScene: TGameScene;
  begin
    if (Msg is TSceneFactory) and
      ((Msg as TSceneFactory).SceneType = TSceneType.Game) then
    begin
      NewScene := TGameScene.Create(application.mainform);
      NewScene.Parent := application.mainform;
      TScene.RegisterScene(TSceneType.Game, NewScene);
    end;
  end);

end.
