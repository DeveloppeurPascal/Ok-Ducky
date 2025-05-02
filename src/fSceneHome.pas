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
/// File last update : 2025-05-02T19:24:20.000+02:00
/// Signature : ea9e312073d3f351153ac979c1fc4130e78b9a29
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
    procedure FrameResized(Sender: TObject);
    procedure btnContinueClick(Sender: TObject);
    procedure btnCreditsClick(Sender: TObject);
    procedure btnHallOfFameClick(Sender: TObject);
    procedure btnOptionsClick(Sender: TObject);
  private
  protected
    procedure CalcButtonLayout;
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
  // TODO : à compléter
  ShowMessage('Not available in this version.');
  // TScene.Current := TSceneType.credits;
end;

procedure THomeScene.btnHallOfFameClick(Sender: TObject);
begin
  // TODO : à compléter
  ShowMessage('Not available in this version.');
  // TScene.Current := TSceneType.HallOfFame;
end;

procedure THomeScene.btnOptionsClick(Sender: TObject);
begin
  // TODO : à compléter
  ShowMessage('Not available in this version.');
  // TScene.Current := TSceneType.options;
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

procedure THomeScene.CalcButtonLayout;
const
  CTextButtonWidth = 200; // Width of SVG used for the button background
var
  i, nb: integer;
  Height1Col, Height2Col, Height3Col: Single;
begin

  // TODO : à revoir car on part du bas vers le haut et on doit retailler la zone complète
  Exit;

  // This calcul is right only if elements in the TFlowLayout have the same size
  // (height and width).
  Height1Col := 0;
  Height2Col := 0;
  Height3Col := 0;
  nb := 0;
  for i := 0 to flButtons.ChildrenCount - 1 do
    if (flButtons.Children[i] is TControl) and
      (flButtons.Children[i] as TControl).visible then
    begin
      Height1Col := Height1Col + (flButtons.Children[i] as TControl).margins.top
        + (flButtons.Children[i] as TControl).height +
        (flButtons.Children[i] as TControl).margins.Bottom;
      if (nb mod 2 = 0) then
        Height2Col := Height2Col + (flButtons.Children[i] as TControl)
          .margins.top + (flButtons.Children[i] as TControl).height +
          (flButtons.Children[i] as TControl).margins.Bottom;
      if (nb mod 3 = 0) then
        Height3Col := Height3Col + (flButtons.Children[i] as TControl)
          .margins.top + (flButtons.Children[i] as TControl).height +
          (flButtons.Children[i] as TControl).margins.Bottom;
      inc(nb);
    end;

  if (Height1Col + lButtons.Position.y < height) then
    flButtons.width := CTextButtonWidth
  else if (Height2Col + lButtons.Position.y < height) then
    flButtons.width := CTextButtonWidth * 2
  else if (Height3Col + lButtons.Position.y < height) then
    flButtons.width := CTextButtonWidth * 3
  else
    flButtons.width := CTextButtonWidth * 4;
  // TODO : revoir l'ordre de déplacement entre contrôles à l'écran selon le nombre de colonnes
end;

procedure THomeScene.FrameResized(Sender: TObject);
begin
  CalcButtonLayout;
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

  if TOkDuckyGameData.Current.IsPaused then
  begin
    btnContinue.visible := true;
    TUIItemsList.Current.AddControl(btnContinue, nil, btnPlay, btnPlay,
      nil, true);
    TUIItemsList.Current.AddControl(btnPlay, btnContinue, btnOptions,
      btnOptions, btnContinue);
  end
  else
  begin
    btnContinue.visible := false;
    TUIItemsList.Current.AddControl(btnPlay, nil, btnOptions, btnOptions,
      nil, true);
  end;
  TUIItemsList.Current.AddControl(btnOptions, btnPlay, btnHallOfFame,
    btnHallOfFame, btnPlay);
  TUIItemsList.Current.AddControl(btnHallOfFame, btnOptions, btnCredits,
    btnCredits, btnOptions);
{$IF Defined(IOS) or Defined(ANDROID)}
  TUIItemsList.Current.AddControl(btnCredits, btnHallOfFame, nil, nil,
    btnHallOfFame);
  TUIItemsList.Current.AddQuit;
  btnQuit.visible := false;
{$ELSE}
  TUIItemsList.Current.AddControl(btnCredits, btnHallOfFame, btnQuit, btnQuit,
    btnHallOfFame);
  TUIItemsList.Current.AddControl(btnQuit, btnCredits, nil, nil, btnCredits,
    false, true);
{$ENDIF}
  CalcButtonLayout;
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
    btnHallOfFame.Text := 'Hall of fame';
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
