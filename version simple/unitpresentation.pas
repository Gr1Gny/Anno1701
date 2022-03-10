unit unitPresentation;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, GestionEcran, ressource, procefunct, unitAccueil;

type Personnage = record
    nom : String;
end;


//Fonction qui permet de genérer aléatoirement un nom d'île
function randomNomIle(t:array of String):String;
//Fonction qui permet de générer aléatoirement la fertilite
function randomFertilite(t:array of String):String;
//Fonction qui permet de générer aléatoirement la taille de l'ile
function randomTaille(t:array of String):String;
//procedure permettant l'affichage d'informations concernant'ile
procedure infoIle();
procedure infoHabitant();
procedure infoRessources();

//procédure qui permet d'initialiser les tableaux
procedure initab();
//procédures qui permettent d'initialiser le nombre d'habitant, de le modifier et de le récupérer
procedure inihab();
procedure sethab();
function gethab(): Integer;

implementation

var
  hab : Integer;
  TFert : array [0..4] of String;        //tableau qui permet d'afficher dans quel domaines la terre est fertile de manière aléatoire
  TNomIle : array [0..13] of String;     //tableau qui permet d'afficher le nom de l'île de manière aléatoire
  TTaille : array[0..5] of String;       //tableau qui permet d'afficher la taille de l'ile de manière aléatoire
  Fert : String;                         //variable qui contient les informations cencernant la fertilité
  NomIle : String;                       //varialbe qui contient le nom de l'Ile
  Taille : String;                       //variable qui contient la taille de l'Ile

procedure initab();
var
  i : Integer;
begin
    //on commence par initialiser les tableaux permettant d'afficher des valeurs différentes et aléatoirement à chaque parties

  for i:=0 to 13 do
       TNomIle[i]:='0';      //tableau concernant le nom de l'île

  for i:=0 to 4 do           //tableau concernant les terres fertiles
       TFert[i]:='0';

  for i:=0 to 5 do           //tableau voncernant la taille de l'île
       TTaille[i]:='0';

  NomIle := randomNomIle(TNomIle);
  Fert := randomFertilite(TFert);
  Taille := randomTaille(TTaille);
end;

procedure inihab();
begin
  hab := 0;
end;

procedure sethab();
begin
  hab := getMaison()*3;
end;

function gethab(): Integer;
begin
  gethab := hab;
end;

function randomNomIle(t:array of String):String;
begin
    t[0]:='The Collapsing Island';
    t[1]:='The Tossing Chain';
    t[2]:='The Neglected Refuge';
    t[3]:='The Plain Skerry';
    t[4]:='Caraduff Reef';
    t[5]:='Rosevista Chain';
    t[6]:='Tecumlams Peninsula';
    t[7]:='Lumboia Isle';
    t[8]:='Scarsstino Holm';
    t[9]:='Wincam Reef';
    t[10]:='Sutby Refuge';
    t[11]:='Malarnia Island';
    t[12]:='Briwood Islet';
    t[13]:='Grimtonas Key';

    randomNomIle := t[random(13)];
end;

function randomFertilite(t:array of String):String;
var
  a,b,c : Integer;
  go:boolean;
begin
    t[0]:='Houblon';
    t[1]:='Miel';
    t[2]:='Tabac';
    t[3]:='Sucre';
    t[4]:='Cacao';

    go:=false;

    a:=random(5);
    b:=random(5);
    c:=random(5);
    while(go<>true) do
    begin
        if (a<>b) then
        begin
           if(b<>c) then
           begin
              if(a<>c)then
              begin
                randomFertilite := (t[a]+', '+t[b]+', '+t[c]);
                go:=true;
              end
              else
                a:=random(5);
                b:=random(5);
                c:=random(5);
             end
           else
             a:=random(5);
             b:=random(5);
             c:=random(5);
           end
        else
          a:=random(5);
          b:=random(5);
          c:=random(5);
    end;
end;

function randomTaille(t:array of String):String;
begin
    t[0]:='tres petite';
    t[1]:='petite';
    t[2]:='moyenne';
    t[3]:='grande';
    t[4]:='enorme';
    t[5]:='immense';

    randomTaille := t[random(6)];
end;

procedure infoIle();

var
  HF : string;
  s : string;    //variable qui convertit un integer en string

begin

  if getSexe = 'H' then
    HF := 'Homme'
  else
    HF := 'Femme';

    //en tête
    ecrireenposition2(88,4,'bienvenue sur votre ile');
    ecrireenposition2(15,4,'joueur :' + getPseudo());
    str(getGold(),s);
    ecrireenposition2(15,5,'or : '+s);

    //partie information

    dessinerCadreXY(11,12,47,24,simple,15,0);

    ecrireenposition2(24,15,'Information');
    ColorierZone(12,0,22,36,15);

    ecrireenposition2(15,17,'nom de l''ile : ' + NomIle);
    ecrireenposition2(15,18,'proprietaire : ' + getPseudo);
    ecrireenposition2(15,19,'sexe : ' + HF);
    ecrireenposition2(15,20,'taille : ' + Taille);
    ecrireenposition2(15,21,'fertilite : ' + Fert);
end;

procedure infoHabitant();

Var
  s : string;    //variable qui convertit un integer en string

begin

  //partie concernant les habitants

  dessinerCadreXY(66,12,102,24,simple,15,0);

  ecrireenposition2(80,15,'Habitants');
  ColorierZone(12,0,78,90,15);

  str(hab,s);
  ecrireenposition2(70,17,'nombre d''habitants : ' + s);
end;

procedure infoRessources();

var
  s : string;    //variable qui convertit un integer en string
  t : string;    //variable qui convertit un integer en string
  u : string;    //variable qui convertit un integer en string
  v : string;    //variable qui convertit un integer en string
  w : string;    //variable qui convertit un integer en string

begin
  //partie Ressources

  dessinerCadreXY(123,12,159,24,simple,15,0);

  ecrireenposition2(136,15,'Ressources');
  ColorierZone(12,0,134,147,15);

  str(getBois(),s);
  s := s + '/40';
  ecrireenposition2(127,17,'Bois disponible: ' + s);

  str(getTools(),t);
  t := t + '/40';
  ecrireenposition2(127,18,'Outils disponible: ' + t);

  str(getFish(),u);
  u := u + '/40';
  ecrireenposition2(127,19,'Poisson disponible: ' + u);

  str(getLaine(),v);
  v := v + '/40';
  ecrireenposition2(127,20,'Laine disponible: ' + v);

  str(getTissu(),w);
  w := w + '/40';
  ecrireenposition2(127,21,'Tissu disponible: ' + w);

end;

end.
