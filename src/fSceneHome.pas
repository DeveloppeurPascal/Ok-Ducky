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
/// File last update : 2025-05-03T18:46:10.000+02:00
/// Signature : 43b2b53b62feb9dd4ddf72775214365d19ce6cd2
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

procedure THomeScene.CalcButtonLayout;
const
  CTextButtonWidth = 200; // Width of SVG used for the button background
var
  i, nb: integer;
  Height1Col, Height2Col, Height3Col: Single;
begin
  // TODO : retirer cette méthode qui à priori ne servira à rien sur ce jeu puisue l'affichage des boutons en deux colonnes convient aux tailles des appareils ciblés

  // A revoir car on part du bas vers le haut et on doit retailler la zone complète
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
