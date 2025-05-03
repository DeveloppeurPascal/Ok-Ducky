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
/// File last update : 2025-05-03T18:22:54.000+02:00
/// Signature : aa135539a6e2995588b04d62618488c58ad6fb84
/// ***************************************************************************
/// </summary>

unit fSceneOptions;

interface

// TODO : ajouter une trackbar pour gérer le volume sonore de la musique de fond
// TODO : ajouter une trackbar pour gérer le volume sonore des effets sonores

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
  FMX.Objects,
  cButtonRadio;

type
  TOptionsScene = class(TcadDialogBox)
    lMusicOnOff: TLayout;
    rbMusicOnOff: TcadRadioButton;
    txtMusicOnOff: TText;
    lSoundEffectsOnOff: TLayout;
    rbSoundEffectsOnOff: TcadRadioButton;
    txtSoundEffectsOnOff: TText;
    procedure btnCloseClick(Sender: TObject);
    procedure rbMusicOnOffClick(Sender: TObject);
    procedure rbSoundEffectsOnOffClick(Sender: TObject);
  private
  protected
  public
    procedure TranslateTexts(const Language: string); override;
    procedure ShowScene; override;
    procedure AfterConstruction; override;
  end;

implementation

{$R *.fmx}

uses
  System.Messaging,
  uScene,
  uConsts,
  uUIElements,
  uBackgroundMusic,
  uSoundEffects,
  uConfig;

procedure TOptionsScene.AfterConstruction;
begin
  inherited;

  txtMusicOnOff.TextSettings.Font.Style := [tfontstyle.fsBold];
  txtMusicOnOff.TextSettings.Font.size :=
    txtMusicOnOff.TextSettings.Font.size * 2;

  txtSoundEffectsOnOff.TextSettings.Font.Style := [tfontstyle.fsBold];
  txtSoundEffectsOnOff.TextSettings.Font.size :=
    txtSoundEffectsOnOff.TextSettings.Font.size * 2;
end;

procedure TOptionsScene.btnCloseClick(Sender: TObject);
begin
  TScene.Current := TSceneType.Home;
end;

procedure TOptionsScene.rbMusicOnOffClick(Sender: TObject);
begin
  TBackgroundMusic.Current.OnOff(rbMusicOnOff.IsChecked);
end;

procedure TOptionsScene.rbSoundEffectsOnOffClick(Sender: TObject);
begin
  tconfig.Current.SoundEffectsOnOff := rbSoundEffectsOnOff.IsChecked;
  if rbSoundEffectsOnOff.IsChecked then
    TSoundEffects.Current.Play(TSoundEffectType.CouicDuck1)
    // TODO : changer le son joué sur ce bouton (ou ne rien faire)
  else
    TSoundEffects.Current.StopAll;
end;

procedure TOptionsScene.ShowScene;
begin
  inherited;

  rbMusicOnOff.IsChecked := TBackgroundMusic.Current.isOn;
  TUIItemsList.Current.AddControl(rbMusicOnOff, nil, nil,
    rbSoundEffectsOnOff, nil);

  rbSoundEffectsOnOff.IsChecked := tconfig.Current.SoundEffectsOnOff;
  TUIItemsList.Current.AddControl(rbSoundEffectsOnOff, rbMusicOnOff, nil,
    btnclose, nil);
end;

procedure TOptionsScene.TranslateTexts(const Language: string);
begin
  inherited;

  if Language = 'fr' then
  begin
    txtTitle.Text := 'Reglages';
    txtMusicOnOff.Text := 'Musique de fond';
    txtSoundEffectsOnOff.Text := 'Effets sonores';
  end
  else
  begin
    txtTitle.Text := 'Options';
    txtMusicOnOff.Text := 'Background music';
    txtSoundEffectsOnOff.Text := 'Sound effects';
  end;
end;

initialization

TMessageManager.DefaultManager.SubscribeToMessage(TSceneFactory,
  procedure(const Sender: TObject; const Msg: TMessage)
  var
    NewScene: TOptionsScene;
  begin
    if (Msg is TSceneFactory) and
      ((Msg as TSceneFactory).SceneType = TSceneType.Options) then
    begin
      NewScene := TOptionsScene.Create(application.mainform);
      NewScene.Parent := application.mainform;
      TScene.RegisterScene(TSceneType.Options, NewScene);
    end;
  end);

end.
