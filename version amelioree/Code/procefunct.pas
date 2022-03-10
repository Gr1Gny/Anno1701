unit procefunct;

{$mode objfpc}{$H+}

interface
uses
  Classes, SysUtils;
procedure construction();
procedure choixMaisonCitoyen();
procedure choixBatSo();
procedure batCenter();
procedure batEglise();
procedure choixIndustrie();
procedure choixInduPeche();
procedure choixIndubois();
procedure choixIndulaine();
procedure choixIndutissus();
procedure comparaisonMaisonCitoyen();
procedure comparaisonEglise();
procedure comparaisonPeche();
procedure comparaisonBucheron();
procedure comparaisonBergerie();
procedure comparaisontissus();
implementation
procedure comparaisontissus();
const
  nbBois= 20;
  nbBoisBesoin= 5;
  nbLaine= 10;
  nbLaineBesoin= 1;
  nbOutils= 1;
  nbOutilsBesoin= 2;
begin

  if (nbBois>=nbBoisBesoin) AND (nbLaine>=nbLaineBesoin) AND (nbOutils>=nbOutilsBesoin)  then
     begin
    writeln('construction valide');
    readln();
    end
  else
    Writeln('Vous n''avez pas les ressources nécessaire');
    readln();
    construction();



end;
procedure comparaisonBergerie();
const
  nbBois= 10;
  nbBoisBesoin= 20;
  nbLaine= 10;
  nbLaineBesoin= 4;
  nbOutils= 8;
  nbOutilsBesoin= 2;
begin

  if (nbBois>=nbBoisBesoin) AND (nbLaine>=nbLaineBesoin) AND (nbOutils>=nbOutilsBesoin)  then
     begin
    writeln('construction valide');
    readln();
    end
  else
    Writeln('Vous n''avez pas les ressources nécessaire');
    readln();
    construction();



end;
procedure comparaisonBucheron();
const
  nbBois= 20;
  nbBoisBesoin= 10;
  nbLaine= 10;
  nbLaineBesoin= 2;
  nbOutils= 8;
  nbOutilsBesoin= 1;
begin

  if (nbBois>=nbBoisBesoin) AND (nbLaine>=nbLaineBesoin) AND (nbOutils>=nbOutilsBesoin)  then
     begin
    writeln('construction valide');
    readln();
    end
  else
    Writeln('Vous n''avez pas les ressources nécessaire');
    readln();
    construction();



end;
procedure comparaisonPeche();
const
  nbBois= 20;
  nbBoisBesoin= 10;
  nbLaine= 10;
  nbLaineBesoin= 2;
  nbOutils= 8;
  nbOutilsBesoin= 1;
begin

  if (nbBois>=nbBoisBesoin) AND (nbLaine>=nbLaineBesoin) AND (nbOutils>=nbOutilsBesoin)  then
     begin
    writeln('construction valide');
    readln();
    end
  else
    Writeln('Vous n''avez pas les ressources nécessaire');
    readln();
    construction();



end;
procedure comparaisonCentreVille();
const
  nbBois= 20;
  nbBoisBesoin= 32;
  nbLaine= 10;
  nbLaineBesoin= 20;
  nbOutils= 8;
  nbOutilsBesoin= 8;
begin

  if (nbBois>=nbBoisBesoin) AND (nbLaine>=nbLaineBesoin) AND (nbOutils>=nbOutilsBesoin)  then
     begin
    writeln('construction valide');
    readln();
    end
  else
    Writeln('Vous n''avez pas les ressources nécessaire');
    readln();
    construction();



end;
procedure comparaisonEglise();
const
  nbBois= 20;
  nbBoisBesoin= 20;
  nbLaine= 10;
  nbLaineBesoin= 10;
  nbOutils= 8;
  nbOutilsBesoin= 8;
begin

  if (nbBois>=nbBoisBesoin) AND (nbLaine>=nbLaineBesoin) AND (nbOutils>=nbOutilsBesoin)  then
     begin
    writeln('construction valide');
    readln();
    end
  else
    Writeln('Vous n''avez pas les ressources nécessaire');
    readln();
    construction();



end;

procedure comparaisonMaisonCitoyen();
const
  nbBois= 124;
  nbBoisBesoin= 12;
  nbLaine= 3;
  nbLaineBesoin= 3;
  nbtissus= 5;
  nbtissusBesoin= 2;

begin

    if (nbBois>=nbBoisBesoin) AND (nbLaine>=nbLaineBesoin) AND (nbtissus>=nbtissusBesoin)  then
     begin
    writeln('construction valide');
    readln();
    end
  else
    Writeln('Vous n''avez pas les ressources nécessaire');
    readln();
    construction();



end;




procedure choixIndutissus();
var
  validationtissus:Integer;
  begin
    writeln('Vous avez choisis une usine à tissus');
   writeln('ressources necessaires: 5 bois, 1 laines, 2 outils');
   write('Validez vous votre choix? (1.oui / 2.non): ');
   readln(validationtissus);
   if validationtissus=1 then
     begin
     comparaisontissus();
      end
   else if validationtissus=2 then
   begin
   choixIndustrie();
   end;
  end;
procedure choixIndulaine();
var
  validationlaine:Integer;
  begin
    writeln('Vous avez choisis une bergerie');
   writeln('ressources necessaires: 20 bois, 4 laines, 2 outils');
   write('Validez vous votre choix? (1.oui / 2.non): ');
   readln(validationlaine);
   if validationlaine=1 then
     begin
     comparaisonBergerie();
      end
   else if validationlaine=2 then
   begin
   choixIndustrie();
   end;
  end;
procedure choixIndubois();
var
  validationbois:Integer;
  begin
    writeln('Vous avez choisis une cabane de bucheron');
   writeln('ressources necessaires: 10 bois, 2 laines, 1 outils');
   write('Validez vous votre choix? (1.oui / 2.non): ');
   readln(validationbois);
   if validationbois=1 then
     begin
     comparaisonBucheron();
      end
   else if validationbois=2 then
   begin
   choixIndustrie();
   end;
  end;
procedure choixInduPeche();
var
  validationPeche:Integer;
  begin
    writeln('Vous avez choisis une cabane de pecheur');
   writeln('ressources necessaires: 10 bois, 2 laines, 1 outils');
   write('Validez vous votre choix? (1.oui / 2.non): ');
   readln(validationPeche);
   if validationPeche=1 then
     begin
     comparaisonPeche();
      end
   else if validationPeche=2 then
   begin
   choixIndustrie();
   end;
  end;

procedure choixIndustrie();
var
  choixIndu:Integer;

  begin
     writeln('1.cabane de pecheur(poisson) 2.cabane de bucheron(bois) 3.Bergerie(laine) 4.Tissage(tissus)');
     write('Que voulez vous?: ');
     readln(choixIndu);
     if choixIndu=1 then
       begin
          choixInduPeche();
       end
     else if choixIndu =2 then
       begin
         choixIndubois();
       end
     else if choixIndu =3 then
       begin
          choixIndulaine();
       end
     else if choixIndu =4 then
       begin
          choixIndutissus();
       end;

  end;

procedure batEglise();
var
  validationEglise: Integer;

  begin
   writeln('Vous avez choisis une Eglise');
   writeln('ressources necessaires: 20 bois, 10 laines, 8 outils');
   write('Validez vous votre choix? (1.oui / 2.non): ');
   readln(validationEglise);
   if validationEglise=1 then
   begin
   comparaisonEglise();
   readln();
   end
   else if validationEglise=2 then
   begin
   choixBatSo();
   end;
   end;

procedure batCenter();
var
  validationCenter: Integer;

  begin
   writeln('Vous avez choisis un centre ville');
   writeln('ressources necessaires: 32 bois, 20 laines, 8 outils');
   write('Validez vous votre choix? (1.oui / 2.non): ');
   readln(validationCenter);
   if validationCenter=1 then
   begin
   comparaisonCentreVille();
   end
   else if validationCenter=2 then
   begin
   choixBatSo();
   end;
  end;

procedure choixbatSo();
var
   choixBatcenterEglise:Integer;
    validationBatSo:Integer;
begin
  writeln('1.centre ville 2.Eglise');
  write('Que voulez vous?: ');
  readln(choixBatcenterEglise);
  if choixBatcenterEglise=1 then
    begin
      batCenter();
    end
  else if choixBatcenterEglise=2 then
    begin
       batEglise();
    end;

end;


procedure choixMaisonCitoyen();
var
  validationMaison:Integer;
begin
      writeln(' 1.Maison de citoyens ');
      writeln('ressources necessaires: 12 bois, 3 laines, 2 tissus');
      write(' Souaitez vous construire cette maison? (1.Oui 2.Non): ');
      readln(validationMaison);

  if validationMaison = 1 then
          begin
          comparaisonMaisonCitoyen();
          end
       else if validationMaison = 2 then
       begin
       construction();
       end;

end;

procedure construction();
var
  construire: Integer;
  validation: Integer;
  choixSocial: Integer;


begin
  writeln('Que voulez vous construire?');
  writeln('1.Maisons      ','2.batiments sociaux      ','3.industrie');
  write('Que choisissez vous?: ');
  readln(construire);
  if construire =1 then
    begin
       choixMaisonCitoyen();
      end;
  if construire =2 then
    begin
      choixBatSo();

    end;
  if construire =3 then
    begin
      choixIndustrie();
    end;

    end;


end.

