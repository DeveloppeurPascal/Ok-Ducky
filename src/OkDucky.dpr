program OkDucky;

uses
  System.StartUpCopy,
  FMX.Forms,
  fPrincipale in 'fPrincipale.pas' {frmPrincipale},
  uMusicLoop in 'uMusicLoop.pas' {MusicLoop: TDataModule},
  uSpriteCanard in 'uSpriteCanard.pas' {SpriteCanard: TFrame},
  u_scores in 'u_scores.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.FormFactor.Orientations := [TFormOrientation.Landscape, TFormOrientation.InvertedLandscape];
  Application.CreateForm(TfrmPrincipale, frmPrincipale);
  Application.Run;
end.
