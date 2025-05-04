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
/// File last update : 2025-05-04T15:35:42.000+02:00
/// Signature : a9562aab413651fd7034aaeb19dd637b870e5806
/// ***************************************************************************
/// </summary>

unit cButtonRadio;

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
  FMX.Objects,
  FMX.Effects;

type
  TcadRadioButton = class(T__ButtonAncestor)
    rBackground: TRectangle;
    rChecked: TRectangle;
  private
    FIsChecked: boolean;
    procedure SetIsChecked(const Value: boolean);
  protected
    procedure Click; override;
  public
    property IsChecked: boolean read FIsChecked write SetIsChecked;
    procedure Repaint; override;
  end;

implementation

{$R *.fmx}

uses
  uSVGBitmapManager_InputPrompts,
  USVGUIAdventurePack;

procedure TcadRadioButton.Click;
begin
  IsChecked := not IsChecked;
  inherited;
end;

procedure TcadRadioButton.Repaint;
var
  bg, cb: TSVGUIAdventurePackIndex;
begin
  if IsFocused then
  begin
    if isdown then
    begin
      rBackground.margins.top := 5;
      bg := TSVGUIAdventurePackIndex.ButtonRoundBrownDown;
    end
    else
    begin
      rBackground.margins.top := 0;
      bg := TSVGUIAdventurePackIndex.ButtonRoundBrown;
    end;
    cb := TSVGUIAdventurePackIndex.IconCircleBeige;
  end
  else
  begin
    bg := TSVGUIAdventurePackIndex.ButtonRoundGrey;
    cb := TSVGUIAdventurePackIndex.IconCircleGrey;
  end;

  rBackground.Fill.Bitmap.Bitmap.Assign(getBitmapFromSVG(bg, rBackground.width,
    rBackground.height, rBackground.Fill.Bitmap.Bitmap.BitmapScale));

  if IsChecked then
  begin
    if isdown then
      rChecked.margins.bottom := 12
    else
      rChecked.margins.bottom := 17;
    rChecked.Fill.Bitmap.Bitmap.Assign(getBitmapFromSVG(cb, rChecked.width,
      rChecked.height, rChecked.Fill.Bitmap.Bitmap.BitmapScale));
    rChecked.visible := true;
  end
  else
    rChecked.visible := false;
end;

procedure TcadRadioButton.SetIsChecked(const Value: boolean);
begin
  FIsChecked := Value;
  Repaint;
end;

end.
