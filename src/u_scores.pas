unit u_scores;

interface

uses system.generics.collections;

type
  tScore = class(TObject)
    pseudo: string;
    points: cardinal;
    niveau: cardinal;
    pseudo_modere: boolean;
    score_transfere: boolean;
  end;

  tScoreListe = tobjectlist<tScore>;

procedure score_init(editeur, logiciel: string);
function score_liste_get: tScoreListe;
function score_add(pseudo: string; points: cardinal;
  niveau: cardinal = 0): boolean;

implementation

uses system.classes, system.SysUtils, system.ioutils, system.Types;

var
  score_liste: tScoreListe;
  nom_editeur, nom_logiciel: string;

procedure score_init(editeur, logiciel: string);
begin
  editeur := editeur.Trim;
  if (editeur.Length > 0) then
    nom_editeur := editeur;
  logiciel := logiciel.Trim;
  if (logiciel.Length > 0) then
    nom_logiciel := logiciel;
end;

function score_nom_fichier_get: string;
var
  nom_dossier: string;
begin
  nom_dossier := tpath.GetDocumentsPath;
  if nom_editeur.Trim.Length > 0 then
    nom_dossier := tpath.Combine(nom_dossier, nom_editeur.Trim);
  if nom_logiciel.Trim.Length > 0 then
    nom_dossier := tpath.Combine(nom_dossier, nom_logiciel.Trim);
  if not directoryexists(nom_dossier) then
    forcedirectories(nom_dossier);
  if directoryexists(nom_dossier) then
    result := tpath.Combine(nom_dossier, 'score.dat')
  else
    raise exception.Create('Score folder not found neither created.');
end;

procedure score_load;
var
  liste: tstringlist;
  ligne: string;
  nom_fichier: string;
  score: tScore;
  champs: tarray<string>;
  separation: string;
begin
  if (not assigned(score_liste)) then
    score_liste := tScoreListe.Create;
  nom_fichier := score_nom_fichier_get;
  if (fileexists(nom_fichier)) then
  begin
    separation := Tabulator;
    liste := tstringlist.Create;
    try
      liste.LoadFromFile(nom_fichier);
      score_liste.Clear;
      for ligne in liste do
      begin
        champs := ligne.Split(separation);
        if (Length(champs) = 5) then
        begin
          score := tScore.Create;
          try
            score.pseudo := champs[0];
            score.points := champs[1].ToInteger;
            score.niveau := champs[2].ToInteger;
            score.pseudo_modere := champs[3] = 'O';
            score.score_transfere := champs[4] = 'O';
            score_liste.Add(score);
          except
            score.Free;
            raise;
          end;
        end;
      end;
    finally
      liste.Free;
    end;
  end;
end;

procedure score_save;
var
  score: tScore;
  liste: tstringlist;
  ligne: string;
begin
  if (assigned(score_liste)) and (score_liste.Count > 0) then
  begin
    liste := tstringlist.Create;
    try
      for score in score_liste do
      begin
        ligne := score.pseudo + Tabulator + score.points.ToString + Tabulator +
          score.niveau.ToString + Tabulator;
        if score.score_transfere then
          ligne := ligne + 'O' + Tabulator
        else
          ligne := ligne + 'N' + Tabulator;
        if score.pseudo_modere then
          ligne := ligne + 'O'
        else
          ligne := ligne + 'N';
        liste.Add(ligne);
      end;
      if (liste.Count > 0) then
        liste.SaveToFile(score_nom_fichier_get);
    finally
      liste.Free;
    end;
  end;
end;

procedure score_transfert;
begin
  // TODO : à compléter pour la centralisation des scores en ligne sur Gamolf.fr ou ailleurs
end;

function score_liste_get: tScoreListe;
begin
  if (not assigned(score_liste)) then
    score_load;
  result := score_liste;
end;

function score_add(pseudo: string; points: cardinal;
  niveau: cardinal = 0): boolean;
var
  score: tScore;
begin
  result := false;
  if (not assigned(score_liste)) then
    score_load;
  pseudo := pseudo.Trim;
  if (pseudo.Length > 0) then
  begin
    score := tScore.Create;
    try
      score.pseudo := pseudo;
      score.points := points;
      score.niveau := niveau;
      score.pseudo_modere := false;
      score.score_transfere := false;
      score_liste.Add(score);
      score_save;
      result := true;
    except
      score.Free;
      raise;
    end;
  end;
end;

initialization

score_liste := nil;
nom_editeur := 'OlfSoftware';
nom_logiciel := 'Inconnu';

finalization

if assigned(score_liste) then
  score_liste.Free;

end.
