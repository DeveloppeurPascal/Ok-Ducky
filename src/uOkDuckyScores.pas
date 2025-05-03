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
/// File last update : 2025-05-03T17:29:08.000+02:00
/// Signature : ad368a51501c1819bd2d307772f33eac8bba1281
/// ***************************************************************************
/// </summary>

unit uOkDuckyScores;

interface

uses
  Gamolf.RTL.Scores;

Type
  TOkDuckyScores = class(TScoreList)
  private
  protected
  public
    class function Current: TOkDuckyScores;
  end;

implementation

uses
  uConsts;

var
  OkDuckyScores: TOkDuckyScores;

  { TOkDuckyScores }

class function TOkDuckyScores.Current: TOkDuckyScores;
begin
  if not assigned(OkDuckyScores) then
  begin
    // TODO : prendre en charge le chiffrement du fichier de stockage des scores
    OkDuckyScores := TOkDuckyScores.Create(CEditorFolderName, CGameFolderName);
    OkDuckyScores.load;
  end;
  result := OkDuckyScores;
end;

initialization

OkDuckyScores := nil;

finalization

OkDuckyScores.Free;

end.
