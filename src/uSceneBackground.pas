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
/// File last update : 2025-05-04T14:39:06.000+02:00
/// Signature : 429a56c2ab1157cc618e2e8a9c90e81dcfe61263
/// ***************************************************************************
/// </summary>

unit uSceneBackground;

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
  _ScenesAncestor,
  FMX.Objects,
  FMX.Controls.Presentation,
  FMX.Ani,
  FMX.Effects,
  FMX.Layouts,
  uSpriteCanard;

type
  TSceneBackground = class(T__SceneAncestor)
    ZIndex01_Cibles: TLayout;
    ZIndex03_Canards: TLayout;
    ZIndex07_Canards: TLayout;
    ZIndex05_Canards: TLayout;
    ZIndex00_Fond: TRectangle;
    Nuage1: TRectangle;
    Nuage2: TRectangle;
    ZIndex02_Verdure: TLayout;
    Verdure: TRectangle;
    ShadowEffect7: TShadowEffect;
    ArbreGauche: TRectangle;
    ShadowEffect6: TShadowEffect;
    ArbreDroite: TRectangle;
    ShadowEffect5: TShadowEffect;
    ZIndex04_Vagues: TLayout;
    Vagues04: TRectangle;
    Vagues04Anim: TFloatAnimation;
    ZIndex06_Vagues: TLayout;
    Vagues06: TRectangle;
    Vagues06Anim: TFloatAnimation;
    ZIndex08_Decor: TLayout;
    Comptoir: TRectangle;
    ComptoirPlanche: TRectangle;
    ComptoirRebord: TRectangle;
    ShadowEffect1: TShadowEffect;
    RideauDroite: TRectangle;
    RideauDroiteNoeud: TRectangle;
    ShadowEffect3: TShadowEffect;
    RideauGauche: TRectangle;
    RideauGaucheNoeud: TRectangle;
    ShadowEffect2: TShadowEffect;
    RideauHaut: TRectangle;
    ShadowEffect4: TShadowEffect;
    TimerCanards: TTimer;
    procedure TimerCanardsTimer(Sender: TObject);
    procedure FrameResized(Sender: TObject);
    procedure ZIndex00_FondMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
  private
  protected
    procedure AjouteCanard(Zone: TLayout; DecalageY: integer;
      VersLaGauche: boolean);
    function DecalageHauteurCanards(Canard: TSpriteCanard): integer;
    procedure InitialiseZIndex;
    procedure InitialiseTailleElementsDecor;
    procedure ClicSurCanard(Canard: TSpriteCanard);
  public
    procedure ShowScene; override;
  end;

implementation

{$R *.fmx}

uses
  System.Math,
  uConsts,
  uOkDuckyGameData,
  uSoundEffects;

procedure TSceneBackground.AjouteCanard(Zone: TLayout; DecalageY: integer;
  VersLaGauche: boolean);
var
  Canard: TSpriteCanard;
begin
  Canard := TSpriteCanard.Create(self);
  Canard.Parent := Zone;
  Canard.Tag := DecalageY;
  Canard.InitialiseZoneDeDeplacement;
  Canard.onGetDecalageHauteurCanard := DecalageHauteurCanards;
  Canard.onClicSurCanard := ClicSurCanard;
  if VersLaGauche then
    Canard.BougeLeCanardDeDroiteAGauche(false)
  else
    Canard.BougeLeCanardDeGaucheADroite(false);
end;

procedure TSceneBackground.ClicSurCanard(Canard: TSpriteCanard);
begin
  if Canard.isEnMouvement and TOkDuckyGameData.Current.IsPlaying and
    (TOkDuckyGameData.Current.NbBullets > 0) then
  begin
    Canard.ImmobiliseLeCanard;
    // TODO : à réfléchir si on bloque ou si on bouge encore
    Canard.RotationCenter.X := 0.5;
    Canard.RotationCenter.Y := 1;
    tanimator.AnimateFloat(Canard, 'RotationAngle',
      ifthen(Canard.isVersLaGauche, -90, 90), CDelaiApresClicSurCible);

    // Calcul du score
    TOkDuckyGameData.Current.Score := TOkDuckyGameData.Current.Score +
      ((TOkDuckyGameData.Current.Level - 1) div 5) + 1;
    // +1 pour les 6, 11, 16... canards touchés
    TOkDuckyGameData.Current.Level := TOkDuckyGameData.Current.Level + 1;

    // Calcul du nombre de munitions (à ajouter ou perdre)
    if (TOkDuckyGameData.Current.Level mod 5 = 0) then
      // Ajout de 5 balles bonus - le tir effectué
      TOkDuckyGameData.Current.NbBullets :=
        TOkDuckyGameData.Current.NbBullets + 5 - 1
    else
      // Retrait de la balle utilisée pour ce tir
      TOkDuckyGameData.Current.NbBullets :=
        TOkDuckyGameData.Current.NbBullets - 1;

    if (random(100) > 50) then
      TSoundEffects.Current.Play(TSoundEffectType.CouicDuck1)
    else
      TSoundEffects.Current.Play(TSoundEffectType.CouicDuck2);

    TThread.CreateAnonymousThread(
      procedure
      begin
        sleep(CDelaiApresClicSurCible * 1000 + 1000);
        TThread.ForceQueue(nil,
          procedure
          begin
            Canard.free;
          end);
      end).Start;
  end;
end;

function TSceneBackground.DecalageHauteurCanards(Canard: TSpriteCanard)
  : integer;
begin
  result := Canard.Tag - Canard.posy;
end;

procedure TSceneBackground.FrameResized(Sender: TObject);
var
  i: integer;
begin
  InitialiseTailleElementsDecor;
  for i := 0 to ZIndex03_Canards.ChildrenCount - 1 do
    if (ZIndex03_Canards.Children[i] is TSpriteCanard) then
      (ZIndex03_Canards.Children[i] as TSpriteCanard)
        .InitialiseZoneDeDeplacement;
  for i := 0 to ZIndex05_Canards.ChildrenCount - 1 do
    if (ZIndex05_Canards.Children[i] is TSpriteCanard) then
      (ZIndex05_Canards.Children[i] as TSpriteCanard)
        .InitialiseZoneDeDeplacement;
  for i := 0 to ZIndex07_Canards.ChildrenCount - 1 do
    if (ZIndex07_Canards.Children[i] is TSpriteCanard) then
      (ZIndex07_Canards.Children[i] as TSpriteCanard)
        .InitialiseZoneDeDeplacement;
end;

procedure TSceneBackground.InitialiseTailleElementsDecor;
begin
  Comptoir.height := height - 420; // 420 = position.y du comptoir
  Vagues06.Align := TAlignLayout.None;
  Vagues06.Width := Width + 132; // 132 = largeur image vague
  Vagues04.Align := TAlignLayout.None;
  Vagues04.Width := Width + 132; // 132 = largeur image vague
end;

procedure TSceneBackground.InitialiseZIndex;
begin
  ZIndex00_Fond.BringToFront;
  ZIndex01_Cibles.BringToFront;
  ZIndex02_Verdure.BringToFront;
  ZIndex03_Canards.BringToFront;
  ZIndex04_Vagues.BringToFront;
  ZIndex05_Canards.BringToFront;
  ZIndex06_Vagues.BringToFront;
  ZIndex07_Canards.BringToFront;
  ZIndex08_Decor.BringToFront;
end;

procedure TSceneBackground.ShowScene;
begin
  inherited;
  InitialiseZIndex;
  SendToBack;
end;

procedure TSceneBackground.TimerCanardsTimer(Sender: TObject);
begin
  if (ZIndex03_Canards.ChildrenCount < CNbCanardsParZone) and (random(100) > 50)
  then
    AjouteCanard(ZIndex03_Canards, 160, true);
  if (ZIndex05_Canards.ChildrenCount < CNbCanardsParZone) and (random(100) > 50)
  then
    AjouteCanard(ZIndex05_Canards, 210, false);
  if (ZIndex07_Canards.ChildrenCount < CNbCanardsParZone) and (random(100) > 50)
  then
    AjouteCanard(ZIndex07_Canards, 260, true);
end;

procedure TSceneBackground.ZIndex00_FondMouseDown(Sender: TObject;
Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  // On tire sur le fond du stand, on a donc loupé les cibles.
  if TOkDuckyGameData.Current.IsPlaying and
    (TOkDuckyGameData.Current.NbBullets > 0) then
  begin
    TOkDuckyGameData.Current.Level := 1;
    TOkDuckyGameData.Current.NbLives := TOkDuckyGameData.Current.NbLives - 1;
    TOkDuckyGameData.Current.NbBullets :=
      TOkDuckyGameData.Current.NbBullets - 1;
  end;
end;

end.
