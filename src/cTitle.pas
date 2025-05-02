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
/// File last update : 2025-05-02T17:59:34.000+02:00
/// Signature : df2aa0c3f20f87c23515c9d2337620b148402571
/// ***************************************************************************
/// </summary>

unit cTitle;

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
  Olf.FMX.TextImageFrame;

type
  TcadTitle = class(TFrame)
    OlfFMXTextImageFrame1: TOlfFMXTextImageFrame;
    procedure FrameResized(Sender: TObject);
  private
  protected
    function GetImageIndexOfUnknowChar(Sender: TOlfFMXTextImageFrame;
      AChar: char): integer;
  public
    procedure AfterConstruction; override;
  end;

implementation

{$R *.fmx}

uses
  udmAdobeStock_431308055;

procedure TcadTitle.AfterConstruction;
begin
  inherited;
  OlfFMXTextImageFrame1.Font := dmAdobeStock_431308055.ImageList;
  OlfFMXTextImageFrame1.OnGetImageIndexOfUnknowChar :=
    GetImageIndexOfUnknowChar;
  OlfFMXTextImageFrame1.SpaceWidth := 50;
  // OlfFMXTextImageFrame1.Text := 'Ok Ducky!';
  OlfFMXTextImageFrame1.Text := 'OK DUCKY !';
end;

procedure TcadTitle.FrameResized(Sender: TObject);
begin
  OlfFMXTextImageFrame1.Height := Height;
  // TODO : à retirer lorsque OlfFMXTextImageFrame prendra en charge son réaffichage en automatique
  OlfFMXTextImageFrame1.Text := OlfFMXTextImageFrame1.Text;
end;

function TcadTitle.GetImageIndexOfUnknowChar(Sender: TOlfFMXTextImageFrame;
  AChar: char): integer;
begin
  if (AChar = '!') then
    result := Sender.getImageIndexOfChar('exclamation')
  else if CharInSet(AChar, ['a' .. 'z']) then
    result := Sender.getImageIndexOfChar('_' + AChar)
  else
    result := -1;
end;

end.
