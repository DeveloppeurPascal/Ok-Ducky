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
/// File last update : 2025-05-04T15:26:28.830+02:00
/// Signature : 9191841383a12fd361fffe9c289421dd64133a5f
/// ***************************************************************************
/// </summary>

unit USVGUIAdventurePack;

// ****************************************
// * SVG from folder :
// * /Users/patrickpremartin/Downloads/__OkDucky/UI Adventure Pack/Vector/UI Adventure Pack/uSVGUIAdventurePack.pas
// ****************************************
//
// This file contains a list of contants and 
// an enumeration to access to SVG source codes 
// from the generated array of strings.
//
// ****************************************
// File generator : SVG Folder to Delphi Unit v1.0
// Website : https://svgfolder2delphiunit.olfsoftware.fr/
// Generation date : 2025-05-04T15:26:28.803Z
//
// Don't do any change on this file.
// They will be erased by next generation !
// ****************************************

interface

const
  CSVGArrowBeigeLeft = 0;
  CSVGArrowBeigeRight = 1;
  CSVGArrowBlueLeft = 2;
  CSVGArrowBlueRight = 3;
  CSVGArrowBrownLeft = 4;
  CSVGArrowBrownRight = 5;
  CSVGArrowSilverLeft = 6;
  CSVGArrowSilverRight = 7;
  CSVGButtonLongBeigePressed = 8;
  CSVGButtonLongBeige = 9;
  CSVGButtonLongBluePressed = 10;
  CSVGButtonLongBlue = 11;
  CSVGButtonLongBrownPressed = 12;
  CSVGButtonLongBrown = 13;
  CSVGButtonLongGreyPressed = 14;
  CSVGButtonLongGrey = 15;
  CSVGButtonRoundBeigeDown = 16;
  CSVGButtonRoundBeige = 17;
  CSVGButtonRoundBlueDown = 18;
  CSVGButtonRoundBlue = 19;
  CSVGButtonRoundBrownDown = 20;
  CSVGButtonRoundBrown = 21;
  CSVGButtonRoundGreyDown = 22;
  CSVGButtonRoundGrey = 23;
  CSVGButtonSquareBeigePressed = 24;
  CSVGButtonSquareBeige = 25;
  CSVGButtonSquareBluePressed = 26;
  CSVGButtonSquareBlue = 27;
  CSVGButtonSquareBrownPressed = 28;
  CSVGButtonSquareBrown = 29;
  CSVGButtonSquareGreyPressed = 30;
  CSVGButtonSquareGrey = 31;
  CSVGCursorGauntletBronze = 32;
  CSVGCursorGauntletGrey1 = 33;
  CSVGCursorGauntletGrey = 34;
  CSVGCursorHandBeige = 35;
  CSVGCursorHandBlue = 36;
  CSVGCursorHandGrey = 37;
  CSVGCursorSwordBronze = 38;
  CSVGCursorSwordGold = 39;
  CSVGCursorSwordSilver = 40;
  CSVGIconCheckBeige = 41;
  CSVGIconCheckBlue = 42;
  CSVGIconCheckBronze = 43;
  CSVGIconCheckGrey = 44;
  CSVGIconCircleBeige = 45;
  CSVGIconCircleBlue = 46;
  CSVGIconCircleBrown = 47;
  CSVGIconCircleGrey = 48;
  CSVGIconCrossBeige = 49;
  CSVGIconCrossBlue = 50;
  CSVGIconCrossBrown = 51;
  CSVGIconCrossGrey = 52;
  CSVGPanelBeige = 53;
  CSVGPanelBeigeLight = 54;
  CSVGPanelBlue = 55;
  CSVGPanelBrown = 56;
  CSVGPanelInsetBeige = 57;
  CSVGPanelInsetBeigeLight = 58;
  CSVGPanelInsetBlue = 59;
  CSVGPanelInsetBrown = 60;

type
{$SCOPEDENUMS ON}
  TSVGUIAdventurePackIndex = (
    ArrowBeigeLeft = CSVGArrowBeigeLeft,
    ArrowBeigeRight = CSVGArrowBeigeRight,
    ArrowBlueLeft = CSVGArrowBlueLeft,
    ArrowBlueRight = CSVGArrowBlueRight,
    ArrowBrownLeft = CSVGArrowBrownLeft,
    ArrowBrownRight = CSVGArrowBrownRight,
    ArrowSilverLeft = CSVGArrowSilverLeft,
    ArrowSilverRight = CSVGArrowSilverRight,
    ButtonLongBeigePressed = CSVGButtonLongBeigePressed,
    ButtonLongBeige = CSVGButtonLongBeige,
    ButtonLongBluePressed = CSVGButtonLongBluePressed,
    ButtonLongBlue = CSVGButtonLongBlue,
    ButtonLongBrownPressed = CSVGButtonLongBrownPressed,
    ButtonLongBrown = CSVGButtonLongBrown,
    ButtonLongGreyPressed = CSVGButtonLongGreyPressed,
    ButtonLongGrey = CSVGButtonLongGrey,
    ButtonRoundBeigeDown = CSVGButtonRoundBeigeDown,
    ButtonRoundBeige = CSVGButtonRoundBeige,
    ButtonRoundBlueDown = CSVGButtonRoundBlueDown,
    ButtonRoundBlue = CSVGButtonRoundBlue,
    ButtonRoundBrownDown = CSVGButtonRoundBrownDown,
    ButtonRoundBrown = CSVGButtonRoundBrown,
    ButtonRoundGreyDown = CSVGButtonRoundGreyDown,
    ButtonRoundGrey = CSVGButtonRoundGrey,
    ButtonSquareBeigePressed = CSVGButtonSquareBeigePressed,
    ButtonSquareBeige = CSVGButtonSquareBeige,
    ButtonSquareBluePressed = CSVGButtonSquareBluePressed,
    ButtonSquareBlue = CSVGButtonSquareBlue,
    ButtonSquareBrownPressed = CSVGButtonSquareBrownPressed,
    ButtonSquareBrown = CSVGButtonSquareBrown,
    ButtonSquareGreyPressed = CSVGButtonSquareGreyPressed,
    ButtonSquareGrey = CSVGButtonSquareGrey,
    CursorGauntletBronze = CSVGCursorGauntletBronze,
    CursorGauntletGrey1 = CSVGCursorGauntletGrey1,
    CursorGauntletGrey = CSVGCursorGauntletGrey,
    CursorHandBeige = CSVGCursorHandBeige,
    CursorHandBlue = CSVGCursorHandBlue,
    CursorHandGrey = CSVGCursorHandGrey,
    CursorSwordBronze = CSVGCursorSwordBronze,
    CursorSwordGold = CSVGCursorSwordGold,
    CursorSwordSilver = CSVGCursorSwordSilver,
    IconCheckBeige = CSVGIconCheckBeige,
    IconCheckBlue = CSVGIconCheckBlue,
    IconCheckBronze = CSVGIconCheckBronze,
    IconCheckGrey = CSVGIconCheckGrey,
    IconCircleBeige = CSVGIconCircleBeige,
    IconCircleBlue = CSVGIconCircleBlue,
    IconCircleBrown = CSVGIconCircleBrown,
    IconCircleGrey = CSVGIconCircleGrey,
    IconCrossBeige = CSVGIconCrossBeige,
    IconCrossBlue = CSVGIconCrossBlue,
    IconCrossBrown = CSVGIconCrossBrown,
    IconCrossGrey = CSVGIconCrossGrey,
    PanelBeige = CSVGPanelBeige,
    PanelBeigeLight = CSVGPanelBeigeLight,
    PanelBlue = CSVGPanelBlue,
    PanelBrown = CSVGPanelBrown,
    PanelInsetBeige = CSVGPanelInsetBeige,
    PanelInsetBeigeLight = CSVGPanelInsetBeigeLight,
    PanelInsetBlue = CSVGPanelInsetBlue,
    PanelInsetBrown = CSVGPanelInsetBrown);

  TSVGUIAdventurePack = class
  private
  class var
    FTag: integer;
    FTagBool: Boolean;
    FTagFloat: Single;
    FTagObject: TObject;
    FTagString: string;
    class procedure SetTag(const Value: integer); static;
    class procedure SetTagBool(const Value: Boolean); static;
    class procedure SetTagFloat(const Value: Single); static;
    class procedure SetTagObject(const Value: TObject); static;
    class procedure SetTagString(const Value: string); static;
  public const
    ArrowBeigeLeft = CSVGArrowBeigeLeft;
    ArrowBeigeRight = CSVGArrowBeigeRight;
    ArrowBlueLeft = CSVGArrowBlueLeft;
    ArrowBlueRight = CSVGArrowBlueRight;
    ArrowBrownLeft = CSVGArrowBrownLeft;
    ArrowBrownRight = CSVGArrowBrownRight;
    ArrowSilverLeft = CSVGArrowSilverLeft;
    ArrowSilverRight = CSVGArrowSilverRight;
    ButtonLongBeigePressed = CSVGButtonLongBeigePressed;
    ButtonLongBeige = CSVGButtonLongBeige;
    ButtonLongBluePressed = CSVGButtonLongBluePressed;
    ButtonLongBlue = CSVGButtonLongBlue;
    ButtonLongBrownPressed = CSVGButtonLongBrownPressed;
    ButtonLongBrown = CSVGButtonLongBrown;
    ButtonLongGreyPressed = CSVGButtonLongGreyPressed;
    ButtonLongGrey = CSVGButtonLongGrey;
    ButtonRoundBeigeDown = CSVGButtonRoundBeigeDown;
    ButtonRoundBeige = CSVGButtonRoundBeige;
    ButtonRoundBlueDown = CSVGButtonRoundBlueDown;
    ButtonRoundBlue = CSVGButtonRoundBlue;
    ButtonRoundBrownDown = CSVGButtonRoundBrownDown;
    ButtonRoundBrown = CSVGButtonRoundBrown;
    ButtonRoundGreyDown = CSVGButtonRoundGreyDown;
    ButtonRoundGrey = CSVGButtonRoundGrey;
    ButtonSquareBeigePressed = CSVGButtonSquareBeigePressed;
    ButtonSquareBeige = CSVGButtonSquareBeige;
    ButtonSquareBluePressed = CSVGButtonSquareBluePressed;
    ButtonSquareBlue = CSVGButtonSquareBlue;
    ButtonSquareBrownPressed = CSVGButtonSquareBrownPressed;
    ButtonSquareBrown = CSVGButtonSquareBrown;
    ButtonSquareGreyPressed = CSVGButtonSquareGreyPressed;
    ButtonSquareGrey = CSVGButtonSquareGrey;
    CursorGauntletBronze = CSVGCursorGauntletBronze;
    CursorGauntletGrey1 = CSVGCursorGauntletGrey1;
    CursorGauntletGrey = CSVGCursorGauntletGrey;
    CursorHandBeige = CSVGCursorHandBeige;
    CursorHandBlue = CSVGCursorHandBlue;
    CursorHandGrey = CSVGCursorHandGrey;
    CursorSwordBronze = CSVGCursorSwordBronze;
    CursorSwordGold = CSVGCursorSwordGold;
    CursorSwordSilver = CSVGCursorSwordSilver;
    IconCheckBeige = CSVGIconCheckBeige;
    IconCheckBlue = CSVGIconCheckBlue;
    IconCheckBronze = CSVGIconCheckBronze;
    IconCheckGrey = CSVGIconCheckGrey;
    IconCircleBeige = CSVGIconCircleBeige;
    IconCircleBlue = CSVGIconCircleBlue;
    IconCircleBrown = CSVGIconCircleBrown;
    IconCircleGrey = CSVGIconCircleGrey;
    IconCrossBeige = CSVGIconCrossBeige;
    IconCrossBlue = CSVGIconCrossBlue;
    IconCrossBrown = CSVGIconCrossBrown;
    IconCrossGrey = CSVGIconCrossGrey;
    PanelBeige = CSVGPanelBeige;
    PanelBeigeLight = CSVGPanelBeigeLight;
    PanelBlue = CSVGPanelBlue;
    PanelBrown = CSVGPanelBrown;
    PanelInsetBeige = CSVGPanelInsetBeige;
    PanelInsetBeigeLight = CSVGPanelInsetBeigeLight;
    PanelInsetBlue = CSVGPanelInsetBlue;
    PanelInsetBrown = CSVGPanelInsetBrown;
    class property Tag: integer read FTag write SetTag;
    class property TagBool: Boolean read FTagBool write SetTagBool;
    class property TagFloat: Single read FTagFloat write SetTagFloat;
    class property TagObject: TObject read FTagObject write SetTagObject;
    class property TagString: string read FTagString write SetTagString;
    class function SVG(const Index: Integer): string; overload;
    class function SVG(const Index: TSVGUIAdventurePackIndex) : string; overload;
    class function Count : Integer;
    class constructor Create;
  end;

var
  SVGUIAdventurePack : array of String;

implementation

uses
  System.SysUtils;

{ TSVGUIAdventurePack }

class constructor TSVGUIAdventurePack.Create;
begin
  inherited;
  FTag := 0;
  FTagBool := false;
  FTagFloat := 0;
  FTagObject := nil;
  FTagString := '';
end;

class procedure TSVGUIAdventurePack.SetTag(const Value: integer);
begin
  FTag := Value;
end;

class procedure TSVGUIAdventurePack.SetTagBool(const Value: Boolean);
begin
  FTagBool := Value;
end;

class procedure TSVGUIAdventurePack.SetTagFloat(const Value: Single);
begin
  FTagFloat := Value;
end;

class procedure TSVGUIAdventurePack.SetTagObject(const Value: TObject);
begin
  FTagObject := Value;
end;

class procedure TSVGUIAdventurePack.SetTagString(const Value: string);
begin
  FTagString := Value;
end;

class function TSVGUIAdventurePack.SVG(const Index: Integer): string;
begin
  if (index < Count) then
    result := SVGUIAdventurePack[index]
  else
    raise Exception.Create('SVG not found. Index out of range.');
end;

class function TSVGUIAdventurePack.SVG(const Index : TSVGUIAdventurePackIndex): string;
begin
  result := SVG(ord(index));
end;

class function TSVGUIAdventurePack.Count: Integer;
begin
  result := length(SVGUIAdventurePack);
end;

initialization

SetLength(SVGUIAdventurePack, 61);

{$TEXTBLOCK NATIVE XML}
SVGUIAdventurePack[CSVGArrowBeigeLeft] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 21.99 20.35"><g id="Calque_1-2"><path d="M17.15,2l1.45-.1c.5.17.88.48,1.15.95.27.47.32.95.15,1.45l-1.5,5.9,1.5,5.85c.13.5.08.98-.15,1.45s-.6.78-1.1.95l-1.5-.05L3.15,12.05c-.47-.23-.8-.6-1-1.1s-.2-1,0-1.5.53-.85,1-1.05l14-6.4M18,16.55l-1.65-6.35H4l14,6.35" fill="#d9cdaf"/><path d="M17.15,2L3.15,8.4c-.47.2-.8.55-1,1.05s-.2,1,0,1.5.53.87,1,1.1l14,6.35,1.5.05c.5-.17.87-.48,1.1-.95s.28-.95.15-1.45l-1.5-5.85,1.5-5.9c.17-.5.12-.98-.15-1.45-.27-.47-.65-.78-1.15-.95l-1.45.1M.3,11.7c-.4-1-.4-2,0-3s1.08-1.72,2.05-2.15L16.35.15l2.9-.15c1,.33,1.75.97,2.25,1.9.5.93.62,1.9.35,2.9l-1.4,5.4,1.4,5.35c.27,1,.15,1.97-.35,2.9-.47.93-1.2,1.57-2.2,1.9h-.05l-2.9-.15L2.35,13.85c-.97-.43-1.65-1.15-2.05-2.15" fill="#9f8e67"/><path d="M18,16.55l-14-6.35h12.35l1.65,6.35" fill="#d3bf8f"/></g></svg>
''';
SVGUIAdventurePack[CSVGArrowBeigeRight] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 21.99 20.35"><g id="Calque_1-2"><path d="M19.84,10.95c.2-.5.2-1,0-1.5s-.53-.85-1-1.05L4.84,2l-1.45-.1c-.5.17-.88.48-1.15.95-.27.47-.32.95-.15,1.45l1.5,5.9-1.5,5.85c-.13.5-.08.98.15,1.45l1.1.95,1.5-.05,14-6.35c.47-.23.8-.6,1-1.1M21.69,8.7c.4,1,.4,2,0,3s-1.08,1.72-2.05,2.15l-14,6.35-2.9.15h-.05c-1-.33-1.73-.97-2.2-1.9-.5-.93-.62-1.9-.35-2.9l1.4-5.35L.14,4.8C-.13,3.8-.01,2.83.49,1.9.99.97,1.74.33,2.74,0l2.9.15,14,6.4c.97.43,1.65,1.15,2.05,2.15" fill="#9f8e67"/><path d="M19.84,10.95c-.2.5-.53.87-1,1.1l-14,6.35-1.5.05-1.1-.95c-.23-.47-.28-.95-.15-1.45l1.5-5.85-1.5-5.9c-.17-.5-.12-.98.15-1.45.27-.47.65-.78,1.15-.95l1.45.1,14,6.4c.47.2.8.55,1,1.05s.2,1,0,1.5M3.99,16.55l14-6.35H5.64l-1.65,6.35" fill="#d9cdaf"/><path d="M3.99,16.55l1.65-6.35h12.35l-14,6.35" fill="#d3bf8f"/></g></svg>
''';
SVGUIAdventurePack[CSVGArrowBlueLeft] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 21.99 20.35"><g id="Calque_1-2"><path d="M3.15,12.05c-.47-.23-.8-.6-1-1.1s-.2-1,0-1.5.53-.85,1-1.05l14-6.4,1.45-.1c.5.17.88.48,1.15.95.27.47.32.95.15,1.45l-1.5,5.9,1.5,5.85c.13.5.08.98-.15,1.45l-1.1.95-1.5-.05L3.15,12.05M16.35,10.2H4l14,6.35-1.65-6.35" fill="#9b9dad"/><path d="M3.15,12.05l14,6.35,1.5.05,1.1-.95c.23-.47.28-.95.15-1.45l-1.5-5.85,1.5-5.9c.17-.5.12-.98-.15-1.45-.27-.47-.65-.78-1.15-.95l-1.45.1L3.15,8.4c-.47.2-.8.55-1,1.05s-.2,1,0,1.5.53.87,1,1.1M.3,8.7c.4-1,1.08-1.72,2.05-2.15L16.35.15l2.9-.15c1,.33,1.75.97,2.25,1.9.5.93.62,1.9.35,2.9l-1.4,5.4,1.4,5.35c.27,1,.15,1.97-.35,2.9-.47.93-1.2,1.57-2.2,1.9h-.05l-2.9-.15L2.35,13.85c-.97-.43-1.65-1.15-2.05-2.15s-.4-2,0-3" fill="#727685"/><path d="M16.35,10.2l1.65,6.35-14-6.35h12.35" fill="#838796"/></g></svg>
''';
SVGUIAdventurePack[CSVGArrowBlueRight] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 21.99 20.35"><g id="Calque_1-2"><path d="M2.74,0l2.9.15,14,6.4c.97.43,1.65,1.15,2.05,2.15s.4,2,0,3-1.08,1.72-2.05,2.15l-14,6.35-2.9.15h-.05c-1-.33-1.73-.97-2.2-1.9-.5-.93-.62-1.9-.35-2.9l1.4-5.35L.14,4.8C-.13,3.8-.01,2.83.49,1.9.99.97,1.74.33,2.74,0M4.84,2l-1.45-.1c-.5.17-.88.48-1.15.95-.27.47-.32.95-.15,1.45l1.5,5.9-1.5,5.85c-.13.5-.08.98.15,1.45s.6.78,1.1.95l1.5-.05,14-6.35c.47-.23.8-.6,1-1.1s.2-1,0-1.5-.53-.85-1-1.05L4.84,2" fill="#727685"/><path d="M4.84,2l14,6.4c.47.2.8.55,1,1.05s.2,1,0,1.5-.53.87-1,1.1l-14,6.35-1.5.05c-.5-.17-.87-.48-1.1-.95s-.28-.95-.15-1.45l1.5-5.85-1.5-5.9c-.17-.5-.12-.98.15-1.45.27-.47.65-.78,1.15-.95l1.45.1M3.99,16.55l14-6.35H5.64l-1.65,6.35" fill="#9b9dad"/><path d="M3.99,16.55l1.65-6.35h12.35l-14,6.35" fill="#838796"/></g></svg>
''';
SVGUIAdventurePack[CSVGArrowBrownLeft] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 21.99 20.35"><g id="Calque_1-2"><path d="M19.75,2.85c.27.47.32.95.15,1.45l-1.5,5.9,1.5,5.85c.13.5.08.98-.15,1.45s-.6.78-1.1.95l-1.5-.05L3.15,12.05c-.47-.23-.8-.6-1-1.1s-.2-1,0-1.5.53-.85,1-1.05l14-6.4,1.45-.1c.5.17.88.48,1.15.95M18,16.55l-1.65-6.35H4l14,6.35" fill="#b7916a"/><path d="M19.75,2.85c-.27-.47-.65-.78-1.15-.95l-1.45.1L3.15,8.4c-.47.2-.8.55-1,1.05s-.2,1,0,1.5.53.87,1,1.1l14,6.35,1.5.05c.5-.17.87-.48,1.1-.95s.28-.95.15-1.45l-1.5-5.85,1.5-5.9c.17-.5.12-.98-.15-1.45M21.5,1.9c.5.93.62,1.9.35,2.9l-1.4,5.4,1.4,5.35c.27,1,.15,1.97-.35,2.9-.47.93-1.2,1.57-2.2,1.9h-.05l-2.9-.15L2.35,13.85c-.97-.43-1.65-1.15-2.05-2.15s-.4-2,0-3,1.08-1.72,2.05-2.15L16.35.15l2.9-.15c1,.33,1.75.97,2.25,1.9" fill="#864"/><path d="M18,16.55l-14-6.35h12.35l1.65,6.35" fill="#97714a"/></g></svg>
''';
SVGUIAdventurePack[CSVGArrowBrownRight] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 21.99 20.35"><g id="Calque_1-2"><path d="M2.74,0l2.9.15,14,6.4c.97.43,1.65,1.15,2.05,2.15s.4,2,0,3-1.08,1.72-2.05,2.15l-14,6.35-2.9.15h-.05c-1-.33-1.73-.97-2.2-1.9-.5-.93-.62-1.9-.35-2.9l1.4-5.35L.14,4.8C-.13,3.8-.01,2.83.49,1.9.99.97,1.74.33,2.74,0M2.24,2.85c-.27.47-.32.95-.15,1.45l1.5,5.9-1.5,5.85c-.13.5-.08.98.15,1.45s.6.78,1.1.95l1.5-.05,14-6.35c.47-.23.8-.6,1-1.1s.2-1,0-1.5-.53-.85-1-1.05L4.84,2l-1.45-.1c-.5.17-.88.48-1.15.95" fill="#864"/><path d="M2.24,2.85c.27-.47.65-.78,1.15-.95l1.45.1,14,6.4c.47.2.8.55,1,1.05s.2,1,0,1.5-.53.87-1,1.1l-14,6.35-1.5.05c-.5-.17-.87-.48-1.1-.95s-.28-.95-.15-1.45l1.5-5.85-1.5-5.9c-.17-.5-.12-.98.15-1.45M3.99,16.55l14-6.35H5.64l-1.65,6.35" fill="#b7916a"/><path d="M3.99,16.55l1.65-6.35h12.35l-14,6.35" fill="#97714a"/></g></svg>
''';
SVGUIAdventurePack[CSVGArrowSilverLeft] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 21.99 20.35"><g id="Calque_1-2"><path d="M19.9,16.05c.13.5.08.98-.15,1.45s-.6.78-1.1.95l-1.5-.05L3.15,12.05c-.47-.23-.8-.6-1-1.1s-.2-1,0-1.5.53-.85,1-1.05l14-6.4,1.45-.1c.5.17.88.48,1.15.95.27.47.32.95.15,1.45l-1.5,5.9,1.5,5.85M18,16.55l-1.65-6.35H4l14,6.35" fill="#e9e9e9"/><path d="M21.85,4.8l-1.4,5.4,1.4,5.35c.27,1,.15,1.97-.35,2.9-.47.93-1.2,1.57-2.2,1.9h-.05l-2.9-.15L2.35,13.85c-.97-.43-1.65-1.15-2.05-2.15s-.4-2,0-3,1.08-1.72,2.05-2.15L16.35.15l2.9-.15c1,.33,1.75.97,2.25,1.9.5.93.62,1.9.35,2.9M19.9,16.05l-1.5-5.85,1.5-5.9c.17-.5.12-.98-.15-1.45-.27-.47-.65-.78-1.15-.95l-1.45.1L3.15,8.4c-.47.2-.8.55-1,1.05s-.2,1,0,1.5.53.87,1,1.1l14,6.35,1.5.05c.5-.17.87-.48,1.1-.95s.28-.95.15-1.45" fill="#aaa"/><path d="M18,16.55l-14-6.35h12.35l1.65,6.35" fill="#dbdbdb"/></g></svg>
''';
SVGUIAdventurePack[CSVGArrowSilverRight] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 21.99 20.35"><g id="Calque_1-2"><path d="M5.64.15l14,6.4c.97.43,1.65,1.15,2.05,2.15s.4,2,0,3-1.08,1.72-2.05,2.15l-14,6.35-2.9.15h-.05c-1-.33-1.73-.97-2.2-1.9-.5-.93-.62-1.9-.35-2.9l1.4-5.35L.14,4.8C-.13,3.8-.01,2.83.49,1.9.99.97,1.74.33,2.74,0l2.9.15M3.39,1.9c-.5.17-.88.48-1.15.95-.27.47-.32.95-.15,1.45l1.5,5.9-1.5,5.85c-.13.5-.08.98.15,1.45s.6.78,1.1.95l1.5-.05,14-6.35c.47-.23.8-.6,1-1.1s.2-1,0-1.5-.53-.85-1-1.05L4.84,2l-1.45-.1" fill="#aaa"/><path d="M3.39,1.9l1.45.1,14,6.4c.47.2.8.55,1,1.05s.2,1,0,1.5-.53.87-1,1.1l-14,6.35-1.5.05c-.5-.17-.87-.48-1.1-.95s-.28-.95-.15-1.45l1.5-5.85-1.5-5.9c-.17-.5-.12-.98.15-1.45.27-.47.65-.78,1.15-.95M3.99,16.55l14-6.35H5.64l-1.65,6.35" fill="#e9e9e9"/><path d="M3.99,16.55l1.65-6.35h12.35l-14,6.35" fill="#dbdbdb"/></g></svg>
''';
SVGUIAdventurePack[CSVGButtonLongBeigePressed] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 190 45"><g id="Calque_1-2"><path d="M186,5.35l-.05-.05.05.7v5.3l-2.4,2.4,2.4,2.4v22.9c0,1.3-.62,1.97-1.85,2h-35.1l-1.55-1.55-1.55,1.55h-42.55l-2.75-2.75-2.75,2.75H5.9c-1.27-.03-1.9-.7-1.9-2v-3.6l2.75-2.75-2.75-2.75V6l.05-.5.05-.2c.17-.87.8-1.3,1.9-1.3h17.05l2.25,2.25,2.25-2.25h9.35l2.8,2.8,2.8-2.8h141.5c1.1,0,1.77.45,2,1.35" fill="#d3bf8f"/><path d="M186,5.35c-.23-.9-.9-1.35-2-1.35H42.5l-2.8,2.8-2.8-2.8h-9.35l-2.25,2.25-2.25-2.25H6c-1.1,0-1.73.43-1.9,1.3l-.05.2-.05.5v23.9l2.75,2.75-2.75,2.75v3.6c0,1.3.63,1.97,1.9,2h92l2.75-2.75,2.75,2.75h42.55l1.55-1.55,1.55,1.55h35.1c1.23-.03,1.85-.7,1.85-2v-22.9l-2.4-2.4,2.4-2.4v-5.3l-.05-.7.05.05M184,2c2.33,0,3.65,1.02,3.95,3.05l.05.95v33l-.05,1c-.3,2-1.62,3-3.95,3H6c-2.33,0-3.63-1-3.9-3l-.1-1V6l.1-.95c.27-2.03,1.57-3.05,3.9-3.05h178" fill="#b1a077"/><path
d="M184,2H6c-2.33,0-3.63,1.02-3.9,3.05l-.1.95v33l.1,1c.27,2,1.57,3,3.9,3h178c2.33,0,3.65-1,3.95-3l.05-1V6l-.05-.95c-.3-2.03-1.62-3.05-3.95-3.05M190,6v33.25c-.1,3.83-2.1,5.75-6,5.75H5.1c-3.13-.27-4.82-1.98-5.05-5.15l-.05-.6V6C0,2,2,0,6,0h178c4,0,6,2,6,6" fill="#d9cdaf"/></g></svg>
''';
SVGUIAdventurePack[CSVGButtonLongBeige] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 190 49"><g id="Calque_1-2"><path d="M103.4,41l-2.75-2.75-2.75,2.75H6c-1.33,0-2-.67-2-2v-3.6l2.75-2.75-2.75-2.75V6l.05-.5.05-.2c.17-.87.8-1.3,1.9-1.3h17.05l2.25,2.25,2.25-2.25h9.35l2.8,2.8,2.8-2.8h141.5c1.1,0,1.77.45,2,1.35l-.05-.05.05.7v5.3l-2.4,2.4,2.4,2.4v22.9c0,1.33-.67,2-2,2h-34.95l-1.55-1.55-1.55,1.55h-42.55" fill="#d3bf8f"/><path d="M103.4,41h42.55l1.55-1.55,1.55,1.55h34.95c1.33,0,2-.67,2-2v-22.9l-2.4-2.4,2.4-2.4v-5.3l-.05-.7.05.05c-.23-.9-.9-1.35-2-1.35H42.5l-2.8,2.8-2.8-2.8h-9.35l-2.25,2.25-2.25-2.25H6c-1.1,0-1.73.43-1.9,1.3l-.05.2-.05.5v23.9l2.75,2.75-2.75,2.75v3.6c0,1.33.67,2,2,2h91.9l2.75-2.75,2.75,2.75M187.95,5.05l.05.95v33c0,2.67-1.33,4-4,4H6c-2.67,0-4-1.33-4-4V6l.1-.95c.27-2.03,1.57-3.05,3.9-3.05h178c2.33,0,3.65,1.02,3.95,3.05" fill="#b1a077"/><path d="M190,39.25v3.75c0,4-2,6-6,6H6c-4,0-6-2-6-6v-3.75c.1,3.83,2.1,5.75,6,5.75h178c3.9,0,5.9-1.92,6-5.75"
fill="#a3997f"/><path d="M190,39.25c-.1,3.83-2.1,5.75-6,5.75H6c-3.9,0-5.9-1.92-6-5.75V6C0,2,2,0,6,0h178c4,0,6,2,6,6v33.25M187.95,5.05c-.3-2.03-1.62-3.05-3.95-3.05H6c-2.33,0-3.63,1.02-3.9,3.05l-.1.95v33c0,2.67,1.33,4,4,4h178c2.67,0,4-1.33,4-4V6l-.05-.95" fill="#d9cdaf"/></g></svg>
''';
SVGUIAdventurePack[CSVGButtonLongBluePressed] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 190 45"><g id="Calque_1-2"><path d="M186,5.35l-.05-.05.05.7v5.3l-2.4,2.4,2.4,2.4v22.9c0,1.3-.62,1.97-1.85,2h-35.1l-1.55-1.55-1.55,1.55h-42.55l-2.75-2.75-2.75,2.75H5.9c-1.27-.03-1.9-.7-1.9-2v-3.6l2.75-2.75-2.75-2.75V6l.05-.5.05-.2c.17-.87.8-1.3,1.9-1.3h17.05l2.25,2.25,2.25-2.25h9.35l2.8,2.8,2.8-2.8h141.5c1.1,0,1.77.45,2,1.35" fill="#838796"/><path d="M186,5.35c-.23-.9-.9-1.35-2-1.35H42.5l-2.8,2.8-2.8-2.8h-9.35l-2.25,2.25-2.25-2.25H6c-1.1,0-1.73.43-1.9,1.3l-.05.2-.05.5v23.9l2.75,2.75-2.75,2.75v3.6c0,1.3.63,1.97,1.9,2h92l2.75-2.75,2.75,2.75h42.55l1.55-1.55,1.55,1.55h35.1c1.23-.03,1.85-.7,1.85-2v-22.9l-2.4-2.4,2.4-2.4v-5.3l-.05-.7.05.05M184,2c2.33,0,3.65,1.02,3.95,3.05l.05.95v33l-.05,1c-.3,2-1.62,3-3.95,3H6c-2.33,0-3.63-1-3.9-3l-.1-1V6l.1-.95c.27-2.03,1.57-3.05,3.9-3.05h178" fill="#727685"/><path
d="M184,2H6c-2.33,0-3.63,1.02-3.9,3.05l-.1.95v33l.1,1c.27,2,1.57,3,3.9,3h178c2.33,0,3.65-1,3.95-3l.05-1V6l-.05-.95c-.3-2.03-1.62-3.05-3.95-3.05M190,6v33.25c-.1,3.83-2.1,5.75-6,5.75H5.1c-3.13-.27-4.82-1.98-5.05-5.15l-.05-.6V6C0,2,2,0,6,0h178c4,0,6,2,6,6" fill="#9b9dad"/></g></svg>
''';
SVGUIAdventurePack[CSVGButtonLongBlue] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 190 49"><g id="Calque_1-2"><path d="M187.95,5.05l.05.95v33c0,2.67-1.33,4-4,4H6c-2.67,0-4-1.33-4-4V6l.1-.95c.27-2.03,1.57-3.05,3.9-3.05h178c2.33,0,3.65,1.02,3.95,3.05M186,6l-.05-.7.05.05c-.23-.9-.9-1.35-2-1.35H42.5l-2.8,2.8-2.8-2.8h-9.35l-2.25,2.25-2.25-2.25H6c-1.1,0-1.73.43-1.9,1.3l-.05.2-.05.5v23.9l2.75,2.75-2.75,2.75v3.6c0,1.33.67,2,2,2h91.9l2.75-2.75,2.75,2.75h42.55l1.55-1.55,1.55,1.55h34.95c1.33,0,2-.67,2-2v-22.9l-2.4-2.4,2.4-2.4v-5.3" fill="#727685"/><path d="M187.95,5.05c-.3-2.03-1.62-3.05-3.95-3.05H6c-2.33,0-3.63,1.02-3.9,3.05l-.1.95v33c0,2.67,1.33,4,4,4h178c2.67,0,4-1.33,4-4V6l-.05-.95M0,39.25V6C0,2,2,0,6,0h178c4,0,6,2,6,6v33.25c-.1,3.83-2.1,5.75-6,5.75H6c-3.9,0-5.9-1.92-6-5.75" fill="#9b9dad"/><path
d="M186,6v5.3l-2.4,2.4,2.4,2.4v22.9c0,1.33-.67,2-2,2h-34.95l-1.55-1.55-1.55,1.55h-42.55l-2.75-2.75-2.75,2.75H6c-1.33,0-2-.67-2-2v-3.6l2.75-2.75-2.75-2.75V6l.05-.5.05-.2c.17-.87.8-1.3,1.9-1.3h17.05l2.25,2.25,2.25-2.25h9.35l2.8,2.8,2.8-2.8h141.5c1.1,0,1.77.45,2,1.35l-.05-.05.05.7" fill="#838796"/><path d="M190,39.25v3.75c0,4-2,6-6,6H6c-4,0-6-2-6-6v-3.75c.1,3.83,2.1,5.75,6,5.75h178c3.9,0,5.9-1.92,6-5.75" fill="#616374"/></g></svg>
''';
SVGUIAdventurePack[CSVGButtonLongBrownPressed] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 190 45"><g id="Calque_1-2"><path d="M186,6v5.3l-2.4,2.4,2.4,2.4v22.9c0,1.3-.62,1.97-1.85,2h-35.1l-1.55-1.55-1.55,1.55h-42.55l-2.75-2.75-2.75,2.75H5.9c-1.27-.03-1.9-.7-1.9-2v-3.6l2.75-2.75-2.75-2.75V6l.05-.5.05-.2c.17-.87.8-1.3,1.9-1.3h17.05l2.25,2.25,2.25-2.25h9.35l2.8,2.8,2.8-2.8h141.5c1.1,0,1.77.45,2,1.35l-.05-.05.05.7" fill="#97714a"/><path d="M186,6l-.05-.7.05.05c-.23-.9-.9-1.35-2-1.35H42.5l-2.8,2.8-2.8-2.8h-9.35l-2.25,2.25-2.25-2.25H6c-1.1,0-1.73.43-1.9,1.3l-.05.2-.05.5v23.9l2.75,2.75-2.75,2.75v3.6c0,1.3.63,1.97,1.9,2h92l2.75-2.75,2.75,2.75h42.55l1.55-1.55,1.55,1.55h35.1c1.23-.03,1.85-.7,1.85-2v-22.9l-2.4-2.4,2.4-2.4v-5.3M187.95,5.05l.05.95v33l-.05,1c-.3,2-1.62,3-3.95,3H6c-2.33,0-3.63-1-3.9-3l-.1-1V6l.1-.95c.27-2.03,1.57-3.05,3.9-3.05h178c2.33,0,3.65,1.02,3.95,3.05" fill="#b7916a"/><path
d="M187.95,5.05c-.3-2.03-1.62-3.05-3.95-3.05H6c-2.33,0-3.63,1.02-3.9,3.05l-.1.95v33l.1,1c.27,2,1.57,3,3.9,3h178c2.33,0,3.65-1,3.95-3l.05-1V6l-.05-.95M190,39.25c-.1,3.83-2.1,5.75-6,5.75H5.1c-3.13-.27-4.82-1.98-5.05-5.15l-.05-.6V6C0,2,2,0,6,0h178c4,0,6,2,6,6v33.25" fill="#864"/></g></svg>
''';
SVGUIAdventurePack[CSVGButtonLongBrown] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 190 49"><g id="Calque_1-2"><path d="M186,5.35l-.05-.05.05.7v5.3l-2.4,2.4,2.4,2.4v22.9c0,1.33-.67,2-2,2h-34.95l-1.55-1.55-1.55,1.55h-42.55l-2.75-2.75-2.75,2.75H6c-1.33,0-2-.67-2-2v-3.6l2.75-2.75-2.75-2.75V6l.05-.5.05-.2c.17-.87.8-1.3,1.9-1.3h17.05l2.25,2.25,2.25-2.25h9.35l2.8,2.8,2.8-2.8h141.5c1.1,0,1.77.45,2,1.35" fill="#97714a"/><path d="M186,5.35c-.23-.9-.9-1.35-2-1.35H42.5l-2.8,2.8-2.8-2.8h-9.35l-2.25,2.25-2.25-2.25H6c-1.1,0-1.73.43-1.9,1.3l-.05.2-.05.5v23.9l2.75,2.75-2.75,2.75v3.6c0,1.33.67,2,2,2h91.9l2.75-2.75,2.75,2.75h42.55l1.55-1.55,1.55,1.55h34.95c1.33,0,2-.67,2-2v-22.9l-2.4-2.4,2.4-2.4v-5.3l-.05-.7.05.05M187.95,5.05l.05.95v33c0,2.67-1.33,4-4,4H6c-2.67,0-4-1.33-4-4V6l.1-.95c.27-2.03,1.57-3.05,3.9-3.05h178c2.33,0,3.65,1.02,3.95,3.05" fill="#b7916a"/><path
d="M187.95,5.05c-.3-2.03-1.62-3.05-3.95-3.05H6c-2.33,0-3.63,1.02-3.9,3.05l-.1.95v33c0,2.67,1.33,4,4,4h178c2.67,0,4-1.33,4-4V6l-.05-.95M0,39.25V6C0,2,2,0,6,0h178c4,0,6,2,6,6v33.25c-.1,3.83-2.1,5.75-6,5.75H6c-3.9,0-5.9-1.92-6-5.75" fill="#864"/><path d="M0,39.25c.1,3.83,2.1,5.75,6,5.75h178c3.9,0,5.9-1.92,6-5.75v3.75c0,4-2,6-6,6H6c-4,0-6-2-6-6v-3.75" fill="#6d543a"/></g></svg>
''';
SVGUIAdventurePack[CSVGButtonLongGreyPressed] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 190 45"><g id="Calque_1-2"><path d="M190,6v33.25c-.1,3.83-2.1,5.75-6,5.75H5.1c-3.13-.27-4.82-1.98-5.05-5.15l-.05-.6V6C0,2,2,0,6,0h178c4,0,6,2,6,6M184,2H6c-2.33,0-3.63,1.02-3.9,3.05l-.1.95v33l.1,1c.27,2,1.57,3,3.9,3h178c2.33,0,3.65-1,3.95-3l.05-1V6l-.05-.95c-.3-2.03-1.62-3.05-3.95-3.05" fill="#e9e9e9"/><path d="M184,2c2.33,0,3.65,1.02,3.95,3.05l.05.95v33l-.05,1c-.3,2-1.62,3-3.95,3H6c-2.33,0-3.63-1-3.9-3l-.1-1V6l.1-.95c.27-2.03,1.57-3.05,3.9-3.05h178M186,5.35c-.23-.9-.9-1.35-2-1.35H42.5l-2.8,2.8-2.8-2.8h-9.35l-2.25,2.25-2.25-2.25H6c-1.1,0-1.73.43-1.9,1.3l-.05.2-.05.5v23.9l2.75,2.75-2.75,2.75v3.6c0,1.3.63,1.97,1.9,2h92l2.75-2.75,2.75,2.75h42.55l1.55-1.55,1.55,1.55h35.1c1.23-.03,1.85-.7,1.85-2v-22.9l-2.4-2.4,2.4-2.4v-5.3l-.05-.7.05.05" fill="#cbcbcb"/><path
d="M186,5.35l-.05-.05.05.7v5.3l-2.4,2.4,2.4,2.4v22.9c0,1.3-.62,1.97-1.85,2h-35.1l-1.55-1.55-1.55,1.55h-42.55l-2.75-2.75-2.75,2.75H5.9c-1.27-.03-1.9-.7-1.9-2v-3.6l2.75-2.75-2.75-2.75V6l.05-.5.05-.2c.17-.87.8-1.3,1.9-1.3h17.05l2.25,2.25,2.25-2.25h9.35l2.8,2.8,2.8-2.8h141.5c1.1,0,1.77.45,2,1.35" fill="#e5e5e5"/></g></svg>
''';
SVGUIAdventurePack[CSVGButtonLongGrey] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 190 49"><g id="Calque_1-2"><path d="M187.95,5.05l.05.95v33c0,2.67-1.33,4-4,4H6c-2.67,0-4-1.33-4-4V6l.1-.95c.27-2.03,1.57-3.05,3.9-3.05h178c2.33,0,3.65,1.02,3.95,3.05M186,5.35c-.23-.9-.9-1.35-2-1.35H42.5l-2.8,2.8-2.8-2.8h-9.35l-2.25,2.25-2.25-2.25H6c-1.1,0-1.73.43-1.9,1.3l-.05.2-.05.5v23.9l2.75,2.75-2.75,2.75v3.6c0,1.33.67,2,2,2h91.9l2.75-2.75,2.75,2.75h42.55l1.55-1.55,1.55,1.55h34.95c1.33,0,2-.67,2-2v-22.9l-2.4-2.4,2.4-2.4v-5.3l-.05-.7.05.05" fill="#cbcbcb"/><path d="M187.95,5.05c-.3-2.03-1.62-3.05-3.95-3.05H6c-2.33,0-3.63,1.02-3.9,3.05l-.1.95v33c0,2.67,1.33,4,4,4h178c2.67,0,4-1.33,4-4V6l-.05-.95M0,39.25V6C0,2,2,0,6,0h178c4,0,6,2,6,6v33.25c-.1,3.83-2.1,5.75-6,5.75H6c-3.9,0-5.9-1.92-6-5.75" fill="#e9e9e9"/><path
d="M186,5.35l-.05-.05.05.7v5.3l-2.4,2.4,2.4,2.4v22.9c0,1.33-.67,2-2,2h-34.95l-1.55-1.55-1.55,1.55h-42.55l-2.75-2.75-2.75,2.75H6c-1.33,0-2-.67-2-2v-3.6l2.75-2.75-2.75-2.75V6l.05-.5.05-.2c.17-.87.8-1.3,1.9-1.3h17.05l2.25,2.25,2.25-2.25h9.35l2.8,2.8,2.8-2.8h141.5c1.1,0,1.77.45,2,1.35" fill="#e5e5e5"/><path d="M190,39.25v3.75c0,4-2,6-6,6H6c-4,0-6-2-6-6v-3.75c.1,3.83,2.1,5.75,6,5.75h178c3.9,0,5.9-1.92,6-5.75" fill="#c2c2c2"/></g></svg>
''';
SVGUIAdventurePack[CSVGButtonRoundBeigeDown] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 35 35"><g id="Calque_1-2"><path d="M28.5,6.5c-3.03-3.03-6.7-4.55-11-4.55-4.27,0-7.93,1.52-11,4.55-3.03,3.07-4.55,6.73-4.55,11,0,4.3,1.52,7.97,4.55,11,3.03,3,6.7,4.5,11,4.5s7.92-1.5,10.95-4.5l.05-.05c3-3.03,4.5-6.68,4.5-10.95s-1.5-7.97-4.5-11M0,18v-.5c0-4.83,1.68-8.97,5.05-12.4l.05-.05C8.53,1.68,12.67,0,17.5,0s8.95,1.68,12.35,5.05v.05c3.43,3.43,5.15,7.57,5.15,12.4v.5c-.13,4.63-1.85,8.58-5.15,11.85-3.4,3.43-7.52,5.15-12.35,5.15s-8.97-1.72-12.4-5.15h-.05C1.82,26.58.13,22.63,0,18" fill="#d9cdaf"/><path
d="M28.5,6.5c3,3.03,4.5,6.7,4.5,11s-1.5,7.92-4.5,10.95l-.05.05c-3.03,3-6.68,4.5-10.95,4.5s-7.97-1.5-11-4.5c-3.03-3.03-4.55-6.7-4.55-11,0-4.27,1.52-7.93,4.55-11,3.07-3.03,6.73-4.55,11-4.55,4.3,0,7.97,1.52,11,4.55M27.05,7.85c-2.63-2.6-5.82-3.9-9.55-3.9-3.77,0-6.98,1.3-9.65,3.9-2.6,2.67-3.9,5.88-3.9,9.65,0,3.73,1.3,6.92,3.9,9.55,2.67,2.67,5.88,4,9.65,4,3.73,0,6.92-1.33,9.55-4,2.67-2.63,4-5.82,4-9.55,0-3.77-1.33-6.98-4-9.65" fill="#b1a077"/><path d="M27.05,7.85c2.67,2.67,4,5.88,4,9.65,0,3.73-1.33,6.92-4,9.55-2.63,2.67-5.82,4-9.55,4-3.77,0-6.98-1.33-9.65-4-2.6-2.63-3.9-5.82-3.9-9.55,0-3.77,1.3-6.98,3.9-9.65,2.67-2.6,5.88-3.9,9.65-3.9,3.73,0,6.92,1.3,9.55,3.9" fill="#d3bf8f"/></g></svg>
''';
SVGUIAdventurePack[CSVGButtonRoundBeige] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 35 38"><g id="Calque_1-2"><path d="M28.5,6.5c-3.03-3.03-6.7-4.55-11-4.55-4.27,0-7.93,1.52-11,4.55-3.03,3.07-4.55,6.73-4.55,11,0,4.3,1.52,7.97,4.55,11,3.03,3,6.7,4.5,11,4.5s7.92-1.5,10.95-4.5l.05-.05c3-3.03,4.5-6.68,4.5-10.95s-1.5-7.97-4.5-11M0,18v-.5c0-4.83,1.68-8.97,5.05-12.4l.05-.05C8.53,1.68,12.67,0,17.5,0s8.95,1.68,12.35,5.05v.05c3.43,3.43,5.15,7.57,5.15,12.4v.5c-.13,4.63-1.85,8.58-5.15,11.85-3.4,3.43-7.52,5.15-12.35,5.15s-8.97-1.72-12.4-5.15h-.05C1.82,26.58.13,22.63,0,18" fill="#d9cdaf"/><path
d="M28.5,6.5c3,3.03,4.5,6.7,4.5,11s-1.5,7.92-4.5,10.95l-.05.05c-3.03,3-6.68,4.5-10.95,4.5s-7.97-1.5-11-4.5c-3.03-3.03-4.55-6.7-4.55-11,0-4.27,1.52-7.93,4.55-11,3.07-3.03,6.73-4.55,11-4.55,4.3,0,7.97,1.52,11,4.55M27.05,7.85c-2.63-2.6-5.82-3.9-9.55-3.9-3.77,0-6.98,1.3-9.65,3.9-2.6,2.67-3.9,5.88-3.9,9.65,0,3.73,1.3,6.92,3.9,9.55,2.67,2.67,5.88,4,9.65,4,3.73,0,6.92-1.33,9.55-4,2.67-2.63,4-5.82,4-9.55,0-3.77-1.33-6.98-4-9.65" fill="#b1a077"/><path d="M27.05,7.85c2.67,2.67,4,5.88,4,9.65,0,3.73-1.33,6.92-4,9.55-2.63,2.67-5.82,4-9.55,4-3.77,0-6.98-1.33-9.65-4-2.6-2.63-3.9-5.82-3.9-9.55,0-3.77,1.3-6.98,3.9-9.65,2.67-2.6,5.88-3.9,9.65-3.9,3.73,0,6.92,1.3,9.55,3.9" fill="#d3bf8f"/><path d="M35,18v2.5c0,4.83-1.72,8.95-5.15,12.35-3.4,3.43-7.52,5.15-12.35,5.15s-8.97-1.72-12.4-5.15h-.05C1.68,29.45,0,25.33,0,20.5v-2.5c.13,4.63,1.82,8.58,5.05,11.85h.05c3.43,3.43,7.57,5.15,12.4,5.15s8.95-1.72,12.35-5.15c3.3-3.27,5.02-7.22,5.15-11.85"/></g></svg>
''';
SVGUIAdventurePack[CSVGButtonRoundBlueDown] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 35 35"><g id="Calque_1-2"><path d="M0,18v-.5c0-4.83,1.68-8.97,5.05-12.4l.05-.05C8.53,1.68,12.67,0,17.5,0s8.95,1.68,12.35,5.05v.05c3.43,3.43,5.15,7.57,5.15,12.4v.5c-.13,4.63-1.85,8.58-5.15,11.85-3.4,3.43-7.52,5.15-12.35,5.15s-8.97-1.72-12.4-5.15h-.05C1.82,26.58.13,22.63,0,18M17.5,1.95c-4.27,0-7.93,1.52-11,4.55-3.03,3.07-4.55,6.73-4.55,11s1.52,7.97,4.55,11c3.03,3,6.7,4.5,11,4.5s7.92-1.5,10.95-4.5l.05-.05c3-3.03,4.5-6.68,4.5-10.95s-1.5-7.97-4.5-11c-3.03-3.03-6.7-4.55-11-4.55" fill="#727685"/><path
d="M17.5,1.95c4.3,0,7.97,1.52,11,4.55,3,3.03,4.5,6.7,4.5,11s-1.5,7.92-4.5,10.95l-.05.05c-3.03,3-6.68,4.5-10.95,4.5s-7.97-1.5-11-4.5c-3.03-3.03-4.55-6.7-4.55-11s1.52-7.93,4.55-11c3.07-3.03,6.73-4.55,11-4.55M17.5,3.95c-3.77,0-6.98,1.3-9.65,3.9-2.6,2.67-3.9,5.88-3.9,9.65s1.3,6.92,3.9,9.55c2.67,2.67,5.88,4,9.65,4,3.73,0,6.92-1.33,9.55-4,2.67-2.63,4-5.82,4-9.55s-1.33-6.98-4-9.65c-2.63-2.6-5.82-3.9-9.55-3.9" fill="#9b9dad"/><path d="M17.5,3.95c3.73,0,6.92,1.3,9.55,3.9,2.67,2.67,4,5.88,4,9.65s-1.33,6.92-4,9.55c-2.63,2.67-5.82,4-9.55,4-3.77,0-6.98-1.33-9.65-4-2.6-2.63-3.9-5.82-3.9-9.55s1.3-6.98,3.9-9.65c2.67-2.6,5.88-3.9,9.65-3.9" fill="#838796"/></g></svg>
''';
SVGUIAdventurePack[CSVGButtonRoundBlue] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 35 38"><g id="Calque_1-2"><path d="M0,18v-.5c0-4.83,1.68-8.97,5.05-12.4l.05-.05C8.53,1.68,12.67,0,17.5,0s8.95,1.68,12.35,5.05v.05c3.43,3.43,5.15,7.57,5.15,12.4v.5c-.13,4.63-1.85,8.58-5.15,11.85-3.4,3.43-7.52,5.15-12.35,5.15s-8.97-1.72-12.4-5.15h-.05C1.82,26.58.13,22.63,0,18M17.5,1.95c-4.27,0-7.93,1.52-11,4.55-3.03,3.07-4.55,6.73-4.55,11s1.52,7.97,4.55,11c3.03,3,6.7,4.5,11,4.5s7.92-1.5,10.95-4.5l.05-.05c3-3.03,4.5-6.68,4.5-10.95s-1.5-7.97-4.5-11c-3.03-3.03-6.7-4.55-11-4.55" fill="#727685"/><path
d="M17.5,1.95c4.3,0,7.97,1.52,11,4.55,3,3.03,4.5,6.7,4.5,11s-1.5,7.92-4.5,10.95l-.05.05c-3.03,3-6.68,4.5-10.95,4.5s-7.97-1.5-11-4.5c-3.03-3.03-4.55-6.7-4.55-11s1.52-7.93,4.55-11c3.07-3.03,6.73-4.55,11-4.55M17.5,3.95c-3.77,0-6.98,1.3-9.65,3.9-2.6,2.67-3.9,5.88-3.9,9.65s1.3,6.92,3.9,9.55c2.67,2.67,5.88,4,9.65,4,3.73,0,6.92-1.33,9.55-4,2.67-2.63,4-5.82,4-9.55s-1.33-6.98-4-9.65c-2.63-2.6-5.82-3.9-9.55-3.9" fill="#9b9dad"/><path d="M17.5,3.95c3.73,0,6.92,1.3,9.55,3.9,2.67,2.67,4,5.88,4,9.65s-1.33,6.92-4,9.55c-2.63,2.67-5.82,4-9.55,4-3.77,0-6.98-1.33-9.65-4-2.6-2.63-3.9-5.82-3.9-9.55s1.3-6.98,3.9-9.65c2.67-2.6,5.88-3.9,9.65-3.9" fill="#838796"/><path d="M35,18v2.5c0,4.83-1.72,8.95-5.15,12.35-3.4,3.43-7.52,5.15-12.35,5.15s-8.97-1.72-12.4-5.15h-.05C1.68,29.45,0,25.33,0,20.5v-2.5c.13,4.63,1.82,8.58,5.05,11.85h.05c3.43,3.43,7.57,5.15,12.4,5.15s8.95-1.72,12.35-5.15c3.3-3.27,5.02-7.22,5.15-11.85"/></g></svg>
''';
SVGUIAdventurePack[CSVGButtonRoundBrownDown] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 35 35"><g id="Calque_1-2"><path d="M0,18v-.5c0-4.83,1.68-8.97,5.05-12.4l.05-.05C8.53,1.68,12.67,0,17.5,0s8.95,1.68,12.35,5.05v.05c3.43,3.43,5.15,7.57,5.15,12.4v.5c-.13,4.63-1.85,8.58-5.15,11.85-3.4,3.43-7.52,5.15-12.35,5.15s-8.97-1.72-12.4-5.15h-.05C1.82,26.58.13,22.63,0,18M1.95,17.5c0,4.3,1.52,7.97,4.55,11,3.03,3,6.7,4.5,11,4.5s7.92-1.5,10.95-4.5l.05-.05c3-3.03,4.5-6.68,4.5-10.95s-1.5-7.97-4.5-11c-3.03-3.03-6.7-4.55-11-4.55-4.27,0-7.93,1.52-11,4.55-3.03,3.07-4.55,6.73-4.55,11" fill="#864"/><path
d="M3.95,17.5c0,3.73,1.3,6.92,3.9,9.55,2.67,2.67,5.88,4,9.65,4,3.73,0,6.92-1.33,9.55-4,2.67-2.63,4-5.82,4-9.55s-1.33-6.98-4-9.65c-2.63-2.6-5.82-3.9-9.55-3.9-3.77,0-6.98,1.3-9.65,3.9-2.6,2.67-3.9,5.88-3.9,9.65M1.95,17.5c0-4.27,1.52-7.93,4.55-11,3.07-3.03,6.73-4.55,11-4.55,4.3,0,7.97,1.52,11,4.55,3,3.03,4.5,6.7,4.5,11s-1.5,7.92-4.5,10.95l-.05.05c-3.03,3-6.68,4.5-10.95,4.5s-7.97-1.5-11-4.5c-3.03-3.03-4.55-6.7-4.55-11" fill="#b7916a"/><path d="M3.95,17.5c0-3.77,1.3-6.98,3.9-9.65,2.67-2.6,5.88-3.9,9.65-3.9,3.73,0,6.92,1.3,9.55,3.9,2.67,2.67,4,5.88,4,9.65s-1.33,6.92-4,9.55c-2.63,2.67-5.82,4-9.55,4-3.77,0-6.98-1.33-9.65-4-2.6-2.63-3.9-5.82-3.9-9.55" fill="#97714a"/></g></svg>
''';
SVGUIAdventurePack[CSVGButtonRoundBrown] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 35 38"><g id="Calque_1-2"><path d="M0,18v-.5c0-4.83,1.68-8.97,5.05-12.4l.05-.05C8.53,1.68,12.67,0,17.5,0s8.95,1.68,12.35,5.05v.05c3.43,3.43,5.15,7.57,5.15,12.4v.5c-.13,4.63-1.85,8.58-5.15,11.85-3.4,3.43-7.52,5.15-12.35,5.15s-8.97-1.72-12.4-5.15h-.05C1.82,26.58.13,22.63,0,18M1.95,17.5c0,4.3,1.52,7.97,4.55,11,3.03,3,6.7,4.5,11,4.5s7.92-1.5,10.95-4.5l.05-.05c3-3.03,4.5-6.68,4.5-10.95s-1.5-7.97-4.5-11c-3.03-3.03-6.7-4.55-11-4.55-4.27,0-7.93,1.52-11,4.55-3.03,3.07-4.55,6.73-4.55,11" fill="#864"/><path d="M35,18v2.5c0,4.83-1.72,8.95-5.15,12.35-3.4,3.43-7.52,5.15-12.35,5.15s-8.97-1.72-12.4-5.15h-.05C1.68,29.45,0,25.33,0,20.5v-2.5c.13,4.63,1.82,8.58,5.05,11.85h.05c3.43,3.43,7.57,5.15,12.4,5.15s8.95-1.72,12.35-5.15c3.3-3.27,5.02-7.22,5.15-11.85"/><path
d="M3.95,17.5c0,3.73,1.3,6.92,3.9,9.55,2.67,2.67,5.88,4,9.65,4,3.73,0,6.92-1.33,9.55-4,2.67-2.63,4-5.82,4-9.55s-1.33-6.98-4-9.65c-2.63-2.6-5.82-3.9-9.55-3.9-3.77,0-6.98,1.3-9.65,3.9-2.6,2.67-3.9,5.88-3.9,9.65M1.95,17.5c0-4.27,1.52-7.93,4.55-11,3.07-3.03,6.73-4.55,11-4.55,4.3,0,7.97,1.52,11,4.55,3,3.03,4.5,6.7,4.5,11s-1.5,7.92-4.5,10.95l-.05.05c-3.03,3-6.68,4.5-10.95,4.5s-7.97-1.5-11-4.5c-3.03-3.03-4.55-6.7-4.55-11" fill="#b7916a"/><path d="M3.95,17.5c0-3.77,1.3-6.98,3.9-9.65,2.67-2.6,5.88-3.9,9.65-3.9,3.73,0,6.92,1.3,9.55,3.9,2.67,2.67,4,5.88,4,9.65s-1.33,6.92-4,9.55c-2.63,2.67-5.82,4-9.55,4-3.77,0-6.98-1.33-9.65-4-2.6-2.63-3.9-5.82-3.9-9.55" fill="#97714a"/></g></svg>
''';
SVGUIAdventurePack[CSVGButtonRoundGreyDown] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 35 35"><g id="Calque_1-2"><path d="M17.5,1.95c4.3,0,7.97,1.52,11,4.55,3,3.03,4.5,6.7,4.5,11s-1.5,7.92-4.5,10.95l-.05.05c-3.03,3-6.68,4.5-10.95,4.5s-7.97-1.5-11-4.5c-3.03-3.03-4.55-6.7-4.55-11,0-4.27,1.52-7.93,4.55-11,3.07-3.03,6.73-4.55,11-4.55M17.5,3.95c-3.77,0-6.98,1.3-9.65,3.9-2.6,2.67-3.9,5.88-3.9,9.65,0,3.73,1.3,6.92,3.9,9.55,2.67,2.67,5.88,4,9.65,4,3.73,0,6.92-1.33,9.55-4,2.67-2.63,4-5.82,4-9.55,0-3.77-1.33-6.98-4-9.65-2.63-2.6-5.82-3.9-9.55-3.9" fill="#cbcbcb"/><path d="M17.5,3.95c3.73,0,6.92,1.3,9.55,3.9,2.67,2.67,4,5.88,4,9.65,0,3.73-1.33,6.92-4,9.55-2.63,2.67-5.82,4-9.55,4-3.77,0-6.98-1.33-9.65-4-2.6-2.63-3.9-5.82-3.9-9.55,0-3.77,1.3-6.98,3.9-9.65,2.67-2.6,5.88-3.9,9.65-3.9" fill="#e5e5e5"/><path
d="M0,18v-.5c0-4.83,1.68-8.97,5.05-12.4l.05-.05C8.53,1.68,12.67,0,17.5,0s8.95,1.68,12.35,5.05v.05c3.43,3.43,5.15,7.57,5.15,12.4v.5c-.13,4.63-1.85,8.58-5.15,11.85-3.4,3.43-7.52,5.15-12.35,5.15s-8.97-1.72-12.4-5.15h-.05C1.82,26.58.13,22.63,0,18M17.5,1.95c-4.27,0-7.93,1.52-11,4.55-3.03,3.07-4.55,6.73-4.55,11,0,4.3,1.52,7.97,4.55,11,3.03,3,6.7,4.5,11,4.5s7.92-1.5,10.95-4.5l.05-.05c3-3.03,4.5-6.68,4.5-10.95s-1.5-7.97-4.5-11c-3.03-3.03-6.7-4.55-11-4.55" fill="#e9e9e9"/></g></svg>
''';
SVGUIAdventurePack[CSVGButtonRoundGrey] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 35 38"><g id="Calque_1-2"><path d="M17.5,1.95c4.3,0,7.97,1.52,11,4.55,3,3.03,4.5,6.7,4.5,11s-1.5,7.92-4.5,10.95l-.05.05c-3.03,3-6.68,4.5-10.95,4.5s-7.97-1.5-11-4.5c-3.03-3.03-4.55-6.7-4.55-11,0-4.27,1.52-7.93,4.55-11,3.07-3.03,6.73-4.55,11-4.55M17.5,3.95c-3.77,0-6.98,1.3-9.65,3.9-2.6,2.67-3.9,5.88-3.9,9.65,0,3.73,1.3,6.92,3.9,9.55,2.67,2.67,5.88,4,9.65,4,3.73,0,6.92-1.33,9.55-4,2.67-2.63,4-5.82,4-9.55,0-3.77-1.33-6.98-4-9.65-2.63-2.6-5.82-3.9-9.55-3.9" fill="#cbcbcb"/><path d="M17.5,3.95c3.73,0,6.92,1.3,9.55,3.9,2.67,2.67,4,5.88,4,9.65,0,3.73-1.33,6.92-4,9.55-2.63,2.67-5.82,4-9.55,4-3.77,0-6.98-1.33-9.65-4-2.6-2.63-3.9-5.82-3.9-9.55,0-3.77,1.3-6.98,3.9-9.65,2.67-2.6,5.88-3.9,9.65-3.9" fill="#e5e5e5"/><path
d="M0,18v-.5c0-4.83,1.68-8.97,5.05-12.4l.05-.05C8.53,1.68,12.67,0,17.5,0s8.95,1.68,12.35,5.05v.05c3.43,3.43,5.15,7.57,5.15,12.4v.5c-.13,4.63-1.85,8.58-5.15,11.85-3.4,3.43-7.52,5.15-12.35,5.15s-8.97-1.72-12.4-5.15h-.05C1.82,26.58.13,22.63,0,18M17.5,1.95c-4.27,0-7.93,1.52-11,4.55-3.03,3.07-4.55,6.73-4.55,11,0,4.3,1.52,7.97,4.55,11,3.03,3,6.7,4.5,11,4.5s7.92-1.5,10.95-4.5l.05-.05c3-3.03,4.5-6.68,4.5-10.95s-1.5-7.97-4.5-11c-3.03-3.03-6.7-4.55-11-4.55" fill="#e9e9e9"/><path d="M35,18v2.5c0,4.83-1.72,8.95-5.15,12.35-3.4,3.43-7.52,5.15-12.35,5.15s-8.97-1.72-12.4-5.15h-.05C1.68,29.45,0,25.33,0,20.5v-2.5c.13,4.63,1.82,8.58,5.05,11.85h.05c3.43,3.43,7.57,5.15,12.4,5.15s8.95-1.72,12.35-5.15c3.3-3.27,5.02-7.22,5.15-11.85"/></g></svg>
''';
SVGUIAdventurePack[CSVGButtonSquareBeigePressed] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 45 45"><g id="Calque_1-2"><path d="M4,6l.05-.5.05-.2c.17-.87.8-1.3,1.9-1.3h33c1.1,0,1.77.45,2,1.35l-.05-.05.05.7v5.3l-2.4,2.4,2.4,2.4v22.9c0,1.3-.62,1.97-1.85,2H5.9c-1.27-.03-1.9-.7-1.9-2v-3.6l2.75-2.75-2.75-2.75V6" fill="#d3bf8f"/><path d="M4,6v23.9l2.75,2.75-2.75,2.75v3.6c0,1.3.63,1.97,1.9,2h33.25c1.23-.03,1.85-.7,1.85-2v-22.9l-2.4-2.4,2.4-2.4v-5.3l-.05-.7.05.05c-.23-.9-.9-1.35-2-1.35H6c-1.1,0-1.73.43-1.9,1.3l-.05.2-.05.5M2.1,5.05c.27-2.03,1.57-3.05,3.9-3.05h33c2.33,0,3.65,1.02,3.95,3.05l.05.95v33l-.05,1c-.3,2-1.62,3-3.95,3H6c-2.33,0-3.63-1-3.9-3l-.1-1V6l.1-.95" fill="#b1a077"/><path d="M2.1,5.05l-.1.95v33l.1,1c.27,2,1.57,3,3.9,3h33c2.33,0,3.65-1,3.95-3l.05-1V6l-.05-.95c-.3-2.03-1.62-3.05-3.95-3.05H6c-2.33,0-3.63,1.02-3.9,3.05M6,0h33c4,0,6,2,6,6v33.25c-.1,3.83-2.1,5.75-6,5.75H5.1c-3.13-.27-4.82-1.98-5.05-5.15l-.05-.6V6C0,2,2,0,6,0" fill="#d9cdaf"/></g></svg>
''';
SVGUIAdventurePack[CSVGButtonSquareBeige] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 45 49"><g id="Calque_1-2"><path d="M0,39.25V6C0,2,2,0,6,0h33c4,0,6,2,6,6v33.25c-.1,3.83-2.1,5.75-6,5.75H6c-3.9,0-5.9-1.92-6-5.75M2.1,5.05l-.1.95v33c0,2.67,1.33,4,4,4h33c2.67,0,4-1.33,4-4V6l-.05-.95c-.3-2.03-1.62-3.05-3.95-3.05H6c-2.33,0-3.63,1.02-3.9,3.05" fill="#d9cdaf"/><path d="M2.1,5.05c.27-2.03,1.57-3.05,3.9-3.05h33c2.33,0,3.65,1.02,3.95,3.05l.05.95v33c0,2.67-1.33,4-4,4H6c-2.67,0-4-1.33-4-4V6l.1-.95M4.1,5.3l-.05.2-.05.5v23.9l2.75,2.75-2.75,2.75v3.6c0,1.33.67,2,2,2h33c1.33,0,2-.67,2-2v-22.9l-2.4-2.4,2.4-2.4v-5.3l-.05-.7.05.05c-.23-.9-.9-1.35-2-1.35H6c-1.1,0-1.73.43-1.9,1.3" fill="#b1a077"/><path d="M4.1,5.3c.17-.87.8-1.3,1.9-1.3h33c1.1,0,1.77.45,2,1.35l-.05-.05.05.7v5.3l-2.4,2.4,2.4,2.4v22.9c0,1.33-.67,2-2,2H6c-1.33,0-2-.67-2-2v-3.6l2.75-2.75-2.75-2.75V6l.05-.5.05-.2" fill="#d3bf8f"/><path
d="M45,39.25v3.75c0,4-2,6-6,6H6c-4,0-6-2-6-6v-3.75c.1,3.83,2.1,5.75,6,5.75h33c3.9,0,5.9-1.92,6-5.75" fill="#a3997f"/></g></svg>
''';
SVGUIAdventurePack[CSVGButtonSquareBluePressed] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 45 45"><g id="Calque_1-2"><path d="M41,5.35l-.05-.05.05.7v5.3l-2.4,2.4,2.4,2.4v22.9c0,1.3-.62,1.97-1.85,2H5.9c-1.27-.03-1.9-.7-1.9-2v-3.6l2.75-2.75-2.75-2.75V6l.05-.5.05-.2c.17-.87.8-1.3,1.9-1.3h33c1.1,0,1.77.45,2,1.35" fill="#838796"/><path d="M41,5.35c-.23-.9-.9-1.35-2-1.35H6c-1.1,0-1.73.43-1.9,1.3l-.05.2-.05.5v23.9l2.75,2.75-2.75,2.75v3.6c0,1.3.63,1.97,1.9,2h33.25c1.23-.03,1.85-.7,1.85-2v-22.9l-2.4-2.4,2.4-2.4v-5.3l-.05-.7.05.05M39,2c2.33,0,3.65,1.02,3.95,3.05l.05.95v33l-.05,1c-.3,2-1.62,3-3.95,3H6c-2.33,0-3.63-1-3.9-3l-.1-1V6l.1-.95c.27-2.03,1.57-3.05,3.9-3.05h33" fill="#727685"/><path d="M39,2H6c-2.33,0-3.63,1.02-3.9,3.05l-.1.95v33l.1,1c.27,2,1.57,3,3.9,3h33c2.33,0,3.65-1,3.95-3l.05-1V6l-.05-.95c-.3-2.03-1.62-3.05-3.95-3.05M45,6v33.25c-.1,3.83-2.1,5.75-6,5.75H5.1c-3.13-.27-4.82-1.98-5.05-5.15l-.05-.6V6C0,2,2,0,6,0h33c4,0,6,2,6,6" fill="#9b9dad"/></g></svg>
''';
SVGUIAdventurePack[CSVGButtonSquareBlue] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 45 49"><g id="Calque_1-2"><path d="M41,5.35l-.05-.05.05.7v5.3l-2.4,2.4,2.4,2.4v22.9c0,1.33-.67,2-2,2H6c-1.33,0-2-.67-2-2v-3.6l2.75-2.75-2.75-2.75V6l.05-.5.05-.2c.17-.87.8-1.3,1.9-1.3h33c1.1,0,1.77.45,2,1.35" fill="#838796"/><path d="M41,5.35c-.23-.9-.9-1.35-2-1.35H6c-1.1,0-1.73.43-1.9,1.3l-.05.2-.05.5v23.9l2.75,2.75-2.75,2.75v3.6c0,1.33.67,2,2,2h33c1.33,0,2-.67,2-2v-22.9l-2.4-2.4,2.4-2.4v-5.3l-.05-.7.05.05M42.95,5.05l.05.95v33c0,2.67-1.33,4-4,4H6c-2.67,0-4-1.33-4-4V6l.1-.95c.27-2.03,1.57-3.05,3.9-3.05h33c2.33,0,3.65,1.02,3.95,3.05" fill="#727685"/><path d="M42.95,5.05c-.3-2.03-1.62-3.05-3.95-3.05H6c-2.33,0-3.63,1.02-3.9,3.05l-.1.95v33c0,2.67,1.33,4,4,4h33c2.67,0,4-1.33,4-4V6l-.05-.95M0,39.25V6C0,2,2,0,6,0h33c4,0,6,2,6,6v33.25c-.1,3.83-2.1,5.75-6,5.75H6c-3.9,0-5.9-1.92-6-5.75" fill="#9b9dad"/><path
d="M0,39.25c.1,3.83,2.1,5.75,6,5.75h33c3.9,0,5.9-1.92,6-5.75v3.75c0,4-2,6-6,6H6c-4,0-6-2-6-6v-3.75" fill="#616374"/></g></svg>
''';
SVGUIAdventurePack[CSVGButtonSquareBrownPressed] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 45 45"><g id="Calque_1-2"><path d="M6,2c-2.33,0-3.63,1.02-3.9,3.05l-.1.95v33l.1,1c.27,2,1.57,3,3.9,3h33c2.33,0,3.65-1,3.95-3l.05-1V6l-.05-.95c-.3-2.03-1.62-3.05-3.95-3.05H6M39,0c4,0,6,2,6,6v33.25c-.1,3.83-2.1,5.75-6,5.75H5.1c-3.13-.27-4.82-1.98-5.05-5.15l-.05-.6V6C0,2,2,0,6,0h33" fill="#864"/><path d="M6,2h33c2.33,0,3.65,1.02,3.95,3.05l.05.95v33l-.05,1c-.3,2-1.62,3-3.95,3H6c-2.33,0-3.63-1-3.9-3l-.1-1V6l.1-.95c.27-2.03,1.57-3.05,3.9-3.05M41,11.3v-5.3l-.05-.7.05.05c-.23-.9-.9-1.35-2-1.35H6c-1.1,0-1.73.43-1.9,1.3l-.05.2-.05.5v23.9l2.75,2.75-2.75,2.75v3.6c0,1.3.63,1.97,1.9,2h33.25c1.23-.03,1.85-.7,1.85-2v-22.9l-2.4-2.4,2.4-2.4" fill="#b7916a"/><path d="M41,11.3l-2.4,2.4,2.4,2.4v22.9c0,1.3-.62,1.97-1.85,2H5.9c-1.27-.03-1.9-.7-1.9-2v-3.6l2.75-2.75-2.75-2.75V6l.05-.5.05-.2c.17-.87.8-1.3,1.9-1.3h33c1.1,0,1.77.45,2,1.35l-.05-.05.05.7v5.3" fill="#97714a"/></g></svg>
''';
SVGUIAdventurePack[CSVGButtonSquareBrown] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 45 49"><g id="Calque_1-2"><path d="M4.05,5.5l.05-.2c.17-.87.8-1.3,1.9-1.3h33c1.1,0,1.77.45,2,1.35l-.05-.05.05.7v5.3l-2.4,2.4,2.4,2.4v22.9c0,1.33-.67,2-2,2H6c-1.33,0-2-.67-2-2v-3.6l2.75-2.75-2.75-2.75V6l.05-.5" fill="#97714a"/><path d="M4.05,5.5l-.05.5v23.9l2.75,2.75-2.75,2.75v3.6c0,1.33.67,2,2,2h33c1.33,0,2-.67,2-2v-22.9l-2.4-2.4,2.4-2.4v-5.3l-.05-.7.05.05c-.23-.9-.9-1.35-2-1.35H6c-1.1,0-1.73.43-1.9,1.3l-.05.2M2,6l.1-.95c.27-2.03,1.57-3.05,3.9-3.05h33c2.33,0,3.65,1.02,3.95,3.05l.05.95v33c0,2.67-1.33,4-4,4H6c-2.67,0-4-1.33-4-4V6" fill="#b7916a"/><path d="M2,6v33c0,2.67,1.33,4,4,4h33c2.67,0,4-1.33,4-4V6l-.05-.95c-.3-2.03-1.62-3.05-3.95-3.05H6c-2.33,0-3.63,1.02-3.9,3.05l-.1.95M0,39.25V6C0,2,2,0,6,0h33c4,0,6,2,6,6v33.25c-.1,3.83-2.1,5.75-6,5.75H6c-3.9,0-5.9-1.92-6-5.75" fill="#864"/><path d="M0,39.25c.1,3.83,2.1,5.75,6,5.75h33c3.9,0,5.9-1.92,6-5.75v3.75c0,4-2,6-6,6H6c-4,0-6-2-6-6v-3.75"
fill="#6d543a"/></g></svg>
''';
SVGUIAdventurePack[CSVGButtonSquareGreyPressed] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 45 45"><g id="Calque_1-2"><path d="M42.95,5.05l.05.95v33l-.05,1c-.3,2-1.62,3-3.95,3H6c-2.33,0-3.63-1-3.9-3l-.1-1V6l.1-.95c.27-2.03,1.57-3.05,3.9-3.05h33c2.33,0,3.65,1.02,3.95,3.05M39,4H6c-1.1,0-1.73.43-1.9,1.3l-.05.2-.05.5v23.9l2.75,2.75-2.75,2.75v3.6c0,1.3.63,1.97,1.9,2h33.25c1.23-.03,1.85-.7,1.85-2v-22.9l-2.4-2.4,2.4-2.4v-5.3l-.05-.7.05.05c-.23-.9-.9-1.35-2-1.35" fill="#cbcbcb"/><path d="M42.95,5.05c-.3-2.03-1.62-3.05-3.95-3.05H6c-2.33,0-3.63,1.02-3.9,3.05l-.1.95v33l.1,1c.27,2,1.57,3,3.9,3h33c2.33,0,3.65-1,3.95-3l.05-1V6l-.05-.95M45,6v33.25c-.1,3.83-2.1,5.75-6,5.75H5.1c-3.13-.27-4.82-1.98-5.05-5.15l-.05-.6V6C0,2,2,0,6,0h33c4,0,6,2,6,6" fill="#e9e9e9"/><path d="M39,4c1.1,0,1.77.45,2,1.35l-.05-.05.05.7v5.3l-2.4,2.4,2.4,2.4v22.9c0,1.3-.62,1.97-1.85,2H5.9c-1.27-.03-1.9-.7-1.9-2v-3.6l2.75-2.75-2.75-2.75V6l.05-.5.05-.2c.17-.87.8-1.3,1.9-1.3h33" fill="#e5e5e5"/></g></svg>
''';
SVGUIAdventurePack[CSVGButtonSquareGrey] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 45 49"><g id="Calque_1-2"><path d="M0,39.25V6C0,2,2,0,6,0h33c4,0,6,2,6,6v33.25c-.1,3.83-2.1,5.75-6,5.75H6c-3.9,0-5.9-1.92-6-5.75M42.95,5.05c-.3-2.03-1.62-3.05-3.95-3.05H6c-2.33,0-3.63,1.02-3.9,3.05l-.1.95v33c0,2.67,1.33,4,4,4h33c2.67,0,4-1.33,4-4V6l-.05-.95" fill="#e9e9e9"/><path d="M41,6v5.3l-2.4,2.4,2.4,2.4v22.9c0,1.33-.67,2-2,2H6c-1.33,0-2-.67-2-2v-3.6l2.75-2.75-2.75-2.75V6l.05-.5.05-.2c.17-.87.8-1.3,1.9-1.3h33c1.1,0,1.77.45,2,1.35l-.05-.05.05.7" fill="#e5e5e5"/><path d="M41,6l-.05-.7.05.05c-.23-.9-.9-1.35-2-1.35H6c-1.1,0-1.73.43-1.9,1.3l-.05.2-.05.5v23.9l2.75,2.75-2.75,2.75v3.6c0,1.33.67,2,2,2h33c1.33,0,2-.67,2-2v-22.9l-2.4-2.4,2.4-2.4v-5.3M42.95,5.05l.05.95v33c0,2.67-1.33,4-4,4H6c-2.67,0-4-1.33-4-4V6l.1-.95c.27-2.03,1.57-3.05,3.9-3.05h33c2.33,0,3.65,1.02,3.95,3.05" fill="#cbcbcb"/><path
d="M45,39.25v3.75c0,4-2,6-6,6H6c-4,0-6-2-6-6v-3.75c.1,3.83,2.1,5.75,6,5.75h33c3.9,0,5.9-1.92,6-5.75" fill="#c2c2c2"/></g></svg>
''';
SVGUIAdventurePack[CSVGCursorGauntletBronze] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 29.77 29.92"><g id="Calque_1-2"><path d="M29.72,18.11c-.13,1.57-.42,2.95-.85,4.15-.4,1.07-.93,1.98-1.6,2.75-1.67,2.03-4.15,3-7.45,2.9h-.2c-2.33-.33-4-1.57-5-3.7l-.6-1.35c-5.9-1.7-10.45-4.73-13.65-9.1l-.1-.2c-.23-.4-.32-.82-.25-1.25.03-.53.27-.97.7-1.3l2-1.65.05-.05c.33-.23.7-.37,1.1-.4h.25c-.83-1.17-1.87-2.22-3.1-3.15l-.5-.6-.2-.4c-.13-.43-.12-.85.05-1.25C.74,2.14,1.96,1.04,4.02.21l-.15.05.05-.05c.3-.17.63-.23,1-.2l.95.3,3,2.3c3.13-.47,5.75-.23,7.85.7.3.13.55.33.75.6,1.67,2.1,3.27,4.85,4.8,8.25,1.77,1,3.8,1.85,6.1,2.55l.5.25.55.5c.23.33.35.73.35,1.2l-.05,1.45M4.77,2.06c-1.4.53-2.25,1.23-2.55,2.1,2.97,2.27,4.9,5.08,5.8,8.45-1.33-.2-2.68-.77-4.05-1.7l-2,1.65c3.13,4.23,7.63,7.1,13.5,8.6l.95,2.2c.7,1.5,1.85,2.35,3.45,2.55,5.2.13,7.83-2.97,7.9-9.3-2.7-.83-5.07-1.87-7.1-3.1-1.5-3.47-3.08-6.25-4.75-8.35-1-.43-2.12-.68-3.35-.75h-1.25l-2.45.2-.85.15c-.6-.9-1.67-1.82-3.2-2.75l-.05.05"
fill="#87623f"/><path d="M.27,13.56l.1.2c3.2,4.37,7.75,7.4,13.65,9.1l.6,1.35c1,2.13,2.67,3.37,5,3.7h.2c3.3.1,5.78-.87,7.45-2.9.67-.77,1.2-1.68,1.6-2.75.43-1.2.72-2.58.85-4.15l.05.55c-.03,2.2-.33,4.08-.9,5.65-.4,1.07-.93,1.97-1.6,2.7-1.67,2.03-4.15,3-7.45,2.9h-.2c-2.33-.33-4-1.57-5-3.7l-.6-1.35c-5.9-1.7-10.45-4.73-13.65-9.1-.3-.43-.42-.92-.35-1.45.03-.3.12-.55.25-.75M.52,5.16l.5.6c1.23.93,2.27,1.98,3.1,3.15h-.25c-.4.03-.77.17-1.1.4l-1.75-1.55c-.37-.27-.6-.6-.7-1-.13-.43-.12-.85.05-1.25l.15-.35"/><path d="M4.77,2.06l.05-.05c1.53.93,2.6,1.85,3.2,2.75l.85-.15,2.45-.2h1.25c1.23.07,2.35.32,3.35.75,1.67,2.1,3.25,4.88,4.75,8.35,2.03,1.23,4.4,2.27,7.1,3.1-.07,6.33-2.7,9.43-7.9,9.3-1.6-.2-2.75-1.05-3.45-2.55l-.95-2.2c-5.87-1.5-10.37-4.37-13.5-8.6l2-1.65c1.37.93,2.72,1.5,4.05,1.7-.9-3.37-2.83-6.18-5.8-8.45.3-.87,1.15-1.57,2.55-2.1" fill="#c99869"/></g></svg>
''';
SVGUIAdventurePack[CSVGCursorGauntletGrey1] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 29.77 29.92"><g id="Calque_1-2"><path d="M.52,5.16l-.2-.4c-.13-.43-.12-.85.05-1.25C.74,2.14,1.96,1.04,4.02.21l-.15.05.05-.05c.3-.17.63-.23,1-.2l.95.3c1.27.77,2.27,1.53,3,2.3,3.13-.47,5.75-.23,7.85.7.3.13.55.33.75.6,1.67,2.1,3.27,4.85,4.8,8.25,1.77,1,3.8,1.85,6.1,2.55.43.13.78.38,1.05.75.23.33.35.73.35,1.2l-.05,1.45c-.23,3-1.05,5.3-2.45,6.9-1.67,2.03-4.15,3-7.45,2.9h-.2c-2.33-.33-4-1.57-5-3.7l-.6-1.35c-5.9-1.7-10.45-4.73-13.65-9.1l-.1-.2c-.23-.4-.32-.82-.25-1.25.03-.53.27-.97.7-1.3l2-1.65.05-.05c.33-.23.7-.37,1.1-.4h.25c-.83-1.17-1.87-2.22-3.1-3.15l-.5-.6M4.82,2.01l-.05.05c-1.4.53-2.25,1.23-2.55,2.1,2.97,2.27,4.9,5.08,5.8,8.45-1.33-.2-2.68-.77-4.05-1.7l-2,1.65c3.13,4.23,7.63,7.1,13.5,8.6l.95,2.2c.7,1.5,1.85,2.35,3.45,2.55,5.2.13,7.83-2.97,7.9-9.3-2.7-.83-5.07-1.87-7.1-3.1-1.5-3.47-3.08-6.25-4.75-8.35-1-.43-2.12-.68-3.35-.75h-1.25l-2.45.2-.85.15c-.6-.9-1.67-1.82-3.2-2.75"
fill="#727272"/><path d="M29.72,18.11l.05.55c-.03,3.73-.87,6.52-2.5,8.35-1.67,2.03-4.15,3-7.45,2.9h-.2c-2.33-.33-4-1.57-5-3.7l-.6-1.35c-5.9-1.7-10.45-4.73-13.65-9.1-.3-.43-.42-.92-.35-1.45.03-.3.12-.55.25-.75l.1.2c3.2,4.37,7.75,7.4,13.65,9.1l.6,1.35c1,2.13,2.67,3.37,5,3.7h.2c3.3.1,5.78-.87,7.45-2.9,1.4-1.6,2.22-3.9,2.45-6.9M2.77,9.31l-1.75-1.55c-.37-.27-.6-.6-.7-1-.13-.43-.12-.85.05-1.25l.15-.35.5.6c1.23.93,2.27,1.98,3.1,3.15h-.25c-.4.03-.77.17-1.1.4"/><path d="M4.82,2.01c1.53.93,2.6,1.85,3.2,2.75l.85-.15,2.45-.2h1.25c1.23.07,2.35.32,3.35.75,1.67,2.1,3.25,4.88,4.75,8.35,2.03,1.23,4.4,2.27,7.1,3.1-.07,6.33-2.7,9.43-7.9,9.3-1.6-.2-2.75-1.05-3.45-2.55l-.95-2.2c-5.87-1.5-10.37-4.37-13.5-8.6l2-1.65c1.37.93,2.72,1.5,4.05,1.7-.9-3.37-2.83-6.18-5.8-8.45.3-.87,1.15-1.57,2.55-2.1l.05-.05" fill="#a1a1a1"/></g></svg>
''';
SVGUIAdventurePack[CSVGCursorGauntletGrey] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 29.77 29.92"><g id="Calque_1-2"><path d="M29.72,18.11l.05.55c-.03,3.73-.87,6.52-2.5,8.35-1.67,2.03-4.15,3-7.45,2.9h-.2c-2.33-.33-4-1.57-5-3.7l-.6-1.35c-5.9-1.7-10.45-4.73-13.65-9.1-.3-.43-.42-.92-.35-1.45.03-.3.12-.55.25-.75l.1.2c3.2,4.37,7.75,7.4,13.65,9.1l.6,1.35c1,2.13,2.67,3.37,5,3.7h.2c3.3.1,5.78-.87,7.45-2.9,1.4-1.6,2.22-3.9,2.45-6.9M2.77,9.31c-.53-.57-1.12-1.08-1.75-1.55-.37-.27-.6-.6-.7-1-.13-.43-.12-.85.05-1.25l.15-.35.5.6c1.23.93,2.27,1.98,3.1,3.15h-.25c-.4.03-.77.17-1.1.4"/><path
d="M2.77,9.31c.33-.23.7-.37,1.1-.4h.25c-.83-1.17-1.87-2.22-3.1-3.15l-.5-.6-.2-.4c-.13-.43-.12-.85.05-1.25C.74,2.14,1.96,1.04,4.02.21l-.15.05.05-.05c.3-.17.63-.23,1-.2l.95.3c1.27.77,2.27,1.53,3,2.3,3.13-.47,5.75-.23,7.85.7.3.13.55.33.75.6,1.67,2.1,3.27,4.85,4.8,8.25,1.77,1,3.8,1.85,6.1,2.55.43.13.78.38,1.05.75l.35,1.2-.05,1.45c-.23,3-1.05,5.3-2.45,6.9-1.67,2.03-4.15,3-7.45,2.9h-.2c-2.33-.33-4-1.57-5-3.7l-.6-1.35c-5.9-1.7-10.45-4.73-13.65-9.1l-.1-.2c-.23-.4-.32-.82-.25-1.25.03-.53.27-.97.7-1.3l2-1.65.05-.05M4.82,2.01l-.05.05c-1.4.53-2.25,1.23-2.55,2.1,2.97,2.27,4.9,5.08,5.8,8.45-1.33-.2-2.68-.77-4.05-1.7l-2,1.65c3.13,4.23,7.63,7.1,13.5,8.6l.95,2.2c.7,1.5,1.85,2.35,3.45,2.55,5.2.13,7.83-2.97,7.9-9.3-2.7-.83-5.07-1.87-7.1-3.1-1.5-3.47-3.08-6.25-4.75-8.35-1-.43-2.12-.68-3.35-.75h-1.25l-2.45.2-.85.15c-.6-.9-1.67-1.82-3.2-2.75" fill="#a1a1a1"/><path
d="M4.82,2.01c1.53.93,2.6,1.85,3.2,2.75l.85-.15,2.45-.2h1.25c1.23.07,2.35.32,3.35.75,1.67,2.1,3.25,4.88,4.75,8.35,2.03,1.23,4.4,2.27,7.1,3.1-.07,6.33-2.7,9.43-7.9,9.3-1.6-.2-2.75-1.05-3.45-2.55l-.95-2.2c-5.87-1.5-10.37-4.37-13.5-8.6l2-1.65c1.37.93,2.72,1.5,4.05,1.7-.9-3.37-2.83-6.18-5.8-8.45.3-.87,1.15-1.57,2.55-2.1l.05-.05" fill="#e5e5e5"/></g></svg>
''';
SVGUIAdventurePack[CSVGCursorHandBeige] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 26.92 27.61"><g id="Calque_1-2"><path
d="M.3,6.15c-.33-.9-.37-1.82-.1-2.75.3-1.13.93-2,1.9-2.6l.3-.2C3.43,0,4.56-.15,5.8.15c1.23.3,2.18,1.02,2.85,2.15l1.1,1.95.4-.25-.05.05c2.2-1.27,4.3-1.93,6.3-2,2.6-.03,4.32.77,5.15,2.4l4.7,8.1v.05c.73,1.1.87,2.35.4,3.75l-.9,1.85c-1.03,1.73-2.65,3.23-4.85,4.5-2.17,1.23-4.22,1.87-6.15,1.9h-.1c-2.63.13-4.37-.65-5.2-2.35l-.15-.3-4.8-1.35h.15c-1.4-.3-2.43-1.05-3.1-2.25v.05l-.45-.95c-.3-.9-.32-1.82-.05-2.75l.1-.4c.2-.67.53-1.23,1-1.7.3-.33.65-.62,1.05-.85l.15-.1L.65,6.95l-.35-.8M2.2,3.75l-.1.2c-.2.7-.12,1.37.25,2l4.15,7.2c-.77-.2-1.5-.12-2.2.25-.47.3-.82.67-1.05,1.1l-.15.35-.1.25-.05.1c-.2.77-.1,1.48.3,2.15.4.7,1,1.13,1.8,1.3l5.5,1.55.65,1.05c.57,1,1.7,1.45,3.4,1.35,1.67-.03,3.43-.58,5.3-1.65,1.87-1.07,3.25-2.33,4.15-3.8.87-1.4,1.02-2.6.45-3.6l-4.7-8.1c-.57-.97-1.68-1.43-3.35-1.4-1.7.07-3.48.63-5.35,1.7-.6.33-1.13.7-1.6,1.1l-.4.3-2.2-3.85c-.37-.63-.9-1.03-1.6-1.2-.7-.17-1.35-.08-1.95.25l-.05.05c-.53.3-.9.75-1.1,1.35" fill="#c6b897"/><path
d="M2.2,3.75c.2-.6.57-1.05,1.1-1.35l.05-.05c.6-.33,1.25-.42,1.95-.25.7.17,1.23.57,1.6,1.2l2.2,3.85.4-.3c.47-.4,1-.77,1.6-1.1,1.87-1.07,3.65-1.63,5.35-1.7,1.67-.03,2.78.43,3.35,1.4l4.7,8.1c.57,1,.42,2.2-.45,3.6-.9,1.47-2.28,2.73-4.15,3.8-1.87,1.07-3.63,1.62-5.3,1.65-1.7.1-2.83-.35-3.4-1.35l-.65-1.05-5.5-1.55c-.8-.17-1.4-.6-1.8-1.3-.4-.67-.5-1.38-.3-2.15l.05-.1.1-.25.15-.35c.23-.43.58-.8,1.05-1.1.7-.37,1.43-.45,2.2-.25L2.35,5.95c-.37-.63-.45-1.3-.25-2l.1-.2" fill="#ece3ce"/><path d="M26.65,16.35c.57,1.4.27,3.02-.9,4.85-1.03,1.73-2.65,3.23-4.85,4.5-2.17,1.23-4.22,1.87-6.15,1.9h-.1c-2.63.13-4.37-.65-5.2-2.35l-.15-.3-4.8-1.35h.15c-1.4-.3-2.43-1.05-3.1-2.25v.05c-.7-1.17-.87-2.4-.5-3.7l.05-.25.45.95v-.05c.67,1.2,1.7,1.95,3.1,2.25h-.15l4.8,1.35.15.3c.83,1.7,2.57,2.48,5.2,2.35h.1c1.93-.03,3.98-.67,6.15-1.9,2.2-1.27,3.82-2.77,4.85-4.5l.9-1.85M2.15,12.6l-1.5-2.65C-.02,8.82-.17,7.63.2,6.4l.1-.25.35.8,2.7,4.7-.15.1c-.4.23-.75.52-1.05.85"/></g></svg>
''';
SVGUIAdventurePack[CSVGCursorHandBlue] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 26.92 27.61"><g id="Calque_1-2"><path
d="M3.3,2.4c-.53.3-.9.75-1.1,1.35l-.1.2c-.2.7-.12,1.37.25,2l4.15,7.2c-.77-.2-1.5-.12-2.2.25-.47.3-.82.67-1.05,1.1l-.15.35-.1.25-.05.1c-.2.77-.1,1.48.3,2.15.4.7,1,1.13,1.8,1.3l5.5,1.55.65,1.05c.57,1,1.7,1.45,3.4,1.35,1.67-.03,3.43-.58,5.3-1.65,1.87-1.07,3.25-2.33,4.15-3.8.87-1.4,1.02-2.6.45-3.6l-4.7-8.1c-.57-.97-1.68-1.43-3.35-1.4-1.7.07-3.48.63-5.35,1.7l-1.6,1.1-.4.3-2.2-3.85c-.37-.63-.9-1.03-1.6-1.2-.7-.17-1.35-.08-1.95.25l-.05.05M.3,6.15c-.33-.9-.37-1.82-.1-2.75.3-1.13.93-2,1.9-2.6l.3-.2C3.43,0,4.56-.15,5.8.15c1.23.3,2.18,1.02,2.85,2.15l1.1,1.95.4-.25-.05.05c2.2-1.27,4.3-1.93,6.3-2,2.6-.03,4.32.77,5.15,2.4l4.7,8.1v.05c.73,1.1.87,2.35.4,3.75l-.9,1.85c-1.03,1.73-2.65,3.23-4.85,4.5-2.17,1.23-4.22,1.87-6.15,1.9h-.1c-2.63.13-4.37-.65-5.2-2.35l-.15-.3-4.8-1.35h.15c-1.4-.3-2.43-1.05-3.1-2.25v.05l-.45-.95c-.3-.9-.32-1.82-.05-2.75l.1-.4c.2-.67.53-1.23,1-1.7.3-.33.65-.62,1.05-.85l.15-.1L.65,6.95l-.35-.8" fill="#707483"/><path
d="M3.3,2.4l.05-.05c.6-.33,1.25-.42,1.95-.25.7.17,1.23.57,1.6,1.2l2.2,3.85.4-.3,1.6-1.1c1.87-1.07,3.65-1.63,5.35-1.7,1.67-.03,2.78.43,3.35,1.4l4.7,8.1c.57,1,.42,2.2-.45,3.6-.9,1.47-2.28,2.73-4.15,3.8-1.87,1.07-3.63,1.62-5.3,1.65-1.7.1-2.83-.35-3.4-1.35l-.65-1.05-5.5-1.55c-.8-.17-1.4-.6-1.8-1.3-.4-.67-.5-1.38-.3-2.15l.05-.1.1-.25.15-.35c.23-.43.58-.8,1.05-1.1.7-.37,1.43-.45,2.2-.25L2.35,5.95c-.37-.63-.45-1.3-.25-2l.1-.2c.2-.6.57-1.05,1.1-1.35" fill="#9b9dad"/><path d="M26.65,16.35c.57,1.4.27,3.02-.9,4.85-1.03,1.73-2.65,3.23-4.85,4.5-2.17,1.23-4.22,1.87-6.15,1.9h-.1c-2.63.13-4.37-.65-5.2-2.35l-.15-.3-4.8-1.35h.15c-1.4-.3-2.43-1.05-3.1-2.25v.05c-.7-1.17-.87-2.4-.5-3.7l.05-.25.45.95v-.05c.67,1.2,1.7,1.95,3.1,2.25h-.15l4.8,1.35.15.3c.83,1.7,2.57,2.48,5.2,2.35h.1c1.93-.03,3.98-.67,6.15-1.9,2.2-1.27,3.82-2.77,4.85-4.5l.9-1.85M2.15,12.6l-1.5-2.65C-.02,8.82-.17,7.63.2,6.4l.1-.25.35.8,2.7,4.7-.15.1c-.4.23-.75.52-1.05.85"/></g></svg>
''';
SVGUIAdventurePack[CSVGCursorHandGrey] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 26.92 27.61"><g id="Calque_1-2"><path
d="M.3,6.15c-.33-.9-.37-1.82-.1-2.75.3-1.13.93-2,1.9-2.6l.3-.2C3.43,0,4.56-.15,5.8.15s2.18,1.02,2.85,2.15l1.1,1.95.4-.25-.05.05c2.2-1.27,4.3-1.93,6.3-2,2.6-.03,4.32.77,5.15,2.4l4.7,8.1v.05c.73,1.1.87,2.35.4,3.75l-.9,1.85c-1.03,1.73-2.65,3.23-4.85,4.5-2.17,1.23-4.22,1.87-6.15,1.9h-.1c-2.63.13-4.37-.65-5.2-2.35l-.15-.3-4.8-1.35h.15c-1.4-.3-2.43-1.05-3.1-2.25v.05l-.45-.95c-.3-.9-.32-1.82-.05-2.75l.1-.4c.2-.67.53-1.23,1-1.7l1.05-.85.15-.1L.65,6.95l-.35-.8M3.3,2.4c-.53.3-.9.75-1.1,1.35l-.1.2c-.2.7-.12,1.37.25,2l4.15,7.2c-.77-.2-1.5-.12-2.2.25-.47.3-.82.67-1.05,1.1l-.15.35-.1.25-.05.1c-.2.77-.1,1.48.3,2.15.4.7,1,1.13,1.8,1.3l5.5,1.55.65,1.05c.57,1,1.7,1.45,3.4,1.35,1.67-.03,3.43-.58,5.3-1.65,1.87-1.07,3.25-2.33,4.15-3.8.87-1.4,1.02-2.6.45-3.6l-4.7-8.1c-.57-.97-1.68-1.43-3.35-1.4-1.7.07-3.48.63-5.35,1.7l-1.6,1.1-.4.3-2.2-3.85c-.37-.63-.9-1.03-1.6-1.2-.7-.17-1.35-.08-1.95.25l-.05.05" fill="#a1a1a1"/><path
d="M3.3,2.4l.05-.05c.6-.33,1.25-.42,1.95-.25.7.17,1.23.57,1.6,1.2l2.2,3.85.4-.3,1.6-1.1c1.87-1.07,3.65-1.63,5.35-1.7,1.67-.03,2.78.43,3.35,1.4l4.7,8.1c.57,1,.42,2.2-.45,3.6-.9,1.47-2.28,2.73-4.15,3.8-1.87,1.07-3.63,1.62-5.3,1.65-1.7.1-2.83-.35-3.4-1.35l-.65-1.05-5.5-1.55c-.8-.17-1.4-.6-1.8-1.3-.4-.67-.5-1.38-.3-2.15l.05-.1.1-.25.15-.35c.23-.43.58-.8,1.05-1.1.7-.37,1.43-.45,2.2-.25L2.35,5.95c-.37-.63-.45-1.3-.25-2l.1-.2c.2-.6.57-1.05,1.1-1.35" fill="#e5e5e5"/><path d="M26.65,16.35c.57,1.4.27,3.02-.9,4.85-1.03,1.73-2.65,3.23-4.85,4.5-2.17,1.23-4.22,1.87-6.15,1.9h-.1c-2.63.13-4.37-.65-5.2-2.35l-.15-.3-4.8-1.35h.15c-1.4-.3-2.43-1.05-3.1-2.25v.05c-.7-1.17-.87-2.4-.5-3.7l.05-.25.45.95v-.05c.67,1.2,1.7,1.95,3.1,2.25h-.15l4.8,1.35.15.3c.83,1.7,2.57,2.48,5.2,2.35h.1c1.93-.03,3.98-.67,6.15-1.9,2.2-1.27,3.82-2.77,4.85-4.5l.9-1.85M2.15,12.6l-1.5-2.65C-.02,8.82-.17,7.63.2,6.4l.1-.25.35.8,2.7,4.7-.15.1-1.05.85"/></g></svg>
''';
SVGUIAdventurePack[CSVGCursorSwordBronze] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 34.1 37"><g id="Calque_1-2"><path d="M.45,3.7L.1,2.45C-.06,1.95-.03,1.48.2,1.05.4.62.72.3,1.15.1l1.4-.1,11.25,3c.5.1.88.38,1.15.85l8.55,13.45-1.45,1.45L13.25,4.9,2,1.9l3.05,11.25,13.85,8.75-1.45,1.45L4,14.85c-.47-.27-.75-.65-.85-1.15L.45,3.7" fill="#87623f"/><path d="M.45,3.7l2.7,10c.1.5.38.88.85,1.15l13.45,8.5-1.6,1.65-.2.2-11.65-7.35c-.47-.27-.75-.65-.85-1.15L.1,5.45c-.17-.5-.13-.97.1-1.4l.25-.35M29.85,20.65l.1.1c.37.37.55.83.55,1.4,0,.53-.18,1-.55,1.4l-.05.1-1.5-1.5,1.45-1.5M33.45,28.9l.1.1c.37.37.55.83.55,1.4s-.18,1.05-.55,1.45l-4.6,4.6c-.4.37-.88.55-1.45.55s-1.03-.18-1.4-.55l-1.3-1.3c-.4-.4-.6-.88-.6-1.45l.05-.4-2-2-1.6,1.55c-.4.37-.87.55-1.4.55-.57,0-1.03-.18-1.4-.55l-2-2c-.4-.4-.6-.88-.6-1.45s.2-1.03.6-1.4l.1-.05,1.9,1.9c.37.37.83.55,1.4.55.53,0,1-.18,1.4-.55l1.6-1.55,2,2-.05.4c0,.57.2,1.05.6,1.45l1.3,1.3c.37.37.83.55,1.4.55s1.05-.18,1.45-.55l4.5-4.55"/><path
d="M18.9,21.9L5.05,13.15,2,1.9l19.9,19.9-1.25,1.2-1.75-1.1" fill="#bd8a5a"/><path d="M18.9,21.9l1.75,1.1-3.4,3.4,2,2,3-2.95,4.6,4.6-.65.65,1.3,1.3,4.6-4.6-1.3-1.3-.65.65-4.6-4.6,2.95-3-2-2-3.35,3.35-1.1-1.75,1.45-1.45,1.6-1.55.35-.3c.3-.2.65-.3,1.05-.3l1.1.3.35.3,2,2c.37.37.55.83.55,1.4,0,.53-.18,1-.55,1.4l-.1.1-1.45,1.5,1.5,1.5.5.5.4-.05c.57,0,1.05.2,1.45.6l1.3,1.3c.37.37.55.83.55,1.4s-.18,1.05-.55,1.45l-.1.05-4.5,4.55c-.4.37-.88.55-1.45.55s-1.03-.18-1.4-.55l-1.3-1.3c-.4-.4-.6-.88-.6-1.45l.05-.4-2-2-1.6,1.55c-.4.37-.87.55-1.4.55-.57,0-1.03-.18-1.4-.55l-1.9-1.9-.1-.1c-.4-.4-.6-.88-.6-1.45,0-.47.13-.87.4-1.2l.2-.2,1.6-1.65,1.45-1.45" fill="#6b6b6b"/><path d="M20.65,23l1.25-1.2,1.25-1.3,3.35-3.35,2,2-2.95,3-3.3,3.3-3,2.95-2-2,3.4-3.4M30.15,26.75l.65-.65,1.3,1.3-4.6,4.6-1.3-1.3.65-.65,3.3-3.3" fill="#a8a8a8"/><path d="M2,1.9l11.25,3,8.8,13.85,1.1,1.75-1.25,1.3L2,1.9" fill="#c99869"/><path d="M22.25,25.45l3.3-3.3,4.6,4.6-3.3,3.3-4.6-4.6" fill="#666"/></g></svg>
''';
SVGUIAdventurePack[CSVGCursorSwordGold] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 34.1 37"><g id="Calque_1-2"><path d="M.45,3.7L.1,2.45C-.06,1.95-.03,1.48.2,1.05.4.62.72.3,1.15.1l1.4-.1,11.25,3c.5.1.88.38,1.15.85l8.55,13.45-1.45,1.45L13.25,4.9,2,1.9l3.05,11.25,13.85,8.75-1.45,1.45L4,14.85c-.47-.27-.75-.65-.85-1.15L.45,3.7" fill="#9c7f0e"/><path d="M.45,3.7l2.7,10c.1.5.38.88.85,1.15l13.45,8.5-1.6,1.65-.2.2-11.65-7.35c-.47-.27-.75-.65-.85-1.15L.1,5.45c-.17-.5-.13-.97.1-1.4l.25-.35M29.85,20.65l.1.1c.37.37.55.83.55,1.4,0,.53-.18,1-.55,1.4l-.05.1-1.5-1.5,1.45-1.5M33.45,28.9l.1.1c.37.37.55.83.55,1.4s-.18,1.05-.55,1.45l-4.6,4.6c-.4.37-.88.55-1.45.55s-1.03-.18-1.4-.55l-1.3-1.3c-.4-.4-.6-.88-.6-1.45l.05-.4-2-2-1.6,1.55c-.4.37-.87.55-1.4.55-.57,0-1.03-.18-1.4-.55l-2-2c-.4-.4-.6-.88-.6-1.45s.2-1.03.6-1.4l.1-.05,1.9,1.9c.37.37.83.55,1.4.55.53,0,1-.18,1.4-.55l1.6-1.55,2,2-.05.4c0,.57.2,1.05.6,1.45l1.3,1.3c.37.37.83.55,1.4.55s1.05-.18,1.45-.55l4.5-4.55"/><path
d="M18.9,21.9L5.05,13.15,2,1.9l19.9,19.9-1.25,1.2-1.75-1.1" fill="#e2b712"/><path d="M18.9,21.9l1.75,1.1-3.4,3.4,2,2,3-2.95,4.6,4.6-.65.65,1.3,1.3,4.6-4.6-1.3-1.3-.65.65-4.6-4.6,2.95-3-2-2-3.35,3.35-1.1-1.75,1.45-1.45,1.6-1.55.35-.3c.3-.2.65-.3,1.05-.3s.77.1,1.1.3l.35.3,2,2c.37.37.55.83.55,1.4,0,.53-.18,1-.55,1.4l-.1.1-1.45,1.5,1.5,1.5.5.5.4-.05c.57,0,1.05.2,1.45.6l1.3,1.3c.37.37.55.83.55,1.4s-.18,1.05-.55,1.45l-.1.05-4.5,4.55c-.4.37-.88.55-1.45.55s-1.03-.18-1.4-.55l-1.3-1.3c-.4-.4-.6-.88-.6-1.45l.05-.4-2-2-1.6,1.55c-.4.37-.87.55-1.4.55-.57,0-1.03-.18-1.4-.55l-1.9-1.9-.1-.1c-.4-.4-.6-.88-.6-1.45,0-.47.13-.87.4-1.2l.2-.2,1.6-1.65,1.45-1.45" fill="#6b6b6b"/><path d="M21.9,21.8l1.25-1.3,3.35-3.35,2,2-2.95,3-3.3,3.3-3,2.95-2-2,3.4-3.4,1.25-1.2M30.15,26.75l.65-.65,1.3,1.3-4.6,4.6-1.3-1.3.65-.65,3.3-3.3" fill="#a8a8a8"/><path d="M30.15,26.75l-3.3,3.3-4.6-4.6,3.3-3.3,4.6,4.6" fill="#666"/><path d="M2,1.9l11.25,3,8.8,13.85,1.1,1.75-1.25,1.3L2,1.9" fill="#f5c614"/></g></svg>
''';
SVGUIAdventurePack[CSVGCursorSwordSilver] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 34.1 37"><g id="Calque_1-2"><path d="M.45,3.7L.1,2.45C-.06,1.95-.03,1.48.2,1.05.4.62.72.3,1.15.1l1.4-.1,11.25,3c.5.1.88.38,1.15.85l8.55,13.45,1.6-1.55.35-.3c.3-.2.65-.3,1.05-.3s.77.1,1.1.3l.35.3,2,2c.37.37.55.83.55,1.4,0,.53-.18,1-.55,1.4l-.1.1-1.45,1.5,1.5,1.5.5.5.4-.05c.57,0,1.05.2,1.45.6l1.3,1.3c.37.37.55.83.55,1.4s-.18,1.05-.55,1.45l-.1.05-4.5,4.55c-.4.37-.88.55-1.45.55s-1.03-.18-1.4-.55l-1.3-1.3c-.4-.4-.6-.88-.6-1.45l.05-.4-2-2-1.6,1.55c-.4.37-.87.55-1.4.55-.57,0-1.03-.18-1.4-.55l-1.9-1.9-.1-.1c-.4-.4-.6-.88-.6-1.45,0-.47.13-.87.4-1.2l.2-.2,1.6-1.65L4,14.85c-.47-.27-.75-.65-.85-1.15L.45,3.7M25.55,22.15l2.95-3-2-2-3.35,3.35L13.25,4.9,2,1.9l3.05,11.25,15.6,9.85-3.4,3.4,2,2,3-2.95,4.6,4.6-.65.65,1.3,1.3,4.6-4.6-1.3-1.3-.65.65-4.6-4.6" fill="#6b6b6b"/><path
d="M25.55,22.15l-3.3,3.3-3,2.95-2-2,3.4-3.4,1.25-1.2,1.25-1.3,3.35-3.35,2,2-2.95,3M30.15,26.75l.65-.65,1.3,1.3-4.6,4.6-1.3-1.3.65-.65,3.3-3.3" fill="#a8a8a8"/><path d="M29.85,20.65l.1.1c.37.37.55.83.55,1.4,0,.53-.18,1-.55,1.4l-.05.1-1.5-1.5,1.45-1.5M33.45,28.9l.1.1c.37.37.55.83.55,1.4s-.18,1.05-.55,1.45l-4.6,4.6c-.4.37-.88.55-1.45.55s-1.03-.18-1.4-.55l-1.3-1.3c-.4-.4-.6-.88-.6-1.45l.05-.4-2-2-1.6,1.55c-.4.37-.87.55-1.4.55-.57,0-1.03-.18-1.4-.55l-2-2c-.4-.4-.6-.88-.6-1.45s.2-1.03.6-1.4l.1-.05,1.9,1.9c.37.37.83.55,1.4.55.53,0,1-.18,1.4-.55l1.6-1.55,2,2-.05.4c0,.57.2,1.05.6,1.45l1.3,1.3c.37.37.83.55,1.4.55s1.05-.18,1.45-.55l4.5-4.55M15.65,25.2l-11.65-7.35c-.47-.27-.75-.65-.85-1.15L.1,5.45c-.17-.5-.13-.97.1-1.4l.25-.35,2.7,10c.1.5.38.88.85,1.15l13.45,8.5-1.6,1.65-.2.2"/><path d="M20.65,23L5.05,13.15,2,1.9l19.9,19.9-1.25,1.2" fill="#e0e0e0"/><path d="M25.55,22.15l4.6,4.6-3.3,3.3-4.6-4.6,3.3-3.3" fill="#666"/><path d="M2,1.9l11.25,3,9.9,15.6-1.25,1.3L2,1.9" fill="#fff"/></g></svg>
''';
SVGUIAdventurePack[CSVGIconCheckBeige] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 15.75 15"><g id="Calque_1-2"><path d="M11.55.05l4.1,2.7.1.15-.05.2L6.45,14.9l-.1.1-.15-.05-.15-.05L.05,6.45l-.05-.2.1-.15,4.1-2.25.25-.05.15.1,1.7,2.5L11.2.1l.2-.1.15.05" fill="#e9e0c7"/></g></svg>
''';
SVGUIAdventurePack[CSVGIconCheckBlue] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 15.75 15"><g id="Calque_1-2"><path d="M15.7,3.1L6.45,14.9l-.1.1-.15-.05-.15-.05L.05,6.45l-.05-.2.1-.15,4.1-2.25.25-.05.15.1,1.7,2.5L11.2.1l.2-.1.15.05,4.1,2.7.1.15-.05.2" fill="#d2d8e7"/></g></svg>
''';
SVGUIAdventurePack[CSVGIconCheckBronze] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 15.75 15"><g id="Calque_1-2"><path d="M0,6.25l.1-.15,4.1-2.25.25-.05.15.1,1.7,2.5L11.2.1l.2-.1.15.05,4.1,2.7.1.15-.05.2L6.45,14.9l-.1.1-.15-.05-.15-.05L.05,6.45l-.05-.2" fill="#c9a37d"/></g></svg>
''';
SVGUIAdventurePack[CSVGIconCheckGrey] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 15.75 15"><g id="Calque_1-2"><path d="M11.4,0l.15.05,4.1,2.7.1.15-.05.2L6.45,14.9l-.1.1-.15-.05-.15-.05L.05,6.45l-.05-.2.1-.15,4.1-2.25.25-.05.15.1,1.7,2.5L11.2.1l.2-.1" fill="#989898"/></g></svg>
''';
SVGUIAdventurePack[CSVGIconCircleBeige] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16.3 16.25"><g id="Calque_1-2"><path d="M2.35,2.35C3.95.78,5.88,0,8.15,0s4.15.78,5.75,2.35c1.6,1.6,2.4,3.53,2.4,5.8s-.8,4.13-2.4,5.7c-1.6,1.6-3.52,2.4-5.75,2.4s-4.2-.8-5.8-2.4c-1.57-1.57-2.35-3.47-2.35-5.7S.78,3.95,2.35,2.35" fill="#e9e0c7"/></g></svg>
''';
SVGUIAdventurePack[CSVGIconCircleBlue] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16.3 16.25"><g id="Calque_1-2"><path d="M8.15,0c2.23,0,4.15.78,5.75,2.35,1.6,1.6,2.4,3.53,2.4,5.8s-.8,4.13-2.4,5.7c-1.6,1.6-3.52,2.4-5.75,2.4s-4.2-.8-5.8-2.4c-1.57-1.57-2.35-3.47-2.35-5.7S.78,3.95,2.35,2.35C3.95.78,5.88,0,8.15,0" fill="#d2d8e7"/></g></svg>
''';
SVGUIAdventurePack[CSVGIconCircleBrown] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16.3 16.25"><g id="Calque_1-2"><path d="M0,8.15C0,5.88.78,3.95,2.35,2.35,3.95.78,5.88,0,8.15,0s4.15.78,5.75,2.35c1.6,1.6,2.4,3.53,2.4,5.8s-.8,4.13-2.4,5.7c-1.6,1.6-3.52,2.4-5.75,2.4s-4.2-.8-5.8-2.4c-1.57-1.57-2.35-3.47-2.35-5.7" fill="#c9a37d"/></g></svg>
''';
SVGUIAdventurePack[CSVGIconCircleGrey] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16.3 16.25"><g id="Calque_1-2"><path d="M16.3,8.15c0,2.23-.8,4.13-2.4,5.7-1.6,1.6-3.52,2.4-5.75,2.4s-4.2-.8-5.8-2.4c-1.57-1.57-2.35-3.47-2.35-5.7S.78,3.95,2.35,2.35C3.95.78,5.88,0,8.15,0s4.15.78,5.75,2.35c1.6,1.6,2.4,3.53,2.4,5.8" fill="#989898"/></g></svg>
''';
SVGUIAdventurePack[CSVGIconCrossBeige] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 15 15"><g id="Calque_1-2"><path d="M2.72.15c.17-.2.37-.2.6,0l4.15,4.2L11.68.15c.23-.2.45-.2.65,0l2.5,2.55c.23.23.23.45,0,.65l-4.15,4.2,4.15,4.15c.23.2.23.42,0,.65l-2.5,2.5c-.2.2-.42.2-.65,0l-4.15-4.2-4.2,4.2c-.23.2-.45.2-.65,0L.18,12.35c-.23-.23-.23-.45,0-.65l4.2-4.15L.18,3.35c-.2-.2-.2-.42,0-.65L2.72.15" fill="#e9e0c7"/></g></svg>
''';
SVGUIAdventurePack[CSVGIconCrossBlue] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 15 15"><g id="Calque_1-2"><path d="M2.72.15c.17-.2.37-.2.6,0l4.15,4.2L11.68.15c.23-.2.45-.2.65,0l2.5,2.55c.23.23.23.45,0,.65l-4.15,4.2,4.15,4.15c.23.2.23.42,0,.65l-2.5,2.5c-.2.2-.42.2-.65,0l-4.15-4.2-4.2,4.2c-.23.2-.45.2-.65,0L.18,12.35c-.23-.23-.23-.45,0-.65l4.2-4.15L.18,3.35c-.2-.2-.2-.42,0-.65L2.72.15" fill="#d2d8e7"/></g></svg>
''';
SVGUIAdventurePack[CSVGIconCrossBrown] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 15 15"><g id="Calque_1-2"><path d="M.18,2.7L2.72.15c.17-.2.37-.2.6,0l4.15,4.2L11.68.15c.23-.2.45-.2.65,0l2.5,2.55c.23.23.23.45,0,.65l-4.15,4.2,4.15,4.15c.23.2.23.42,0,.65l-2.5,2.5c-.2.2-.42.2-.65,0l-4.15-4.2-4.2,4.2c-.23.2-.45.2-.65,0L.18,12.35c-.23-.23-.23-.45,0-.65l4.2-4.15L.18,3.35c-.2-.2-.2-.42,0-.65" fill="#c9a37d"/></g></svg>
''';
SVGUIAdventurePack[CSVGIconCrossGrey] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 15 15"><g id="Calque_1-2"><path d="M2.72.15c.17-.2.37-.2.6,0l4.15,4.2L11.68.15c.23-.2.45-.2.65,0l2.5,2.55c.23.23.23.45,0,.65l-4.15,4.2,4.15,4.15c.23.2.23.42,0,.65l-2.5,2.5c-.2.2-.42.2-.65,0l-4.15-4.2-4.2,4.2c-.23.2-.45.2-.65,0L.18,12.35c-.23-.23-.23-.45,0-.65l4.2-4.15L.18,3.35c-.2-.2-.2-.42,0-.65L2.72.15" fill="#989898"/></g></svg>
''';
SVGUIAdventurePack[CSVGPanelBeige] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100"><g id="Calque_1-2"><path d="M4,68.25l1.75,1.75-1.75,1.7v4.95l2.8,2.8-2.8,2.8v10.7c0,2.03,1.02,3.05,3.05,3.05h8.8l2.2-2.2,2.2,2.2h72.65c2.07,0,3.1-1.02,3.1-3.05v-5.7l-4.1-4.1,4.1-4.15V23.85l-3.1-3.1,3.1-3.15V7.05c0-2.03-1.03-3.05-3.1-3.05h-38.55l-2.85,2.9-2.9-2.9H7.05c-2.03,0-3.05,1.02-3.05,3.05v61.2M2,92.95V7.05c0-3.37,1.68-5.05,5.05-5.05h85.85c3.4,0,5.1,1.68,5.1,5.05v85.9c0,3.37-1.7,5.05-5.1,5.05H7.05c-3.37,0-5.05-1.68-5.05-5.05" fill="#b1a077"/><path d="M4,68.25V7.05c0-2.03,1.02-3.05,3.05-3.05h41.55l2.9,2.9,2.85-2.9h38.55c2.07,0,3.1,1.02,3.1,3.05v10.55l-3.1,3.15,3.1,3.1v55.15l-4.1,4.15,4.1,4.1v5.7c0,2.03-1.03,3.05-3.1,3.05H20.25l-2.2-2.2-2.2,2.2H7.05c-2.03,0-3.05-1.02-3.05-3.05v-10.7l2.8-2.8-2.8-2.8v-4.95l1.75-1.7-1.75-1.75" fill="#d3bf8f"/><path
d="M2,92.95c0,3.37,1.68,5.05,5.05,5.05h85.85c3.4,0,5.1-1.68,5.1-5.05V7.05c0-3.37-1.7-5.05-5.1-5.05H7.05c-3.37,0-5.05,1.68-5.05,5.05v85.9M0,92.95V7.05C0,2.35,2.35,0,7.05,0h85.85c2.37,0,4.12.62,5.25,1.85,1.23,1.13,1.85,2.87,1.85,5.2v85.9c0,2.33-.62,4.07-1.85,5.2-1.13,1.23-2.88,1.85-5.25,1.85H7.05c-4.7,0-7.05-2.35-7.05-7.05" fill="#d9cdaf"/></g></svg>
''';
SVGUIAdventurePack[CSVGPanelBeigeLight] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100"><g id="Calque_1-2"><path d="M7.05,2h85.85c3.4,0,5.1,1.68,5.1,5.05v85.9c0,3.37-1.7,5.05-5.1,5.05H7.05c-3.37,0-5.05-1.68-5.05-5.05V7.05c0-3.37,1.68-5.05,5.05-5.05M7.05,4c-2.03,0-3.05,1.02-3.05,3.05v61.2l1.75,1.75-1.75,1.7v4.95l2.8,2.8-2.8,2.8v10.7c0,2.03,1.02,3.05,3.05,3.05h8.8l2.2-2.2,2.2,2.2h72.65c2.07,0,3.1-1.02,3.1-3.05v-5.7l-4.1-4.1,4.1-4.15V23.85l-3.1-3.1,3.1-3.15V7.05c0-2.03-1.03-3.05-3.1-3.05h-38.55l-2.85,2.9-2.9-2.9H7.05" fill="#faf2e1"/><path d="M7.05,4h41.55l2.9,2.9,2.85-2.9h38.55c2.07,0,3.1,1.02,3.1,3.05v10.55l-3.1,3.15,3.1,3.1v55.15l-4.1,4.15,4.1,4.1v5.7c0,2.03-1.03,3.05-3.1,3.05H20.25l-2.2-2.2-2.2,2.2H7.05c-2.03,0-3.05-1.02-3.05-3.05v-10.7l2.8-2.8-2.8-2.8v-4.95l1.75-1.7-1.75-1.75V7.05c0-2.03,1.02-3.05,3.05-3.05" fill="#ece3ce"/><path
d="M7.05,0h85.85c2.37,0,4.12.62,5.25,1.85,1.23,1.13,1.85,2.87,1.85,5.2v85.9c0,2.33-.62,4.07-1.85,5.2-1.13,1.23-2.88,1.85-5.25,1.85H7.05c-4.7,0-7.05-2.35-7.05-7.05V7.05C0,2.35,2.35,0,7.05,0M7.05,2c-3.37,0-5.05,1.68-5.05,5.05v85.9c0,3.37,1.68,5.05,5.05,5.05h85.85c3.4,0,5.1-1.68,5.1-5.05V7.05c0-3.37-1.7-5.05-5.1-5.05H7.05" fill="#d3bf8f"/></g></svg>
''';
SVGUIAdventurePack[CSVGPanelBlue] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100"><g id="Calque_1-2"><path d="M51.5,6.9l-2.9-2.9H7.05c-2.03,0-3.05,1.02-3.05,3.05v61.2l1.75,1.75-1.75,1.7v4.95l2.8,2.8-2.8,2.8v10.7c0,2.03,1.02,3.05,3.05,3.05h8.8l2.2-2.2,2.2,2.2h72.65c2.07,0,3.1-1.02,3.1-3.05v-5.7l-4.1-4.1,4.1-4.15V23.85l-3.1-3.1,3.1-3.15V7.05c0-2.03-1.03-3.05-3.1-3.05h-38.55l-2.85,2.9M98,7.05v85.9c0,3.37-1.7,5.05-5.1,5.05H7.05c-3.37,0-5.05-1.68-5.05-5.05V7.05c0-3.37,1.68-5.05,5.05-5.05h85.85c3.4,0,5.1,1.68,5.1,5.05" fill="#9b9dad"/><path d="M51.5,6.9l2.85-2.9h38.55c2.07,0,3.1,1.02,3.1,3.05v10.55l-3.1,3.15,3.1,3.1v55.15l-4.1,4.15,4.1,4.1v5.7c0,2.03-1.03,3.05-3.1,3.05H20.25l-2.2-2.2-2.2,2.2H7.05c-2.03,0-3.05-1.02-3.05-3.05v-10.7l2.8-2.8-2.8-2.8v-4.95l1.75-1.7-1.75-1.75V7.05c0-2.03,1.02-3.05,3.05-3.05h41.55l2.9,2.9" fill="#838796"/><path
d="M100,7.05v85.9c0,2.33-.62,4.07-1.85,5.2-1.13,1.23-2.88,1.85-5.25,1.85H7.05c-4.7,0-7.05-2.35-7.05-7.05V7.05C0,2.35,2.35,0,7.05,0h85.85c2.37,0,4.12.62,5.25,1.85,1.23,1.13,1.85,2.87,1.85,5.2M98,7.05c0-3.37-1.7-5.05-5.1-5.05H7.05c-3.37,0-5.05,1.68-5.05,5.05v85.9c0,3.37,1.68,5.05,5.05,5.05h85.85c3.4,0,5.1-1.68,5.1-5.05V7.05" fill="#616374"/></g></svg>
''';
SVGUIAdventurePack[CSVGPanelBrown] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100"><g id="Calque_1-2"><path d="M54.35,4l-2.85,2.9-2.9-2.9H7.05c-2.03,0-3.05,1.02-3.05,3.05v61.2l1.75,1.75-1.75,1.7v4.95l2.8,2.8-2.8,2.8v10.7c0,2.03,1.02,3.05,3.05,3.05h8.8l2.2-2.2,2.2,2.2h72.65c2.07,0,3.1-1.02,3.1-3.05v-5.7l-4.1-4.1,4.1-4.15V23.85l-3.1-3.1,3.1-3.15V7.05c0-2.03-1.03-3.05-3.1-3.05h-38.55M2,92.95V7.05c0-3.37,1.68-5.05,5.05-5.05h85.85c3.4,0,5.1,1.68,5.1,5.05v85.9c0,3.37-1.7,5.05-5.1,5.05H7.05c-3.37,0-5.05-1.68-5.05-5.05" fill="#b7916a"/><path d="M54.35,4h38.55c2.07,0,3.1,1.02,3.1,3.05v10.55l-3.1,3.15,3.1,3.1v55.15l-4.1,4.15,4.1,4.1v5.7c0,2.03-1.03,3.05-3.1,3.05H20.25l-2.2-2.2-2.2,2.2H7.05c-2.03,0-3.05-1.02-3.05-3.05v-10.7l2.8-2.8-2.8-2.8v-4.95l1.75-1.7-1.75-1.75V7.05c0-2.03,1.02-3.05,3.05-3.05h41.55l2.9,2.9,2.85-2.9" fill="#97714a"/><path
d="M98.15,1.85c1.23,1.13,1.85,2.87,1.85,5.2v85.9c0,2.33-.62,4.07-1.85,5.2-1.13,1.23-2.88,1.85-5.25,1.85H7.05c-4.7,0-7.05-2.35-7.05-7.05V7.05C0,2.35,2.35,0,7.05,0h85.85c2.37,0,4.12.62,5.25,1.85M2,92.95c0,3.37,1.68,5.05,5.05,5.05h85.85c3.4,0,5.1-1.68,5.1-5.05V7.05c0-3.37-1.7-5.05-5.1-5.05H7.05c-3.37,0-5.05,1.68-5.05,5.05v85.9" fill="#864"/></g></svg>
''';
SVGUIAdventurePack[CSVGPanelInsetBeige] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 92 94"><g id="Calque_1-2"><path d="M92,4.95c-.03-1.97-1.07-2.95-3.1-2.95h-38.55l-2.85,2.9-2.9-2.9H3.05C1.05,2,.03,2.98,0,4.95v-1.9C0,1.02,1.02,0,3.05,0h41.55l2.9,2.9,2.85-2.9h38.55c2.07,0,3.1,1.02,3.1,3.05v1.9M.75,67l1,1-1.75,1.7v-2l.75-.7M1.8,76.45l1,1-2.8,2.8v-2l1.8-1.8M92,85.25l-4.1-4.1,1-1,3.1,3.1v2M92,21.85l-3.1-3.1,1-1,2.1,2.1v2"/><path d="M92,21.85v55.15l-3.1,3.15-1,1,4.1,4.1v5.7c0,2.03-1.03,3.05-3.1,3.05H16.25l-2.2-2.2-2.2,2.2H3.05c-2.03,0-3.05-1.02-3.05-3.05v-10.7l2.8-2.8-1-1-1.8-1.8v-4.95l1.75-1.7-1-1-.75-.75V4.95c.03-1.97,1.05-2.95,3.05-2.95h41.55l2.9,2.9,2.85-2.9h38.55c2.03,0,3.07.98,3.1,2.95v10.65l-2.1,2.15-1,1,3.1,3.1" fill="#d3bf8f"/></g></svg>
''';
SVGUIAdventurePack[CSVGPanelInsetBeigeLight] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 92 94"><g id="Calque_1-2"><path d="M0,4.95v-1.9C0,1.02,1.02,0,3.05,0h41.55l2.9,2.9,2.85-2.9h38.55c2.07,0,3.1,1.02,3.1,3.05v1.9c-.03-1.97-1.07-2.95-3.1-2.95h-38.55l-2.85,2.9-2.9-2.9H3.05C1.05,2,.03,2.98,0,4.95M89.9,17.75l2.1,2.1v2l-3.1-3.1,1-1M88.9,80.15l3.1,3.1v2l-4.1-4.1,1-1M0,80.25v-2l1.8-1.8,1,1-2.8,2.8M0,69.7v-2l.75-.7,1,1-1.75,1.7"/><path d="M0,69.7l1.75-1.7-1-1-.75-.75V4.95c.03-1.97,1.05-2.95,3.05-2.95h41.55l2.9,2.9,2.85-2.9h38.55c2.03,0,3.07.98,3.1,2.95v10.65l-2.1,2.15-1,1,3.1,3.1v55.15l-3.1,3.15-1,1,4.1,4.1v5.7c0,2.03-1.03,3.05-3.1,3.05H16.25l-2.2-2.2-2.2,2.2H3.05c-2.03,0-3.05-1.02-3.05-3.05v-10.7l2.8-2.8-1-1-1.8-1.8v-4.95" fill="#ece3ce"/></g></svg>
''';
SVGUIAdventurePack[CSVGPanelInsetBlue] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 92 94"><g id="Calque_1-2"><path d="M0,4.95v-1.9C0,1.02,1.02,0,3.05,0h41.55l2.9,2.9,2.85-2.9h38.55c2.07,0,3.1,1.02,3.1,3.05v1.9c-.03-1.97-1.07-2.95-3.1-2.95h-38.55l-2.85,2.9-2.9-2.9H3.05C1.05,2,.03,2.98,0,4.95M89.9,17.75l2.1,2.1v2l-3.1-3.1,1-1M88.9,80.15l3.1,3.1v2l-4.1-4.1,1-1M0,80.25v-2l1.8-1.8,1,1-2.8,2.8M0,69.7v-2l.75-.7,1,1-1.75,1.7"/><path d="M0,69.7l1.75-1.7-1-1-.75-.75V4.95c.03-1.97,1.05-2.95,3.05-2.95h41.55l2.9,2.9,2.85-2.9h38.55c2.03,0,3.07.98,3.1,2.95v10.65l-2.1,2.15-1,1,3.1,3.1v55.15l-3.1,3.15-1,1,4.1,4.1v5.7c0,2.03-1.03,3.05-3.1,3.05H16.25l-2.2-2.2-2.2,2.2H3.05c-2.03,0-3.05-1.02-3.05-3.05v-10.7l2.8-2.8-1-1-1.8-1.8v-4.95" fill="#838796"/></g></svg>
''';
SVGUIAdventurePack[CSVGPanelInsetBrown] := '''
<?xml version="1.0" encoding="UTF-8"?><svg id="Calque_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 92 94"><g id="Calque_1-2"><path d="M92,4.95c-.03-1.97-1.07-2.95-3.1-2.95h-38.55l-2.85,2.9-2.9-2.9H3.05C1.05,2,.03,2.98,0,4.95v-1.9C0,1.02,1.02,0,3.05,0h41.55l2.9,2.9,2.85-2.9h38.55c2.07,0,3.1,1.02,3.1,3.05v1.9M.75,67l1,1-1.75,1.7v-2l.75-.7M1.8,76.45l1,1-2.8,2.8v-2l1.8-1.8M92,85.25l-4.1-4.1,1-1,3.1,3.1v2M92,21.85l-3.1-3.1,1-1,2.1,2.1v2"/><path d="M92,21.85v55.15l-3.1,3.15-1,1,4.1,4.1v5.7c0,2.03-1.03,3.05-3.1,3.05H16.25l-2.2-2.2-2.2,2.2H3.05c-2.03,0-3.05-1.02-3.05-3.05v-10.7l2.8-2.8-1-1-1.8-1.8v-4.95l1.75-1.7-1-1-.75-.75V4.95c.03-1.97,1.05-2.95,3.05-2.95h41.55l2.9,2.9,2.85-2.9h38.55c2.03,0,3.07.98,3.1,2.95v10.65l-2.1,2.15-1,1,3.1,3.1" fill="#97714a"/></g></svg>
''';

end.
