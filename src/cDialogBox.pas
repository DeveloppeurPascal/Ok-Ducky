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
/// File last update : 2025-05-03T16:15:40.000+02:00
/// Signature : f6888137461130c0a592874edb2db0c9cd337584
/// ***************************************************************************
/// </summary>

unit cDialogBox;

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
  _ButtonsAncestor,
  cButtonText,
  Olf.FMX.TextImageFrame,
  FMX.Objects,
  FMX.Layouts;

type
  TcadDialogBox = class(T__SceneAncestor)
    BoxBackground: TRectangle;
    lHeader: TLayout;
    lFooter: TLayout;
    VertScrollBox1: TVertScrollBox;
    txtTitle: TOlfFMXTextImageFrame;
    btnClose: TcadTextButton;
    DialogBackground: TRectangle;
  private
  protected
    function GetImageIndexOfUnknowChar(Sender: TOlfFMXTextImageFrame;
      AChar: char): integer;
  public
    procedure ShowScene; override;
    procedure HideScene; override;
    procedure AfterConstruction; override;
    procedure TranslateTexts(const Language: string); override;
  end;

implementation

{$R *.fmx}

uses
  uSVGBitmapManager_InputPrompts,
  USVGUIAdventurePack,
  udmAdobeStock_431308055,
  uUIElements;

{ TcadDialogBox }

procedure TcadDialogBox.AfterConstruction;
begin
  inherited;
  txtTitle.Font := dmAdobeStock_431308055.ImageList;
  txtTitle.OnGetImageIndexOfUnknowChar := GetImageIndexOfUnknowChar;
end;

function TcadDialogBox.GetImageIndexOfUnknowChar(Sender: TOlfFMXTextImageFrame;
  AChar: char): integer;
begin
  if (AChar = '!') then
    result := Sender.getImageIndexOfChar('exclamation')
  else if (AChar = '?') then
    result := Sender.getImageIndexOfChar('interrogation')
  else if (AChar = '&') then
    result := Sender.getImageIndexOfChar('et')
  else if charinset(AChar, ['a' .. 'z']) then
    result := Sender.getImageIndexOfChar(UpperCase(AChar))
  else
    result := -1;
end;

procedure TcadDialogBox.HideScene;
begin
  inherited;
  TUIItemsList.Current.RemoveLayout;
end;

procedure TcadDialogBox.ShowScene;
begin
  inherited;
  TUIItemsList.Current.NewLayout;
  TUIItemsList.Current.AddControl(btnClose, nil, nil, nil, nil, true, true);

  BoxBackground.Fill.Bitmap.Bitmap.Assign
    (getBitmapFromSVG(TSVGUIAdventurePackIndex.PanelBeigeLight,
    BoxBackground.width, BoxBackground.height,
    BoxBackground.Fill.Bitmap.Bitmap.BitmapScale));
end;

procedure TcadDialogBox.TranslateTexts(const Language: string);
begin
  inherited;
  if (Language = 'fr') then
    btnClose.Text := 'Fermer'
  else
    btnClose.Text := 'Close';
end;

end.
