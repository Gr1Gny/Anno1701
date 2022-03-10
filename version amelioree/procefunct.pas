unit procefunct;

{$mode objfpc}{$H+}

interface
uses
  Classes, SysUtils, GestionEcran, ressource, unitAccueil, entrepot;

// on initialise le nombre de batiments
procedure iniNb();
// procédure qu'on appel dans le programme principal et qui permet la construction de bâtiments
procedure construction();

//procédures apelées en fonction du batiment qu'on souhaite construire
procedure choixMaisonCitoyen();
procedure choixBatSo();
procedure batCenter();
procedure batEglise();
procedure batEntrepot();
procedure choixIndustrie();
procedure choixInduPeche();
procedure choixIndubois();
procedure choixIndulaine();
procedure choixIndutissus();

// fonctions qui incrémentent de un et retourne le nombre de batiment de celui que l'on vient de contruire
function comparaisonMaisonCitoyen(NbMaison: Integer): Integer;
function comparaisonEglise(NbEglise: Integer): Integer;
function comparaisonCenter(NbCenter: Integer): Integer;
function comparaisonPeche(BatPoisson: Integer): Integer;
function comparaisonBucheron(BatBois: Integer): Integer;
function comparaisonBergerie(BatLaine: Integer): Integer;
function comparaisontissus(BatTissu: Integer): Integer;
function comparaisonEntrepot(NbEntrepot : Integer): Integer;

// procédures qui permettent l'affichage de nos bâtiments
procedure infomaison();
procedure infobatso();
procedure infoindustrie();

// fonctions qui permettent de récupérer les nom de bâtiments
function getMaison():Integer;
function getBucheron():Integer;
function getBergerie():Integer;
function getPeche():Integer;
function getTissus():Integer;
function getCenter():Integer;
function getEglise():Integer;

// fonctions qui permettent de modifier les nom de bâtiments
procedure setMaison(val : Integer);
procedure setBucheron(val : Integer);
procedure setBergerie(val : Integer);
procedure setPeche(val : Integer);
procedure setTissus(val : Integer);
procedure setCenter(val : Integer);
procedure setEglise(val : Integer);

implementation

var
  NbMaison : Integer;                    //variable de type entier qui contient le nombre de maisons
  NbEntrepot : Integer;                    //variable de type entier qui contient le nombre de maisons
  NbCenter : Integer;                    //variable de type entier qui contient le nombre de centre ville
  NbEglise : Integer;                    //variable de type entier qui contient le nombre d'églises
  BatBois  : Integer;                    //variable de type entier qui contient le nombre de cabanes à bucheron
  BatPoisson : Integer;                  //variable de type entier qui contient le nombre de cabanes à peches
  BatLaine : Integer;                    //variable de type entier qui contient le nombre de bergerie
  BatTissu : Integer;                    //variable de type entier qui contient le nombre d'usines à tissu


procedure iniNb();
begin
  NbMaison := 0;
  NbCenter := 0;
  NbEglise := 0;
  BatBois := 0;
  BatPoisson := 0;
  BatLaine := 0;
  BatTissu := 0;
  NbEntrepot := 0;
end;

procedure setMaison(val : Integer);
begin
  NbMaison := val;
end;

procedure setBucheron(val : Integer);
begin
  BatBois := val;
end;

procedure setBergerie(val : Integer);
begin
  BatLaine := val;
end;

procedure setPeche(val : Integer);
begin
  BatPoisson := val;
end;

procedure setTissus(val : Integer);
begin
  BatTissu := val;
end;

procedure setCenter(val : Integer);
begin
  NbCenter := val;
end;

procedure setEglise(val : Integer);
begin
  NbEglise := val;
end;

function getCenter():Integer;
begin
  getCenter := NbCenter;
end;

function getEglise():Integer;
begin
  getEglise := NbEglise;
end;

function getMaison():Integer;
begin
  getMaison := NbMaison;
end;

function getBucheron():Integer;
begin
  getBucheron := BatBois;
end;

function getBergerie():Integer;
begin
  getBergerie := BatLaine;
end;

function getPeche():Integer;
begin
  getPeche := BatPoisson;
end;

function getTissus():Integer;
begin
  getTissus := BatTissu;
end;

function comparaisontissus(BatTissu: Integer): Integer;
const
  nbLaineBesoin= 2;
  nbBoisBesoin= 4;
  nbOutilsBesoin= 3;
  nbOrBesoin = 400;
begin

  if (getBois() >=nbBoisBesoin) AND (getLaine() >=nbLaineBesoin) AND (getTools() >=nbOutilsBesoin) AND (getGold() >=nbOrBesoin) then
    begin
      BatTissu := BatTissu + 1;
      comparaisontissus := BatTissu;
      removeBois(4);
      removeGold(400);
      removeTools(3);
      removeLaine(2);
      writeln('');
      couleurTexte(2);
      writeln('     construction reussie');
      couleurTexte(15);
      readln();
    end
  else
  begin
    comparaisontissus := BatTissu;
    writeln('');
    couleurTexte(4);
    writeln('     pas assez de ressources');
    couleurTexte(15);
    readln();
  end;



end;
function comparaisonBergerie(BatLaine: Integer): Integer;
const
  nbBoisBesoin= 3;
  nbOutilsBesoin= 2;
  nbOrBesoin = 200;
begin

  if (getBois()>=nbBoisBesoin) AND (getGold()>=nbOrBesoin) AND (getTools()>=nbOutilsBesoin) then
    begin
      BatLaine := BatLaine + 1;
      comparaisonBergerie := BatLaine;
      removeBois(3);
      removeGold(200);
      removeTools(2);
      writeln('');
      couleurTexte(2);
      writeln('     construction reussie');
      couleurTexte(15);
      readln();
    end
  else
  begin
    comparaisonBergerie := BatLaine;
    writeln('');
    couleurTexte(4);
    writeln('     pas assez de ressources');
    couleurTexte(15);
    readln();
  end;



end;
function comparaisonBucheron(BatBois: Integer): Integer;
const
  nbBoisBesoin= 2;
  nbOutilsBesoin= 1;
  nbOrBesoin = 100;
begin

  if (getBois() >= nbBoisBesoin) AND (getGold() >= nbOrBesoin) AND (getTools >= nbOutilsBesoin)  then
    begin
    BatBois := BatBois + 1;
    comparaisonBucheron := BatBois;
    removeBois(2);
    removeGold(100);
    removeTools(1);
    writeln('');
    couleurTexte(2);
    writeln('     construction reussie');
    couleurTexte(15);
    readln();
    end
  else
  begin
    comparaisonBucheron := BatBois;
    writeln('');
    couleurTexte(4);
    writeln('     pas assez de ressources');
    couleurTexte(15);
    readln();
  end;



end;
function comparaisonPeche(BatPoisson: Integer): Integer;
const
  nbBoisBesoin= 3;
  nbOrBesoin= 200;
  nbOutilsBesoin= 2;
begin

  if (getBois() >= nbBoisBesoin) AND (getGold() >= nbOrBesoin) AND (getTools() >= nbOutilsBesoin)  then
    begin
      BatPoisson := BatPoisson + 1;
      comparaisonPeche := BatPoisson;
      removeBois(3);
      removeGold(200);
      removeTools(2);
      writeln('');
      couleurTexte(2);
      writeln('     construction reussie');
      couleurTexte(15);
      readln();
    end
  else
  begin
    comparaisonPeche := BatPoisson;
    writeln('');
    couleurTexte(4);
    writeln('     pas assez de ressources');
    couleurTexte(15);
    readln();
  end;

end;


function comparaisonEglise(NbEglise: Integer): Integer;
const
  nbBoisBesoin= 4;
  nbOutilsBesoin= 4;
  nbOrbesoin= 400;
begin

  if (getBois()>=nbBoisBesoin) AND (getTools>=nbOutilsBesoin) AND (getGold>=nbOrbesoin)  then
    begin
      NbEglise := NbEglise + 1;
      comparaisonEglise := NbEglise;
      removeBois(4);
      removeGold(400);
      removeTools(4);
      writeln('');
      couleurTexte(2);
      writeln('     construction reussie');
      couleurTexte(15);
      readln();
    end
  else
  begin
    comparaisonEglise := NbEglise;
    writeln('');
    couleurTexte(4);
    writeln('     pas assez de ressources');
    couleurTexte(15);
    readln();
  end;
end;

function comparaisonCenter(NbCenter: Integer): Integer;
const
  nbBoisBesoin= 4;
  nbOutilsBesoin= 4;
  nbOrbesoin= 400;
begin

  if (getBois()>=nbBoisBesoin) AND (getTools>=nbOutilsBesoin) AND (getGold>=nbOrbesoin)  then
    begin
      NbCenter := NbCenter + 1;
      comparaisonCenter := NbCenter;
      removeBois(4);
      removeGold(400);
      removeTools(4);
      writeln('');
      couleurTexte(2);
      writeln('     construction reussie');
      couleurTexte(15);
      readln();
    end
  else
  begin
    comparaisonCenter := NbCenter;
    writeln('');
    couleurTexte(4);
    writeln('     pas assez de ressources');
    couleurTexte(15);
    readln();
  end;

end;

function comparaisonEntrepot(NbEntrepot : Integer): Integer;
const
  nbBoisBesoin= 10;
  nbGoldBesoin= 1000;
  nbLaineBesoin= 10;
  nbTissuBesoin= 10;
  nbOutilsBesoin= 6;
  nbPoissonBesoin= 10;
begin

    if (getBois()>=nbBoisBesoin) AND (getGold()>= nbGoldBesoin) AND (getTools()>=nbOutilsBesoin) AND (getLaine()>=nbLaineBesoin) AND (getTissu()>=nbTissuBesoin) AND (getFish()>=nbPoissonBesoin) then
      begin
        NbEntrepot := NbEntrepot + 1;
        comparaisonEntrepot := NbEntrepot;
        removeBois(10);
        removeGold(1000);
        removeTissu(10);
        removeTools(6);
        removeFish(10);
        removeLaine(10);
        setrsv(getrsv() + 10);
        writeln('');
        couleurTexte(2);
        writeln('     construction reussie');
        couleurTexte(15);
        readln();
      end
    else
    begin
      comparaisonEntrepot := NbEntrepot;
      writeln('');
      couleurTexte(4);
      writeln('     pas assez de ressources');
      couleurTexte(15);
      readln();
    end;
end;


function comparaisonMaisonCitoyen(NbMaison: Integer): Integer;
const
  nbBoisBesoin= 2;
  nbGoldBesoin= 50;
begin

    if (getBois()>=nbBoisBesoin) AND (getGold()>= nbGoldBesoin) then
      begin
        NbMaison := NbMaison + 1;
        comparaisonMaisonCitoyen := NbMaison;
        removeBois(2);
        removeGold(50);
        writeln('');
        couleurTexte(2);
        writeln('     construction reussie');
        couleurTexte(15);
        readln();
      end
    else
    begin
      comparaisonMaisonCitoyen := NbMaison;
      writeln('');
      couleurTexte(4);
      writeln('     pas assez de ressources');
      couleurTexte(15);
      readln();
    end;
end;




procedure choixIndutissus();
var
  validationtissus:Integer;
  begin
    writeln('     Vous avez choisis une usine à tissus');
    writeln('     ressources necessaires: 4 bois, 2 laines, 400 d''or, 3 outils');
    write('     Validez vous votre choix? (1.oui / 2.non): ');
    readln(validationtissus);
    if validationtissus=1 then
        BatTissu := comparaisontissus(BatTissu);
  end;

procedure choixIndulaine();
var
  validationlaine:Integer;
  begin
    writeln('     Vous avez choisis une bergerie');
    writeln('     ressources necessaires: 3 bois, 200 d''or, 2 outils');
    write('     Validez vous votre choix? (1.oui / 2.non): ');
    readln(validationlaine);
    if validationlaine=1 then
        BatLaine := comparaisonBergerie(BatLaine);
  end;

procedure choixIndubois();
var
  validationbois:Integer;
  begin
    writeln('     Vous avez choisis une cabane de bucheron');
    writeln('     ressources necessaires: 2 bois, 100 d''or, 1 outils');
    write('     Validez vous votre choix? (1.oui / 2.non): ');
    readln(validationbois);
    if validationbois=1 then
        batBois := comparaisonBucheron(BatBois);
  end;
procedure choixInduPeche();
var
  validationPeche:Integer;
  begin
    writeln('     Vous avez choisis une cabane de pecheur');
    writeln('     ressources necessaires: 3 bois, 200 d''or, 2 outils');
    write('     Validez vous votre choix? (1.oui / 2.non): ');
    readln(validationPeche);
    if validationPeche=1 then
        BatPoisson := comparaisonPeche(BatPoisson);
  end;

procedure choixIndustrie();
var
  choixIndu:Integer;

  begin
     writeln('     1.cabane de pecheur(poisson) 2.cabane de bucheron(bois) 3.Bergerie(laine) 4.Tissage(tissus)');
     write('     Que voulez vous?: ');
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
   writeln('     Vous avez choisis une Eglise');
   writeln('     ressources necessaires: 4 bois, 400 d''or, 4 outils');
   write('     Validez vous votre choix? (1.oui / 2.non): ');
   readln(validationEglise);
   if validationEglise=1 then
       NbEglise := comparaisonEglise(NbEglise);
   end;

procedure batEntrepot();
var
  validationEntrepot: Integer;

  begin
   writeln('     Vous avez choisis une Entrepot');
   writeln('     ressources necessaires: 10 bois, 10 laines, 10 poissons, 10 tissus, 1000 d''or, 6 outils');
   write('     Validez vous votre choix? (1.oui / 2.non): ');
   readln(validationEntrepot);
   if validationEntrepot=1 then
       NbEntrepot := comparaisonEntrepot(NbEntrepot);
   end;

procedure batCenter();
var
  validationCenter: Integer;

  begin
   writeln('     Vous avez choisis un centre ville');
   writeln('     ressources necessaires: 4 bois, 400 d''or, 4 outils');
   write('     Validez vous votre choix? (1.oui / 2.non): ');
   readln(validationCenter);
   if validationCenter=1 then
     NbCenter := comparaisonCenter(NbCenter);
  end;

procedure choixbatSo();
var
   choixBatcenterEglise:Integer;
begin
  writeln('     1.centre ville 2.Eglise 3.Entrepot');
  write('     Que voulez vous?: ');
  readln(choixBatcenterEglise);

  if choixBatcenterEglise =1 then
    batCenter()
  else if choixBatcenterEglise= 2 then
    batEglise()
  else if choixBatcenterEglise= 3 then
    batEntrepot();

end;


procedure choixMaisonCitoyen();
var
  validationMaison:Integer;
begin
      writeln('     1.Maison de citoyens ');
      writeln('     ressources necessaires: 2 bois, 50 d''or');
      write('     Souaitez vous construire cette maison? (1.Oui 2.Non): ');
      readln(validationMaison);

  if validationMaison = 1 then
    begin
     NbMaison := comparaisonMaisonCitoyen(NbMaison);
    end;

end;

procedure construction();
var
  construire: Integer;


begin
  writeln('');
  writeln('     Que voulez vous construire?');
  writeln('     1.Maisons      ','2.batiments sociaux      ','3.industrie');
  write('     Que choisissez vous?: ');
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
procedure infomaison();
var
  i : String;
  s : String;
begin

    //en tête
    ecrireenposition2(88,4,'bienvenue au menu de construction');
    ecrireenposition2(15,4,'joueur :' + getPseudo());
    str(GetGold(),s);
    ecrireenposition2(15,5,'or : ' + s);

    //partie information

    dessinerCadreXY(11,12,47,24,simple,15,0);

    ecrireenposition2(26,15,'maisons');
    ColorierZone(12,0,24,34,15);

    str(NbMaison,i);
    ecrireenposition2(15,17,'nombre de maisons : ' + i);
end;

procedure infobatso();

Var
  s : string;    //variable qui convertit un integer en string
  t : string;    //variable qui convertit un integer en string
  u : string;    //variable qui convertit un integer en string
begin

  //partie concernant les bâtiments sociaux

  dessinerCadreXY(66,12,102,24,simple,15,0);

  ecrireenposition2(76,15,'batiments sociaux');
  ColorierZone(12,0,74,94,15);

  str(NbCenter,s);
  ecrireenposition2(70,17,'nombre de centre ville : ' + s);

  str(NbEglise,t);
  ecrireenposition2(70,18,'nombre d''eglises : ' + t);

  str(NbEntrepot,u);
  ecrireenposition2(70,19,'nombre d''enterpots : ' + u);
end;

procedure infoindustrie();
var
  s : string;    //variable qui convertit un integer en string
  t : string;    //variable qui convertit un integer en string
  u : string;    //variable qui convertit un integer en string
  v : string;    //variable qui convertit un integer en string

begin

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

