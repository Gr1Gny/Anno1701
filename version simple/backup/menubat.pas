unit menubat;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, GestionEcran, procefunct;

//procedures permettant l'affichage d'informations concernant nos batiments
procedure infobatso();
procedure infoindustrie();



implementation

procedure infobatso();

Var
  s : string;    //variable qui convertit un integer en string
  t : string;    //variable qui convertit un integer en string
begin

  //partie concernant les bâtiments sociaux

  dessinerCadreXY(66,12,102,24,simple,15,0);

  ecrireenposition2(76,15,'batiments sociaux');
  ColorierZone(12,0,74,94,15);

  str(NbCenter,s);
  ecrireenposition2(70,17,'nombre de centre ville : ' + s);

  str(NbEglise,t);
  ecrireenposition2(70,18,'nombre d''eglises : ' + t);
end;

procedure infoindustrie();

var
  s : string;    //variable qui convertit un integer en string
  t : string;    //variable qui convertit un integer en string
  u : string;    //variable qui convertit un integer en string
  v : string;    //variable qui convertit un integer en string

begin
  //partie Ressources

  dessinerCadreXY(123,12,159,24,simple,15,0);

  ecrireenposition2(136,15,'Industries');
  ColorierZone(12,0,134,147,15);

  str(BatBois,s);
  ecrireenposition2(127,17,'cabane a bucheron : ' + s);

  str(BatPoisson,t);
  ecrireenposition2(127,18,'cabane de peche : ' + t);

  str(BatLaine,u);
  ecrireenposition2(127,19,'bergerie : ' + u);

  str(BatTissu,v);
  ecrireenposition2(127,20,'usine a tissu : ' + v);

end;

end.

