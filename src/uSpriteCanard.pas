﻿/// <summary>
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
/// File last update : 2025-05-04T15:44:56.000+02:00
/// Signature : 1b0aae3a445209932870e3166dd3193da64bf94c
/// ***************************************************************************
/// </summary>

unit uSpriteCanard;

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
  FMX.Ani,
  FMX.Objects,
  FMX.Layouts,
  System.Generics.Collections;

type
  TSpriteCanard = class;
  tOnGetDecalageHauteurCanard = function(Canard: TSpriteCanard)
    : integer of object;
  tOnClicSurCanard = procedure(Canard: TSpriteCanard) of object;
  tOnClicSurBaton = procedure(Canard: TSpriteCanard) of object;

  TSpriteCanard = class(TFrame)
    Cible: TLayout;
    Baton: TRectangle;
    Canard_VersLaDroite: TRectangle;
    DeLaGaucheVersLaDroite: TFloatAnimation;
    DeLaDroiteVersLaGauche: TFloatAnimation;
    Canard_VersLaGauche: TRectangle;
    procedure DeLaDroiteVersLaGaucheFinish(Sender: TObject);
    procedure DeLaGaucheVersLaDroiteFinish(Sender: TObject);
    procedure ActionPendantLeDeplacement(Sender: TObject);
    procedure BatonMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Canard_VersLaDroiteMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure Canard_VersLaGaucheMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Single);
  private
    FonGetDecalageHauteurCanard: tOnGetDecalageHauteurCanard;
    FonClicSurBaton: tOnClicSurBaton;
    FonClicSurCanard: tOnClicSurCanard;
    CanardEnPause: boolean;
    MouvementEnBoucle: boolean;
    FPosY: integer;
    function getZoneDAffichageHeight: Single;
    function getZoneDAffichageWidth: Single;
    procedure SetonGetDecalageHauteurCanard(const Value
      : tOnGetDecalageHauteurCanard);
    procedure SetonClicSurBaton(const Value: tOnClicSurBaton);
    procedure SetonClicSurCanard(const Value: tOnClicSurCanard);
    function getDecalageY: integer;
    procedure SetPosY(const Value: integer);
    property ZoneDAffichageWidth: Single read getZoneDAffichageWidth;
    property ZoneDAffichageHeight: Single read getZoneDAffichageHeight;
    property DecalageY: integer read getDecalageY;
  public
    property PosY: integer read FPosY write SetPosY;
    property onGetDecalageHauteurCanard: tOnGetDecalageHauteurCanard
      read FonGetDecalageHauteurCanard write SetonGetDecalageHauteurCanard;
    property onClicSurCanard: tOnClicSurCanard read FonClicSurCanard
      write SetonClicSurCanard;
    property onClicSurBaton: tOnClicSurBaton read FonClicSurBaton
      write SetonClicSurBaton;
    constructor Create(AOwner: TComponent); override;
    procedure BougeLeCanardDeGaucheADroite(AutoReverse: boolean = true);
    procedure BougeLeCanardDeDroiteAGauche(AutoReverse: boolean = true);
    procedure ImmobiliseLeCanard;
    procedure BougeLeCanard;
    function isEnMouvement: boolean;
    function isVersLaGauche: boolean;
    function isVersLaDroite: boolean;
    procedure InitialiseZoneDeDeplacement;
  end;

  TSpriteCanardList = TObjectList<TSpriteCanard>;

implementation

{$R *.fmx}

procedure TSpriteCanard.ActionPendantLeDeplacement(Sender: TObject);
var
  Y: Single;
begin
  Y := PosY + DecalageY;
  if Y <> Position.Y then
    Position.Y := Y;
end;

procedure TSpriteCanard.BatonMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  if assigned(onClicSurBaton) then
    onClicSurBaton(Self);
end;

procedure TSpriteCanard.BougeLeCanard;
begin
  CanardEnPause := false;
  DeLaDroiteVersLaGauche.StartFromCurrent := true;
  DeLaDroiteVersLaGauche.Enabled := Canard_VersLaGauche.Visible;
  DeLaGaucheVersLaDroite.StartFromCurrent := true;
  DeLaGaucheVersLaDroite.Enabled := Canard_VersLaDroite.Visible;
end;

procedure TSpriteCanard.BougeLeCanardDeDroiteAGauche(AutoReverse: boolean);
begin
  CanardEnPause := false;
  MouvementEnBoucle := AutoReverse;
  DeLaGaucheVersLaDroite.StartFromCurrent := false;
  DeLaGaucheVersLaDroite.Enabled := false;
  DeLaDroiteVersLaGauche.StartFromCurrent := false;
  DeLaDroiteVersLaGauche.Enabled := true;
  Canard_VersLaGauche.Visible := DeLaDroiteVersLaGauche.Enabled;
  Canard_VersLaDroite.Visible := DeLaGaucheVersLaDroite.Enabled;
end;

procedure TSpriteCanard.BougeLeCanardDeGaucheADroite(AutoReverse: boolean);
begin
  CanardEnPause := false;
  MouvementEnBoucle := AutoReverse;
  DeLaDroiteVersLaGauche.StartFromCurrent := false;
  DeLaDroiteVersLaGauche.Enabled := false;
  DeLaGaucheVersLaDroite.StartFromCurrent := false;
  DeLaGaucheVersLaDroite.Enabled := true;
  Canard_VersLaGauche.Visible := DeLaDroiteVersLaGauche.Enabled;
  Canard_VersLaDroite.Visible := DeLaGaucheVersLaDroite.Enabled;
end;

procedure TSpriteCanard.Canard_VersLaDroiteMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  if assigned(onClicSurCanard) then
    onClicSurCanard(Self);
end;

procedure TSpriteCanard.Canard_VersLaGaucheMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  if assigned(onClicSurCanard) then
    onClicSurCanard(Self);
end;

constructor TSpriteCanard.Create(AOwner: TComponent);
begin
  inherited;
  name := '';
  width := Cible.width;
  Height := Cible.Height;
  CanardEnPause := false;
  MouvementEnBoucle := false;
end;

procedure TSpriteCanard.DeLaDroiteVersLaGaucheFinish(Sender: TObject);
begin
  if (not CanardEnPause) then
    if MouvementEnBoucle then
      BougeLeCanardDeGaucheADroite(MouvementEnBoucle)
    else
      tthread.ForceQueue(nil,
        procedure
        begin
          Self.free;
        end);
end;

procedure TSpriteCanard.DeLaGaucheVersLaDroiteFinish(Sender: TObject);
begin
  if (not CanardEnPause) then
    if MouvementEnBoucle then
      BougeLeCanardDeDroiteAGauche(MouvementEnBoucle)
    else
      tthread.ForceQueue(nil,
        procedure
        begin
          Self.free;
        end);
end;

function TSpriteCanard.getDecalageY: integer;
begin
  if assigned(onGetDecalageHauteurCanard) then
    result := onGetDecalageHauteurCanard(Self)
  else
    result := 0;
end;

function TSpriteCanard.getZoneDAffichageHeight: Single;
begin
  if assigned(parent) and (parent is tcontrol) then
    result := (parent as tcontrol).Height
  else if assigned(parent) and (parent is tcommoncustomform) then
    result := (parent as tcommoncustomform).Height
  else
    result := Height;
end;

function TSpriteCanard.getZoneDAffichageWidth: Single;
begin
  if assigned(parent) and (parent is tcontrol) then
    result := (parent as tcontrol).width
  else if assigned(parent) and (parent is tcommoncustomform) then
    result := (parent as tcommoncustomform).width
  else
    result := width;
end;

procedure TSpriteCanard.ImmobiliseLeCanard;
var
  X: Single;
begin
  CanardEnPause := true;
  X := Position.X;
  DeLaGaucheVersLaDroite.Enabled := false;
  DeLaDroiteVersLaGauche.Enabled := false;
  Position.X := X;
end;

procedure TSpriteCanard.InitialiseZoneDeDeplacement;
begin
  PosY := trunc(ZoneDAffichageHeight - Cible.Height);
  Position.Y := PosY + DecalageY;
  DeLaGaucheVersLaDroite.Duration := ZoneDAffichageWidth / 80;
  // 1 seconde pour 80 pixels
  DeLaGaucheVersLaDroite.StartValue := -Cible.width;
  DeLaGaucheVersLaDroite.StopValue := ZoneDAffichageWidth;
  DeLaDroiteVersLaGauche.Duration := ZoneDAffichageWidth / 80;
  // 1 seconde pour 80 pixels
  DeLaDroiteVersLaGauche.StartValue := DeLaGaucheVersLaDroite.StopValue;
  DeLaDroiteVersLaGauche.StopValue := DeLaGaucheVersLaDroite.StartValue;
end;

function TSpriteCanard.isEnMouvement: boolean;
begin
  result := DeLaGaucheVersLaDroite.Enabled or DeLaDroiteVersLaGauche.Enabled;
end;

function TSpriteCanard.isVersLaDroite: boolean;
begin
  result := Canard_VersLaDroite.Visible;
end;

function TSpriteCanard.isVersLaGauche: boolean;
begin
  result := Canard_VersLaGauche.Visible;
end;

procedure TSpriteCanard.SetonClicSurBaton(const Value: tOnClicSurBaton);
begin
  FonClicSurBaton := Value;
end;

procedure TSpriteCanard.SetonClicSurCanard(const Value: tOnClicSurCanard);
begin
  FonClicSurCanard := Value;
end;

procedure TSpriteCanard.SetonGetDecalageHauteurCanard
  (const Value: tOnGetDecalageHauteurCanard);
begin
  FonGetDecalageHauteurCanard := Value;
end;

procedure TSpriteCanard.SetPosY(const Value: integer);
begin
  FPosY := Value;
end;

end.
