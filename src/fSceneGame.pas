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
/// File last update : 2025-05-04T14:48:28.000+02:00
/// Signature : 8df59ec010fd800abfc8b6e9c7a9833cd6f87c54
/// ***************************************************************************
/// </summary>

unit fSceneGame;

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
  System.Messaging,
  _ScenesAncestor,
  FMX.Objects,
  FMX.Layouts,
  Olf.FMX.TextImageFrame,
  FMX.Effects;

type
  TGameScene = class(T__SceneAncestor)
    txtScore: TOlfFMXTextImageFrame;
    txtNbBullets: TOlfFMXTextImageFrame;
    txtNbLives: TOlfFMXTextImageFrame;
    ShadowEffect1: TShadowEffect;
    ShadowEffect2: TShadowEffect;
    ShadowEffect3: TShadowEffect;
    lGameInfos: TLayout;
    procedure GridPanelLayout1Resized(Sender: TObject);
  private
  protected
    procedure DoScoreChanged(const Sender: TObject; const Msg: TMessage);
    procedure DoNbLivesChanged(const Sender: TObject; const Msg: TMessage);
    procedure DoNbBulletsChanged(const Sender: TObject; const Msg: TMessage);
    procedure EndOfGame;
    procedure UpdateScore(const Value: Int64);
    procedure UpdateNbLives(const Value: Int64);
    procedure UpdateNbBullets(const Value: Int64);
    function GetImageIndexOfUnknowChar(Sender: TOlfFMXTextImageFrame;
      AChar: char): integer;
    procedure MiseEnPause;
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
  uOkDuckyGameData,
  udmKenneyNumbers,
  uUIElements,
  Gamolf.RTL.UIElements,
  Gamolf.FMX.Joystick,
  Gamolf.RTL.Joystick;

{ TGameScene }

procedure TGameScene.DoNbBulletsChanged(const Sender: TObject;
  const Msg: TMessage);
begin
  UpdateNbBullets((Msg as TNbBulletsChangedMessage).NbBullets);

  if ((Msg as TNbBulletsChangedMessage).NbBullets < 1) then
    EndOfGame;
end;

procedure TGameScene.DoNbLivesChanged(const Sender: TObject;
  const Msg: TMessage);
begin
  UpdateNbLives((Msg as TNbLivesChangedMessage).NbLives);

  if ((Msg as TNbLivesChangedMessage).NbLives < 1) then
    EndOfGame;
end;

procedure TGameScene.DoScoreChanged(const Sender: TObject; const Msg: TMessage);
begin
  UpdateScore((Msg as TScoreChangedMessage).Score);
end;

procedure TGameScene.EndOfGame;
begin
  TOkDuckyGameData.Current.StopGame;
  TScene.Current := TSceneType.GameOver;
end;

function TGameScene.GetImageIndexOfUnknowChar(Sender: TOlfFMXTextImageFrame;
  AChar: char): integer;
begin
  if AChar = 'S' then
    result := Sender.getImageIndexOfChar('icon_duck')
  else if AChar = 'B' then
    result := Sender.getImageIndexOfChar('icon_bullet_gold_long')
  else if AChar = 'L' then
    result := Sender.getImageIndexOfChar('shot_brown_large')
  else
    result := -1;
end;

procedure TGameScene.GridPanelLayout1Resized(Sender: TObject);
begin
  inherited;
  txtScore.height := (txtScore.parent as tcontrol).height;
  txtNbBullets.height := (txtNbBullets.parent as tcontrol).height;
  txtNbLives.height := (txtNbLives.parent as tcontrol).height;
end;

procedure TGameScene.HideScene;
begin
  inherited;

  TUIItemsList.Current.RemoveLayout;

  TMessageManager.DefaultManager.Unsubscribe(TScoreChangedMessage,
    DoScoreChanged);
  TMessageManager.DefaultManager.Unsubscribe(TNbLivesChangedMessage,
    DoNbLivesChanged);
  TMessageManager.DefaultManager.Unsubscribe(TNbBulletsChangedMessage,
    DoNbBulletsChanged);
end;

procedure TGameScene.MiseEnPause;
begin
  // TODO : implémenter une vraie mise en pause du jeu (archiver / restaurer la position des canards et leur état)
  // TOkDuckyGameData.Current.PauseGame;
  // TScene.Current := TSceneType.Home;

  TOkDuckyGameData.Current.StopGame;
  TScene.Current := TSceneType.GameOver;
end;

procedure TGameScene.ShowScene;
var
  UIItem: TUIElement;
begin
  inherited;

  TUIItemsList.Current.NewLayout;
  UIItem := TUIItemsList.Current.AddUIItem(
    procedure(const Sender: TObject)
    begin
      MiseEnPause;
    end);
  UIItem.KeyShortcuts.Add(vkEscape, #0, []);
  UIItem.KeyShortcuts.Add(vkHardwareBack, #0, []);
  UIItem.GamePadButtons := [TJoystickButtons.x];
  UIItem.TagObject := self;

  txtScore.Font := dmKenneyNumbers.ImageList;
  txtScore.OnGetImageIndexOfUnknowChar := GetImageIndexOfUnknowChar;
  txtScore.SpaceWidth := 20;
  txtNbBullets.Font := dmKenneyNumbers.ImageList;
  txtNbBullets.OnGetImageIndexOfUnknowChar := GetImageIndexOfUnknowChar;
  txtNbBullets.SpaceWidth := 20;
  txtNbLives.Font := dmKenneyNumbers.ImageList;
  txtNbLives.OnGetImageIndexOfUnknowChar := GetImageIndexOfUnknowChar;
  txtNbLives.SpaceWidth := 20;

  TMessageManager.DefaultManager.SubscribeToMessage(TScoreChangedMessage,
    DoScoreChanged);
  TMessageManager.DefaultManager.SubscribeToMessage(TNbLivesChangedMessage,
    DoNbLivesChanged);
  TMessageManager.DefaultManager.SubscribeToMessage(TNbBulletsChangedMessage,
    DoNbBulletsChanged);

  UpdateScore(TOkDuckyGameData.Current.Score);
  UpdateNbLives(TOkDuckyGameData.Current.NbLives);
  UpdateNbBullets(TOkDuckyGameData.Current.NbBullets);
end;

procedure TGameScene.UpdateNbBullets(const Value: Int64);
begin
  txtNbBullets.Text := 'B ' + Value.ToString;
end;

procedure TGameScene.UpdateNbLives(const Value: Int64);
begin
  txtNbLives.Text := 'L ' + Value.ToString;
end;

procedure TGameScene.UpdateScore(const Value: Int64);
begin
  txtScore.Text := 'S ' + Value.ToString;
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
      NewScene.parent := application.mainform;
      TScene.RegisterScene(TSceneType.Game, NewScene);
    end;
  end);

end.
