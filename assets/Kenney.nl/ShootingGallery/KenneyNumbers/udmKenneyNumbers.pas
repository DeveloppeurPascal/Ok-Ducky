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
/// File last update : 2025-05-02T16:40:57.207+02:00
/// Signature : 8c9b1ded430fea46c420795b26bf93afd7d4f1fb
/// ***************************************************************************
/// </summary>

unit udmKenneyNumbers;

// ****************************************
// * Images from folder :
// * /Users/patrickpremartin/Downloads/Shooting Gallery/Vector/KenneyNumbers
// ****************************************
//
// This file contains a TDataModule with a 
// TImageList to use in a FireMonkey project.
//
// ****************************************
// File generator : Folder to FMX Image List v1.2
// Website : https://folder2fmximagelist.olfsoftware.fr/
// Generation date : 2025-05-02T16:40:57.207Z
//
// Don't do any change on this file.
// They will be erased by next generation !
// ****************************************

interface

uses
  System.SysUtils, 
  System.Classes, 
  System.ImageList,
  FMX.ImgList;

type
  TdmKenneyNumbers = class(TDataModule)
    ImageList: TImageList;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  dmKenneyNumbers: TdmKenneyNumbers;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
