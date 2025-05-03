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
/// File last update : 2025-05-03T16:39:12.000+02:00
/// Signature : 44f63e3518e7ac5a9dec0032d2594f98fb4b463d
/// ***************************************************************************
/// </summary>

unit fSceneCredits;

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
  TCreditsScene = class(TcadDialogBox)
    Text1: TText;
    procedure btnCloseClick(Sender: TObject);
  private
  protected
  public
    procedure TranslateTexts(const Language: string); override;
    procedure AfterConstruction; override;
  end;

implementation

{$R *.fmx}

uses
  System.Messaging,
  uScene,
  uconsts,
  uTxtAboutDescription,
  uTxtAboutLicense;

procedure TCreditsScene.AfterConstruction;
begin
  inherited;
  Text1.TextSettings.Font.Size := Text1.TextSettings.Font.Size * 2;
end;

procedure TCreditsScene.btnCloseClick(Sender: TObject);
begin
  TScene.Current := TSceneType.Home;
end;

procedure TCreditsScene.TranslateTexts(const Language: string);
var
  txtLicense: string;
begin
  inherited;

  if (Language = 'fr') then
  begin
    txtLicense := 'Licence';
    txttitle.Text := 'Credits';
  end
  else
  begin
    txtLicense := 'License';
    txttitle.Text := 'Credits';
  end;

  Text1.Text := GetTxtAboutDescription(Language).trim + sLineBreak + sLineBreak
    + '**********' + sLineBreak + '* ' + txtLicense + sLineBreak + sLineBreak +
    GetTxtAboutLicense(Language).trim + sLineBreak + sLineBreak +
    application.MainForm.Caption + ' ' + CAboutCopyright + sLineBreak;
end;

initialization

TMessageManager.DefaultManager.SubscribeToMessage(TSceneFactory,
  procedure(const Sender: TObject; const Msg: TMessage)
  var
    NewScene: TCreditsScene;
  begin
    if (Msg is TSceneFactory) and
      ((Msg as TSceneFactory).SceneType = TSceneType.Credits) then
    begin
      NewScene := TCreditsScene.Create(application.MainForm);
      NewScene.Parent := application.MainForm;
      TScene.RegisterScene(TSceneType.Credits, NewScene);
    end;
  end);

end.
