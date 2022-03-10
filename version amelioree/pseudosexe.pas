unit PseudoSexe;

{$mode objfpc}{$H+}
{$codepage utf8}

interface

uses
  Classes, SysUtils, GestionEcran;


Function ChoixPseudo(Pseudo: String): String;                  //function qui permet de choisir un pseudo
Function ChoixSexe(sexe: Char; Pseudo: String): Char;          //fonction qui permet d'indiquer son sexe

implementation

Function ChoixPseudo(Pseudo: String): String;

begin
  while pseudo = '' do
    begin
      effacerEcran;
      ecrireenposition2(90,2,'Création de personnage');
      ecrireEnPosition2(3,11,'comment souhaitez vous vous appeler ? : ');
      readln(pseudo);
      ChoixPseudo := pseudo;   // on retorne la valeure choisit par l'utilisateur
    end;
end;

Function ChoixSexe(sexe: Char; Pseudo: String): Char;

begin
  while (sexe <> 'F') AND (sexe <> 'H') do
    begin
      effacerEcran;
      ecrireenposition2(90,2,'Création de personnage');
      ecrireEnPosition2(3,11,('comment souhaitez vous vous appeler ? : ' + pseudo));
      ecrireEnPosition2(3,15,'Etes vous un homme ou une femme ( H / F )? : ');
      readln(sexe);
      ChoixSexe := sexe;        // on retorne la valeure choisit par l'utilisateur
    end;
end;


end.

