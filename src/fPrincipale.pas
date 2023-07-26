unit fPrincipale;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects, FMX.Effects, FMX.Ani, uMusicLoop, uSpriteCanard,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TfrmPrincipale = class(TForm)
    ZIndex00_Fond: TRectangle;
    Nuage1: TRectangle;
    Nuage2: TRectangle;
    ZIndex08_Decor: TLayout;
    RideauGauche: TRectangle;
    RideauDroite: TRectangle;
    RideauGaucheNoeud: TRectangle;
    RideauDroiteNoeud: TRectangle;
    RideauHaut: TRectangle;
    Comptoir: TRectangle;
    ComptoirePlanche: TRectangle;
    ComptoirRebord: TRectangle;
    ShadowEffect1: TShadowEffect;
    ShadowEffect2: TShadowEffect;
    ShadowEffect3: TShadowEffect;
    ShadowEffect4: TShadowEffect;
    ZIndex01_Cibles: TLayout;
    ZIndex02_Verdure: TLayout;
    ZIndex03_Canards: TLayout;
    ZIndex07_Canards: TLayout;
    ZIndex06_Vagues: TLayout;
    ZIndex04_Vagues: TLayout;
    ZIndex05_Canards: TLayout;
    Verdure: TRectangle;
    ArbreGauche: TRectangle;
    ArbreDroite: TRectangle;
    Vagues04: TRectangle;
    Vagues06: TRectangle;
    Vagues04Anim: TFloatAnimation;
    Vagues06Anim: TFloatAnimation;
    TimerCanards: TTimer;
    ShadowEffect5: TShadowEffect;
    ShadowEffect6: TShadowEffect;
    ShadowEffect7: TShadowEffect;
    lblScore: TLabel;
    btnJouer: TButton;
    ZIndex99_BoutonsEtImagesDeTravail: TLayout;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure TimerCanardsTimer(Sender: TObject);
    procedure btnJouerClick(Sender: TObject);
    procedure ZIndex00_FondClick(Sender: TObject);
  private
    { Déclarations privées }
    MusiqueDeFond: TMusicLoop;
    BruitageCanardCouic1, BruitageCanardCouic2: TMusicLoop;
    ScoreDuJoueur: cardinal;
    ScoreMultiplicateur: cardinal;
    MunitionsRestantes: cardinal;
    ViesRestantes: cardinal;
    PartieEncours: boolean;
    procedure InitialiseTailleElementsDecor;
    procedure InitialiseZIndex;
    procedure InitialiseMusique;
    procedure InitialiseBruitages;
    procedure InitialisePartie;
    procedure ReprendUnePartie;
    procedure AfficheScore;
    procedure AjouteCanard(Zone: TLayout; DecalageY: integer;
      VersLaGauche: boolean);
    function DecalageHauteurCanards(Canard: TSpriteCanard): integer;
    procedure ClicSurCanard(Canard: TSpriteCanard);
  public
    { Déclarations publiques }
  end;

var
  frmPrincipale: TfrmPrincipale;

implementation

{$R *.fmx}

uses
  System.IOUtils, System.Threading, System.Math, u_scores;

const
  CNbCanardsParZone = 3;
  // TODO : gérer plutôt le nb de canards en fonction de la largeur de l'écran
  CDelaiApresClicSurCible = 1; // secondes pour animation en tir sur cibles

procedure TfrmPrincipale.AfficheScore;
begin
  lblScore.Text := 'Score : ' + ScoreDuJoueur.ToString + ' Munitions : ' +
    MunitionsRestantes.ToString + ' Vies : ' + ViesRestantes.ToString;
  // TODO : à remplacer par des images pour le rendre plus "sexy"
end;

procedure TfrmPrincipale.AjouteCanard(Zone: TLayout; DecalageY: integer;
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

procedure TfrmPrincipale.btnJouerClick(Sender: TObject);
begin
  btnJouer.Visible := false;
  InitialisePartie;
  // TODO : à compléter pour gérer le menu, changement d'écran et autres
end;

procedure TfrmPrincipale.ClicSurCanard(Canard: TSpriteCanard);
begin
  if Canard.isEnMouvement and PartieEncours then
  begin
    Canard.ImmobiliseLeCanard;
    // TODO : à réfléchir si on bloque ou si on bouge encore
    Canard.RotationCenter.X := 0.5;
    Canard.RotationCenter.Y := 1;
    tanimator.AnimateFloat(Canard, 'RotationAngle',
      ifthen(Canard.isVersLaGauche, -90, 90), CDelaiApresClicSurCible);
    // TODO : calcul du score
    ScoreDuJoueur := ScoreDuJoueur + ScoreMultiplicateur;
    inc(ScoreMultiplicateur);
    if (ScoreMultiplicateur mod 5 = 0) then
      inc(MunitionsRestantes, 5);
    // on enlève un tir qui vient d'être fait
    dec(MunitionsRestantes);
    AfficheScore;
    if (MunitionsRestantes < 1) then
    begin
      showmessage('perdu');
      PartieEncours := false;
      btnJouer.Visible := true;
    end;
    // TODO : animation ajout points de score
    if (random(100) > 50) then
      BruitageCanardCouic1.PlaySound
    else
      BruitageCanardCouic2.PlaySound;
    ttask.run(
      procedure
      begin
        sleep(CDelaiApresClicSurCible * 1000 + 1000);
        tthread.ForceQueue(nil,
          procedure
          begin
            Canard.free;
          end);
      end);
  end;
end;

function TfrmPrincipale.DecalageHauteurCanards(Canard: TSpriteCanard): integer;
begin
  result := Canard.Tag - Canard.posy;
end;

procedure TfrmPrincipale.FormCreate(Sender: TObject);
begin
  PartieEncours := false;
  InitialiseTailleElementsDecor;
  InitialiseZIndex;
  InitialiseMusique;
  InitialiseBruitages;
end;

procedure TfrmPrincipale.FormResize(Sender: TObject);
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

procedure TfrmPrincipale.InitialiseBruitages;
var
  Chemin: string;
begin
  // initialisation boucle sonore
{$IF defined(ANDROID)}
  // deploy in .\assets\internal\
  Chemin := tpath.GetDocumentsPath;
{$ELSEIF defined(MSWINDOWS)}
  // deploy in ;\
  Chemin := extractfilepath(paramstr(0));
{$ELSEIF defined(IOS)}
  // deploy in .\
  Chemin := extractfilepath(paramstr(0));
{$ELSEIF defined(MACOS)}
  // deploy in Contents\MacOS
  Chemin := extractfilepath(paramstr(0));
{$ELSEIF Defined(LINUX)}
  Chemin := extractfilepath(paramstr(0));
{$ELSE}
{$MESSAGE FATAL 'OS non supporté'}
{$ENDIF}
  BruitageCanardCouic1 := TMusicLoop.Create(self)
    .load(tpath.combine(Chemin, 'DuckyHit.wav'));
  BruitageCanardCouic2 := TMusicLoop.Create(self)
    .load(tpath.combine(Chemin, 'DuckyOuch.wav'));
end;

procedure TfrmPrincipale.InitialiseMusique;
var
  NomFichier: string;
begin
  // initialisation boucle sonore
{$IF defined(ANDROID)}
  // deploy in .\assets\internal\
  NomFichier := tpath.GetDocumentsPath;
{$ELSEIF defined(MSWINDOWS)}
  // deploy in ;\
  NomFichier := extractfilepath(paramstr(0));
{$ELSEIF defined(IOS)}
  // deploy in .\
  NomFichier := extractfilepath(paramstr(0));
{$ELSEIF defined(MACOS)}
  // deploy in Contents\MacOS
  NomFichier := extractfilepath(paramstr(0));
{$ELSEIF Defined(LINUX)}
  NomFichier := extractfilepath(paramstr(0));
{$ELSE}
{$MESSAGE FATAL 'OS non supporté'}
{$ENDIF}
  NomFichier := tpath.combine(NomFichier, 'WesternTwilight60.mp3');
  MusiqueDeFond := TMusicLoop.Create(self);
  MusiqueDeFond.play(NomFichier);
  // TODO : gérer une option pour activer/désactiver la musique au démarrage
end;

procedure TfrmPrincipale.InitialisePartie;
begin
  // TODO : gérer l'utilisation des munitions (et les recharges)
  ScoreDuJoueur := 0;
  ScoreMultiplicateur := 1;
  MunitionsRestantes := 10;
  ViesRestantes := 3;
  AfficheScore;
  PartieEncours := true;
end;

procedure TfrmPrincipale.InitialiseTailleElementsDecor;
begin
  Comptoir.height := ClientHeight - 420; // 420 = position.y du comptoir
  Vagues06.Align := TAlignLayout.None;
  Vagues06.Width := ClientWidth + 132; // 132 = largeur image vague
  Vagues04.Align := TAlignLayout.None;
  Vagues04.Width := ClientWidth + 132; // 132 = largeur image vague
end;

procedure TfrmPrincipale.InitialiseZIndex;
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
  ZIndex99_BoutonsEtImagesDeTravail.BringToFront;
end;

procedure TfrmPrincipale.ReprendUnePartie;
begin
  // TODO : à traiter en retour de pause
  AfficheScore;
  PartieEncours := true;
end;

procedure TfrmPrincipale.TimerCanardsTimer(Sender: TObject);
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

procedure TfrmPrincipale.ZIndex00_FondClick(Sender: TObject);
begin
  if PartieEncours then
  begin
    // tir sur le fond, donc canard loupé
    ScoreMultiplicateur := 1;
    dec(ViesRestantes);
    dec(MunitionsRestantes);
    AfficheScore;
    if (ViesRestantes < 1) or (MunitionsRestantes < 1) then
    begin
      showmessage('perdu');
      PartieEncours := false;
      btnJouer.Visible := true;
    end;
    // TODO : gérer l'écran de fin de partie, saisie pseudo, affichage scores, partages réseau social
  end;
end;

initialization

randomize;

{$IFDEF DEBUG}
ReportMemoryLeaksOnShutdown := true;
{$ENDIF}
score_init('Gamolf', 'OkDucky');

// TODO : adapter la vitesse de l'animation de mouvement des canards en fonctionde la largeur de l'écran (5 secondes sur petit écran, agrandir sur les autres)
// TODO : affichage d'une cible lorsqu'on clique (canards ou ailleurs)
// TODO : gérer clic sur les batons
// TODO : gérer un nombre de tirs possibles
// TODO : gérer score
// TODO : écran de fin de partie (saisie du pseudo et enregistrement du score)
// TODO : écran de début de partie (menu)
// TODO : écran des scores (hall of fame)
// TODO : écran des remerciements/infos légales
// TODO : écran des options (activer ou pas la musique et les bruitages)
// TODO : ajouter les effets sur canards KO
// TODO : ajouter les effets lorsqu'on tire
// TODO : ajouter peut-être l'image du fusil qui se déplace selon où on est et tire
// TODO : ajouter des cibles fixes sur le fond
// TODO : sur sons canards, prévoir plusieurs players pour éviter les couacs de son qui ne se jouent pas car déjà en cours de lecture lors du déclenchement
// TODO : ajouter réglage volume sonore de la musique d'ambiance dans les OPTIONS/REGLAGES/PARAMETRES

end.
