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
/// File last update : 2025-05-04T15:56:48.000+02:00
/// Signature : 692dc4073580d9e7523bfc5bb9914c8402ef0937
/// ***************************************************************************
/// </summary>

unit fSceneHome;

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
  _ScenesAncestor,
  FMX.Controls.Presentation,
  cTitle,
  _ButtonsAncestor,
  cButtonText,
  FMX.Layouts;

type
  THomeScene = class(T__SceneAncestor)
    cadTitle1: TcadTitle;
    lButtons: TLayout;
    flButtons: TFlowLayout;
    btnContinue: TcadTextButton;
    btnPlay: TcadTextButton;
    btnOptions: TcadTextButton;
    btnHallOfFame: TcadTextButton;
    btnCredits: TcadTextButton;
    btnQuit: TcadTextButton;
    procedure btnPlayClick(Sender: TObject);
    procedure btnQuitClick(Sender: TObject);
    procedure btnContinueClick(Sender: TObject);
    procedure btnCreditsClick(Sender: TObject);
    procedure btnHallOfFameClick(Sender: TObject);
    procedure btnOptionsClick(Sender: TObject);
  private
  protected
  public
    procedure ShowScene; override;
    procedure HideScene; override;
    procedure TranslateTexts(const Language: string); override;
  end;

implementation

{$R *.fmx}

uses
  System.Messaging,
  uConsts,
  uScene,
  uOkDuckyGameData,
  uUIElements;

procedure THomeScene.btnContinueClick(Sender: TObject);
begin
  TOkDuckyGameData.Current.ContinueGame;
  TScene.Current := TSceneType.Game;
end;

procedure THomeScene.btnCreditsClick(Sender: TObject);
begin
  TScene.Current := TSceneType.Credits;
end;

procedure THomeScene.btnHallOfFameClick(Sender: TObject);
begin
  TScene.Current := TSceneType.HallOfFame;
end;

procedure THomeScene.btnOptionsClick(Sender: TObject);
begin
  TScene.Current := TSceneType.options;
end;

procedure THomeScene.btnPlayClick(Sender: TObject);
begin
  TOkDuckyGameData.Current.StartANewGame;
  TScene.Current := TSceneType.Game;
end;

procedure THomeScene.btnQuitClick(Sender: TObject);
begin
  TScene.Current := TSceneType.Exit;
end;

procedure THomeScene.HideScene;
begin
  inherited;
  TUIItemsList.Current.RemoveLayout;
end;

procedure THomeScene.ShowScene;
begin
  inherited;

  TUIItemsList.Current.NewLayout;

  // TODO : automatiser le calcul du chainage des boutons selon leur position

  if TOkDuckyGameData.Current.IsPaused then
  begin
    // TODO : revoir entièrement le chainage des autres boutons qui passent de 4/5 à 5/6
    btnContinue.visible := true;
    TUIItemsList.Current.AddControl(btnContinue, nil, btnPlay, btnPlay,
      nil, true);
    TUIItemsList.Current.AddControl(btnPlay, btnContinue, btnOptions,
      btnOptions, btnContinue);
  end
  else
  begin
    btnContinue.visible := false;
    TUIItemsList.Current.AddControl(btnPlay, nil, btnOptions, btnHallOfFame,
      nil, true);
  end;
  TUIItemsList.Current.AddControl(btnOptions, nil, nil, btnCredits, btnPlay);
{$IF Defined(IOS) or Defined(ANDROID)}
  TUIItemsList.Current.AddControl(btnHallOfFame, btnPlay, btnCredits, nil, nil);
  TUIItemsList.Current.AddControl(btnCredits, btnOptions, nil, nil,
    btnHallOfFame);
  TUIItemsList.Current.AddQuit;
  btnQuit.visible := false;
{$ELSE}
  TUIItemsList.Current.AddControl(btnHallOfFame, btnPlay, btnCredits,
    btnQuit, nil);
  TUIItemsList.Current.AddControl(btnCredits, btnOptions, nil, nil,
    btnHallOfFame);
  TUIItemsList.Current.AddControl(btnQuit, btnHallOfFame, nil, nil, nil,
    false, true);
{$ENDIF}
end;

procedure THomeScene.TranslateTexts(const Language: string);
begin
  inherited;

  if Language = 'fr' then
  begin
    btnContinue.Text := 'Continuer';
    btnPlay.Text := 'Jouer';
    btnOptions.Text := 'Options';
    btnHallOfFame.Text := 'Scores';
    btnCredits.Text := 'Credits';
    btnQuit.Text := 'Quitter';
  end
  else
  begin
    btnContinue.Text := 'Continue';
    btnPlay.Text := 'Play';
    btnOptions.Text := 'Options';
    btnHallOfFame.Text := 'Scores';
    btnCredits.Text := 'Credits';
    btnQuit.Text := 'Quit';
  end;
end;

initialization

TMessageManager.DefaultManager.SubscribeToMessage(TSceneFactory,
  procedure(const Sender: TObject; const Msg: TMessage)
  var
    NewScene: THomeScene;
  begin
    if (Msg is TSceneFactory) and
      ((Msg as TSceneFactory).SceneType = TSceneType.Home) then
    begin
      NewScene := THomeScene.Create(application.mainform);
      NewScene.Parent := application.mainform;
      TScene.RegisterScene(TSceneType.Home, NewScene);
    end;
  end);

end.
