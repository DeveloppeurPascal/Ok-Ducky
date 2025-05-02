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
/// File last update : 2025-05-02T19:04:16.000+02:00
/// Signature : 1a082562baf07143387ba0772e6858e60bc53c60
/// ***************************************************************************
/// </summary>

unit cButtonText;

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
  _ButtonsAncestor,
  Olf.FMX.TextImageFrame,
  FMX.Objects,
  FMX.Effects;

type
  TcadTextButton = class(T__ButtonAncestor)
    BackgroundUp: TRectangle;
    BackgroundDown: TRectangle;
    TextDown: TOlfFMXTextImageFrame;
    TextUp: TOlfFMXTextImageFrame;
    FocusLeft: TRectangle;
    FocusRight: TRectangle;
  private
  protected
    function GetImageIndexOfUnknowChar(Sender: TOlfFMXTextImageFrame;
      AChar: char): integer;
  public
    procedure Repaint; override;
    procedure AfterConstruction; override;
  end;

implementation

{$R *.fmx}

uses
  USVGUIAdventurePack,
  uSVGBitmapManager_InputPrompts,
  udmAdobeStock_119031485;

{ TcadTextButton }

procedure TcadTextButton.AfterConstruction;
begin
  inherited;
  TextDown.Font := dmAdobeStock_119031485.ImageList;
  TextDown.OnGetImageIndexOfUnknowChar := GetImageIndexOfUnknowChar;
  TextUp.Font := dmAdobeStock_119031485.ImageList;
  TextUp.OnGetImageIndexOfUnknowChar := GetImageIndexOfUnknowChar;
end;

function TcadTextButton.GetImageIndexOfUnknowChar(Sender: TOlfFMXTextImageFrame;
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

procedure TcadTextButton.Repaint;
begin
  if isdown then
  begin
    BackgroundUp.Visible := false;
    BackgroundDown.Visible := true;
    BackgroundDown.Fill.Bitmap.Bitmap.Assign
      (getBitmapFromSVG(TSVGUIAdventurePackIndex.ButtonLongGreyPressed,
      BackgroundDown.Width, BackgroundDown.height,
      BackgroundDown.Fill.Bitmap.Bitmap.BitmapScale));
    TextDown.Text := Text;
  end
  else
  begin
    BackgroundDown.Visible := false;
    BackgroundUp.Visible := true;
    BackgroundUp.Fill.Bitmap.Bitmap.Assign
      (getBitmapFromSVG(TSVGUIAdventurePackIndex.ButtonLongGrey,
      BackgroundUp.Width, BackgroundUp.height,
      BackgroundUp.Fill.Bitmap.Bitmap.BitmapScale));
    TextUp.Text := Text;
    if IsFocused then
    begin
      FocusLeft.Fill.Bitmap.Bitmap.Assign
        (getBitmapFromSVG(TSVGUIAdventurePackIndex.ArrowBrownRight,
        FocusLeft.Width, FocusLeft.height,
        FocusLeft.Fill.Bitmap.Bitmap.BitmapScale));
      FocusLeft.Visible := true;
      FocusRight.Fill.Bitmap.Bitmap.Assign
        (getBitmapFromSVG(TSVGUIAdventurePackIndex.ArrowBrownLeft,
        FocusRight.Width, FocusRight.height,
        FocusRight.Fill.Bitmap.Bitmap.BitmapScale));
      FocusRight.Visible := true;
    end
    else
    begin
      FocusLeft.Visible := false;
      FocusRight.Visible := false;
    end;
  end;

end;

end.
