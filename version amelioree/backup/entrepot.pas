unit entrepot;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

// procédure qui initialise les réserves à 40
procedure inientrepot();
// procédure qui permet de récupérer la quantité de stockage
function getrsv():Integer;
procedure setrsv(val : Integer);

implementation

var
  rsv : Integer;

procedure inientrepot();
begin
  rsv := 40;
end;

function getrsv():Integer;
begin
  getrsv := rsv;
end;

procedure setrsv(val : Integer);
begin
  rsv := val;
end;


end.

