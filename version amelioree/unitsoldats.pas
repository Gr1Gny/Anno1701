unit unitSoldats;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, ressource, GestionEcran;

//procédure qui permet de gérer le choix de l'utilisateur pour le recrutement de soldats
procedure choixSoldats();
//procédure qui permet d'initialiser le nombre de soldats
procedure initSoldats();
//procédure qui permet de modofier la valeur du nombre de soldats
procedure setSoldats(val:Integer);
//fonction qui renvoie le nombre de soldats
function getSoldats(): Integer;

implementation
var
  nbSoldats:Integer;  //var qui stocke le nb de soldats recrutés

procedure choixSoldats();
var
  choixS,s : Integer;
begin
  writeln('Vous avez choisis de recruter des soldats');
  writeln('Ressources necessaires : 200 or');
  write('1 : recruter ; 2 : retour au menu : ');
  readln(choixS);

  if choixS=1 then
  begin
    write('Combien de soldats voulez vous recruter ? ');
    readln(s);
    if  getGold()<(200*s) then  //test si la personne a assez d'argent pour acheter le nombre de soldats voulus
    begin
        couleurTexte(4); //couleur du texte en rouge
        writeln('Vous n"avez pas assez de ressources pour recruter ',s,' soldats');
        couleurTexte(15); //couleur du texte en blanc
    end
    else
    begin
        nbSoldats:=nbSoldats+s; //met le nombre de soldats recruter à jour
        removeGold(200*s); //enlève l'or utilisé pour l'achat
        couleurTexte(2); //couleur du texte en vert
        writeln('Recrutement reussi');
        couleurTexte(15); //couleur du texte en blanc
    end;
  end;
  readln;
end;

procedure initSoldats();
begin
     nbSoldats:=0;
end;

procedure setSoldats(val:Integer);
begin
     nbSoldats:=val;
end;

function getSoldats(): Integer;
begin
     getSoldats:= nbSoldats;
end;


end.

