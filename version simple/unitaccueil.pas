unit unitAccueil;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, GestionEcran, pseudosexe;

//procédure qui permettent au joueur de lancer ou dee quitter la partie
procedure play();
function GetValPlay(): String;
//procédures qui ca permettent au joueur de choisir son pseudo et son sexe et les récupérer par la suite
procedure setPseudo();
function getPseudo():String;
procedure setSexe();
function getSexe():Char;

implementation

var
  sexe : Char;                           //variable de type Char qui correspond au sexe du joueur;
  pseudo : string;                       //variable qui contient le pseudo du joueur
  jouer : String;                       //variable de type entier qui permet de savoir si l'utilisateur veut jouer ou non

procedure setPseudo();
begin
  pseudo := '';
  pseudo := ChoixPseudo(pseudo);    //on fait appel à cette fonction pour que l'utilisateur puisse choisir son pseudo
  writeln(pseudo);
end;

function getPseudo():String;
begin
  getPseudo := pseudo;
end;

procedure setSexe();
begin
  //on initialise la variable sexe à la lettre A ce qui ne correspond à aucun sexe

  sexe := 'A';
  sexe := ChoixSexe(sexe, pseudo);          //on fait appel à cette fonction pour que l'utilisateur puisse choisir son sexe
end;

function getSexe():Char;
begin
  getSexe := sexe;
end;

function GetValPlay(): String;
begin
  GetValPlay := jouer;
end;

procedure play();
begin
    //on initialise la variable jouer à 0 ce qui ne correspond à aucune option

  jouer := '0';

  while (jouer <> '1') AND (jouer <> '2') do    // 1 = jouer et 2 = quitter
  begin
    EffacerEcran();
    ecrireenposition2(5,7,'pour jouer, saisissez 1 et pour quitter, saisissez 2 : ');
    readln(jouer);
  end;
end;

end.

