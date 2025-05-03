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
/// File last update : 2025-05-03T17:38:44.000+02:00
/// Signature : 2ee1fb78b3e6bce3032e3477db7438ffbf688339
/// ***************************************************************************
/// </summary>

unit fSceneHallOfFame;

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
  THallOfFameScene = class(TcadDialogBox)
    FlowLayout1: TFlowLayout;
    procedure btnCloseClick(Sender: TObject);
  private
  protected
  public
    procedure TranslateTexts(const Language: string); override;
    procedure ShowScene; override;
  end;

implementation

{$R *.fmx}

uses
  System.Messaging,
  uScene,
  uConsts,
  uOkDuckyScores,
  udmKenneyNumbers;

procedure THallOfFameScene.btnCloseClick(Sender: TObject);
begin
  tscene.Current := TSceneType.Home;
end;

procedure THallOfFameScene.ShowScene;
var
  i, nb: integer;
  h: single;
  txt: TOlfFMXTextImageFrame;
  PrecScore: int64;
begin
  inherited;

  // Empty the FlowLayout
  while FlowLayout1.ChildrenCount > 0 do
    FlowLayout1.Children[0].Free;

  TOkDuckyScores.Current.SortByPointsDesc;

  // Add scores to the FlowLayout
  h := 0;
  i := 0;
  nb := 0;
  PrecScore := 0;
  while (i < TOkDuckyScores.Current.count) and (nb < 100) do
  begin
    if (PrecScore <> TOkDuckyScores.Current[i].Points) then
    begin
      PrecScore := TOkDuckyScores.Current[i].Points;
      inc(nb);

      // Add a score
      txt := TOlfFMXTextImageFrame.Create(self);
      txt.Parent := FlowLayout1;
      txt.height := 40;
      txt.margins.Bottom := 10;
      txt.Font := dmKenneyNumbers.ImageList;
      txt.Text := TOkDuckyScores.Current[i].Points.ToString;

      // TODO : to change when pseudos will be recorded (and change the font)
      // if TOkDuckyScores.Current[i].Pseudo.IsEmpty then
      // txt.Text := TOkDuckyScores.Current[i].Points.ToString
      // else
      // txt.Text := TOkDuckyScores.Current[i].Pseudo + ' - ' +
      // TOkDuckyScores.Current[i].Points.ToString;

      // Go to next line
      TFlowLayoutBreak.Create(self).Parent := FlowLayout1;

      // Set the FlowLayout height to have a vertical scroll if needed
      h := h + txt.height + txt.margins.Bottom;
    end;

    inc(i);
  end;
  FlowLayout1.height := h;
end;

procedure THallOfFameScene.TranslateTexts(const Language: string);
begin
  inherited;

  if Language = 'fr' then
    txtTitle.Text := 'Scores'
  else
    txtTitle.Text := 'Hall of Fame';
end;

initialization

TMessageManager.DefaultManager.SubscribeToMessage(TSceneFactory,
  procedure(const Sender: TObject; const Msg: TMessage)
  var
    NewScene: THallOfFameScene;
  begin
    if (Msg is TSceneFactory) and
      ((Msg as TSceneFactory).SceneType = TSceneType.HallOfFame) then
    begin
      NewScene := THallOfFameScene.Create(application.mainform);
      NewScene.Parent := application.mainform;
      tscene.RegisterScene(TSceneType.HallOfFame, NewScene);
    end;
  end);

end.
