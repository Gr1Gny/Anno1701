unit combat;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, gestionEcran, unitSoldats, ressource;

//procédure qui correspond à une attaque de notre village
procedure attaqueviking();

implementation

procedure attaqueviking();
var
  rdm : integer;                // correspond à la probabilité qu'on se fasse attaquer
  pirates : Integer;            // nombre de pirates qui nous attaquent
  de : Integer;                  // lancé de dé pour se défendre
begin
  randomize;
  pirates:= random(21) + 10;    // entre 20 et 30 pirates
  rdm:= random(100)+1;          // une chance sur 100
  de:= random(6) + 1;           // dé à 6 faces
  if (rdm = 1) AND (getTour() > 10) then
  begin
    writeln('');
    writeln('     vous vous faites attaquer par des vikings !');
    writeln('     il sont ',pirates,' et vous avez ',getSoldats(),' soldats');
    if getSoldats() > pirates then      // si on a plus de soldats que de pirates
    begin
      writeln('     vous allez lancer un de, si vous obtenez plus de 2, alors les vikings seront vaincus !');
      writeln('     appuyez sur entrer pour lancer le de');
      readln();
      if de > 2 then                    // on a alors 2 chances sur 3 de gagner
        writeln('les vikings sont vaincus')
      else
      begin
        writeln('votre armee a perdu, votre stock de poisson a ete reduit par les vikings');
        setFish(getFish() div 2);        // on perd des ressources si on perd
      end;
    end                                  // si on a moins de soldats
    else
    begin
      writeln('     vous allez lancer un de, si vous obtenez plus 4 ou plus, alors les vikings seront vaincus !');
      writeln('     appuyez sur entrer pour lancer le de');
      readln();
      if de > 4 then                     // alors on a 2 chances sur 3 de perdre
      begin
        writeln('les vickings sont vaincus');
      end
      else
      begin
        writeln('votre armee a perdu, votre stock de poisson a ete reduit par les vickings');
        setFish(getFish() div 2);         // on perd des ressources si on perd
      end;
    end;
    writeln('vous avez en effet fait un ',de);
    readln();
    EffacerEcran();
  end;

end;

end.

