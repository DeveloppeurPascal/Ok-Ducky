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
/// File last update : 2025-05-03T17:30:52.000+02:00
/// Signature : 923821fc56bc1c207c8172d459bf32cc2f4f216e
/// ***************************************************************************
/// </summary>

unit fSceneGameOver;

interface

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
  cDialogBox,
  _ButtonsAncestor,
  cButtonText,
  Olf.FMX.TextImageFrame,
  FMX.Layouts,
  FMX.Objects;

type
  TGameOverScene = class(TcadDialogBox)
    Text1: TText;
    procedure btnCloseClick(Sender: TObject);
  private
  public
    procedure TranslateTexts(const Language: string); override;
    procedure AfterConstruction; override;
    procedure ShowScene; override;
  end;

implementation

{$R *.fmx}

uses
  System.Messaging,
  uScene,
  uconsts,
  uOkDuckyGameData,
  uOkDuckyScores;

procedure TGameOverScene.AfterConstruction;
begin
  inherited;
  Text1.TextSettings.Font.Size := Text1.TextSettings.Font.Size * 2;
end;

procedure TGameOverScene.btnCloseClick(Sender: TObject);
begin
  TScene.Current := TSceneType.Home;
end;

procedure TGameOverScene.ShowScene;
begin
  inherited;
  TOkDuckyScores.Current.Add('-', TOkDuckyGameData.Current.Score);
end;

procedure TGameOverScene.TranslateTexts(const Language: string);
begin
  inherited;

  if Language = 'fr' then
  begin
    txtTitle.Text := 'Game Over';
    Text1.Text := 'Score final :' + slinebreak +
      TOkDuckyGameData.Current.Score.ToString;
  end
  else
  begin
    txtTitle.Text := 'Game Over';
    Text1.Text := 'Final score :' + slinebreak +
      TOkDuckyGameData.Current.Score.ToString;
  end;
end;

initialization

TMessageManager.DefaultManager.SubscribeToMessage(TSceneFactory,
  procedure(const Sender: TObject; const Msg: TMessage)
  var
    NewScene: TGameOverScene;
  begin
    if (Msg is TSceneFactory) and
      ((Msg as TSceneFactory).SceneType = TSceneType.GameOver) then
    begin
      NewScene := TGameOverScene.Create(application.mainform);
      NewScene.Parent := application.mainform;
      TScene.RegisterScene(TSceneType.GameOver, NewScene);
    end;
  end);

end.
