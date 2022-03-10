unit Tour;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, GestionEcran;

// procédure qui initialise tour à 0 au début de la partie
procedure iniTour();
// procédure qui incrémente Tour quand on passe au tour suivant
procedure TourSuivant();
// procédure qui perlet de récupérer le tour actuel
function getTour():Integer;
// procédure qui permet d'afficher le tour en temps réel
procedure writeTour();
implementation

var
  tours : Integer;

procedure iniTour();
begin
  tours := 0;
end;

procedure TourSuivant();
begin
  tours := tours + 1;
end;

function getTour():Integer;
begin
  getTour := tours;
end;

procedure writeTour();
var
  s : string;
begin
  s := IntToStr(getTour());
  ecrireEnPosition2(188,58,'Tour : ' + s);
end;

end.

