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
/// File last update : 2025-05-02T17:56:50.000+02:00
/// Signature : 20e987cbcf1870a853cabfe78663568d4137ccf9
/// ***************************************************************************
/// </summary>

unit uSVGBitmapManager_InputPrompts;

interface

uses
  FMX.Graphics,
  USVGInputPrompts,
  USVGShootingGallery,
  USVGUIAdventurePack;

/// <summary>
/// Returns a bitmap from a SVG image
/// </summary>
function getBitmapFromSVG(const Index: TSVGInputPromptsIndex;
  const width, height: single; const BitmapScale: single): tbitmap; overload;
function getBitmapFromSVG(const Index: TSVGShootingGalleryIndex;
  const width, height: single; const BitmapScale: single): tbitmap; overload;
function getBitmapFromSVG(const Index: TSVGUIAdventurePackIndex;
  const width, height: single; const BitmapScale: single): tbitmap; overload;

implementation

uses
  Olf.Skia.SVGToBitmap;

function getBitmapFromSVG(const Index: TSVGInputPromptsIndex;
  const width, height: single; const BitmapScale: single): tbitmap; overload;
begin
  result := TOlfSVGBitmapList.Bitmap(ord(Index) + TSVGInputPrompts.Tag,
    round(width), round(height), BitmapScale);
end;

function getBitmapFromSVG(const Index: TSVGShootingGalleryIndex;
  const width, height: single; const BitmapScale: single): tbitmap; overload;
begin
  result := TOlfSVGBitmapList.Bitmap(ord(Index) + TSVGShootingGallery.Tag,
    round(width), round(height), BitmapScale);
end;

function getBitmapFromSVG(const Index: TSVGUIAdventurePackIndex;
  const width, height: single; const BitmapScale: single): tbitmap; overload;
begin
  result := TOlfSVGBitmapList.Bitmap(ord(Index) + TSVGUIAdventurePack.Tag,
    round(width), round(height), BitmapScale);
end;

procedure RegisterSVGImages;
begin
  TSVGInputPrompts.Tag := TOlfSVGBitmapList.AddItem(SVGInputPrompts);
  TSVGShootingGallery.Tag := TOlfSVGBitmapList.AddItem(SVGShootingGallery);
  TSVGUIAdventurePack.Tag := TOlfSVGBitmapList.AddItem(SVGUIAdventurePack);
end;

initialization

RegisterSVGImages;

end.
