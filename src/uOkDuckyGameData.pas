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
/// File last update : 2025-05-01T17:27:06.000+02:00
/// Signature : 07df2138a011a2aba46f2324a66c8266f2d23514
/// ***************************************************************************
/// </summary>

unit uOkDuckyGameData;

interface

uses
  System.Classes,
  System.SysUtils,
  System.Messaging,
  uGameData;

type
  TNbBulletsChangedMessage = class(TMessage)
  private
    FNbBullets: int64;
  protected
  public
    property NbBullets: int64 read FNbBullets;
    constructor Create(const ANbBullets: int64);
    class procedure Broadcast(const ANbBullets: int64);
  end;

  TOkDuckyGameData = class(tgamedata)
  private const
    /// <summary>
    /// Version level of this class. It is used to check compatibility between
    /// the program and the files it saves or tries to load.
    /// </summary>
    COkDuckyGameDataVersion = 1;

  var
    FNbBullets: int64;
    procedure SetNbBullets(const Value: int64);
  protected
  public
    Property NbBullets: int64 read FNbBullets write SetNbBullets;
    class function DefaultGameData: tgamedata; override;
    class function Current: TOkDuckyGameData;
    procedure Clear; override;
    procedure InitGameScreen;
    constructor Create; override;
    procedure LoadFromStream(const AStream: TStream); override;
    procedure SaveToStream(const AStream: TStream); override;
  end;

implementation

uses
  uConsts;

var
  LGameData: TOkDuckyGameData;

  { TOkDuckyGameData }

procedure TOkDuckyGameData.Clear;
begin
  inherited;
  FNbBullets := CDefaultNbBullets;
  InitGameScreen;
end;

constructor TOkDuckyGameData.Create;
begin
  inherited;
  FNbBullets := 0;
end;

class function TOkDuckyGameData.Current: TOkDuckyGameData;
begin
  result := DefaultGameData as TOkDuckyGameData;
end;

class function TOkDuckyGameData.DefaultGameData: tgamedata;
begin
  if not assigned(LGameData) then
    LGameData := TOkDuckyGameData.Create;

  result := LGameData;
end;

procedure TOkDuckyGameData.InitGameScreen;
begin
  // TODO : Initialiser les données à l'écran (liste de canards, position, ...)
end;

procedure TOkDuckyGameData.LoadFromStream(const AStream: TStream);
var
  VersionNum: integer;
begin
  inherited;

  // Check if the game data file has a block version number.
  if (sizeof(VersionNum) <> AStream.read(VersionNum, sizeof(VersionNum))) then
    raise exception.Create('Wrong File format !');

  // Check if the program can open the game data.
  if (VersionNum > COkDuckyGameDataVersion) then
    raise exception.Create
      ('Can''t open this file. Please update the game before trying again.');

  if (VersionNum >= 1) then
  begin
    if (sizeof(FNbBullets) <> AStream.read(FNbBullets, sizeof(FNbBullets))) then
      raise exception.Create('Wrong File format !');
  end;

  FHasChanged := false;
end;

procedure TOkDuckyGameData.SaveToStream(const AStream: TStream);
var
  VersionNum: integer;
begin
  inherited;

  VersionNum := COkDuckyGameDataVersion;
  AStream.Write(VersionNum, sizeof(VersionNum));
  AStream.Write(FNbBullets, sizeof(FNbBullets));
  FHasChanged := false;
end;

procedure TOkDuckyGameData.SetNbBullets(const Value: int64);
begin
  if (FNbBullets <> Value) then
  begin
    FNbBullets := Value;
    FHasChanged := true;
    TNbBulletsChangedMessage.Broadcast(FNbBullets);
  end;
end;

{ TNbBulletsChangedMessage }

class procedure TNbBulletsChangedMessage.Broadcast(const ANbBullets: int64);
var
  LNbBullets: int64;
begin
  LNbBullets := ANbBullets;
  tthread.Queue(nil,
    procedure
    begin
      TMessageManager.DefaultManager.SendMessage(nil,
        TNbBulletsChangedMessage.Create(LNbBullets));
    end);
end;

constructor TNbBulletsChangedMessage.Create(const ANbBullets: int64);
begin
  inherited Create;
  FNbBullets := ANbBullets;
end;

initialization

LGameData := nil;

finalization

LGameData.free;

end.
