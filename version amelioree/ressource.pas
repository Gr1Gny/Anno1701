unit ressource;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

//Cette fonction initialise les variables
procedure initialisation1();
procedure initialisation2();
procedure initialisation3();
//Cette fonction renvoie la valeur de la variable Or
function getGold() : Integer;
//Cette procedure augmente la valeur de la variable Or
procedure addGold(valeur : integer);
//Cette procedure diminue la valeur de la variable Or
procedure removeGold(valeur : integer);

//Cette fonction renvoie la valeur de la variable bois
function getBois() : Integer;
//Cette procedure augmente la valeur de la variable bois
procedure addBois(valeur : integer);
//Cette procedure diminue la valeur de la variable bois
procedure removeBois(valeur : integer);

//Cette fonction renvoie la valeur de la variable outils
function getTools() : Integer;
//Cette procedure augmente la valeur de la variable outils
procedure addTools(valeur : integer);
//Cette procedure diminue la valeur de la variable outils
procedure removeTools(valeur : integer);

//Cette fonction renvoie la valeur de la variable poisson
function getFish() : Integer;
//Cette procedure augmente la valeur de la variable poisson
procedure addFish(valeur : integer);
//Cette procedure diminue la valeur de la variable poisson
procedure removeFish(valeur : integer);

//Cette fonction renvoie la valeur de la variable laine
function getLaine() : Integer;
//Cette procedure augmente la valeur de la variable laine
procedure addLaine(valeur : integer);
//Cette procedure diminue la valeur de la variable laine
procedure removeLaine(valeur : integer);

//Cette fonction renvoie la valeur de la variable tissu
function getTissu() : Integer;
//Cette procedure augmente la valeur de la variable tissu
procedure addTissu(valeur : integer);
//Cette procedure diminue la valeur de la variable tissu
procedure removeTissu(valeur : integer);

// on modifie les valeurs des ressources
procedure setGold(val : Integer);
procedure setBois(val : Integer);
procedure setTools(val : Integer);
procedure setFish(val : Integer);
procedure setLaine(val : Integer);
procedure setTissu(val : Integer);

implementation
var
  NbOr : Integer;
  NbBois : Integer;                      //variable de type entier qui correspond au bois disponible
  NbOutils : Integer;                    //variable de type entier qui correspond au oiutils disponible
  NbPoisson : Integer;                   //variable de type entier qui correspond au poisson disponible
  NbLaine : Integer;                     //variable de type entier qui correspond a la laine disponible
  NbTissu : Integer;                     //variable de type entier qui correspond au tissu disponible

procedure initialisation1();
begin
  NbOr := 50000;
  NbBois := 40;
  NbOutils := 40;
  NbPoisson := 10;
  NbLaine := 10;
  NbTissu := 10;
end;

procedure initialisation2();
begin
  NbOr := 40000;
  NbBois := 30;
  NbOutils := 30;
  NbPoisson := 5;
  NbLaine := 5;
  NbTissu := 5;
end;

procedure initialisation3();
begin
  NbOr := 30000;
  NbBois := 20;
  NbOutils := 20;
  NbPoisson := 0;
  NbLaine := 0;
  NbTissu := 0;
end;

function getGold() : Integer;
begin
  getGold := NbOr;
end;

procedure addGold(valeur : integer);
begin
     NbOr := NbOr + valeur;
end;

procedure removeGold(valeur : integer);
begin
     NbOr := NbOr - valeur;
end;



function getBois() : Integer;
begin
  getBois := NbBois;
end;

procedure addBois(valeur : integer);
begin
     NbBois := NbBois + valeur;
end;

procedure removeBois(valeur : integer);
begin
     NbBois := NbBois - valeur;
end;



function getTools() : Integer;
begin
  getTools := NbOutils;
end;

procedure addTools(valeur : integer);
begin
     NbOutils := NbOutils + valeur;
end;

procedure removeTools(valeur : integer);
begin
     NbOutils := NbOutils - valeur;
end;



function getFish() : Integer;
begin
  getfish := NbPoisson;
end;

procedure addFish(valeur : integer);
begin
     NbPoisson := NbPoisson + valeur;
end;

procedure removeFish(valeur : integer);
begin
     NbPoisson := NbPoisson - valeur;
end;


function getLaine() : Integer;
begin
  getLaine := NbLaine;
end;

procedure addLaine(valeur : integer);
begin
     NbLaine := NbLaine + valeur;
end;

procedure removeLaine(valeur : integer);
begin
     NbLaine := NbLaine - valeur;
end;


function getTissu() : Integer;
begin
  getTissu := NbTissu;
end;

procedure addTissu(valeur : integer);
begin
     NbTissu := NbTissu + valeur;
end;

procedure removeTissu(valeur : integer);
begin
     NbTissu := NbTissu - valeur;
end;

procedure setGold(val : Integer);
begin
     NbOr := val;
end;

procedure setBois(val : Integer);
begin
     NbBois := val;
end;

procedure setTools(val : Integer);
begin
     NbOutils := val;
end;

procedure setFish(val : Integer);
begin
     NbPoisson := val;
end;

procedure setLaine(val : Integer);
begin
     NbLaine := val;
end;

procedure setTissu(val : Integer);
begin
     NbTissu := val;
end;

end.

