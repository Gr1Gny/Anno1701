unit eventImpromp;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, GestionEcran, procefunct, Tour, ressource;

procedure feuBatiment();

procedure pourriture();

procedure probleme();

procedure ouragan();


procedure setT(val : Integer);
procedure setP(val : Integer);
procedure setO(val : Integer);
procedure initT();
function getT(): Integer;
function getP(): Integer;
function getO(): Integer;
implementation
var
    t: Integer;
    p: Integer;
    O: Integer;

procedure initT();
begin
t:= 0;
p:=0;
O:=0;

end;


function getO(): Integer;
begin

getO:= O;

end;

procedure setO(val : Integer);
begin
O:=val;
end;

procedure setP(val : Integer);
begin
  p:=val
end;

function getP(): Integer;
begin

getP:= p;

end;

function getT(): Integer;
begin

getT:= t;

end;

procedure setT(val : Integer);
begin
  t:=val
end;



procedure ouragan();
var
    rChoice: Integer;
    somme: Integer;
begin

somme:= getBucheron()+getBergerie()+getPeche()+getTissus()+getCenter()+getEglise();

if somme <> 0  then
begin
   if O=getTour()then
      begin
      couleurTexte(4);
      ecrireenposition2(11,38,'Un ouragan frappe votre ile !!');
      couleurTexte(15);

      end

   else if O+1=getTour() then
   begin
   couleurTexte(4);
   ecrireenposition2(11,38,'Il détruit certain de vos batiments');
   couleurTexte(15);
   end
   else if O+2= getTour() then
   begin
   randomize;
   rChoice := random(10)+1;
     if (rChoice = 2) AND (getBucheron()<>0) AND (getBergerie()<>0)  then
     begin
     couleurTexte(4);
     ecrireenposition2(11,38,'vous avez perdu une Bergerie et une cabane de bucherons');
     couleurTexte(15);
     setBucheron(getBucheron()-1);
     setBergerie(getBergerie()-1);
     end
     else if (rChoice = 3) AND (getPeche()<>0) AND (getEglise()<>0) then
     begin
     couleurTexte(4);
     ecrireenposition2(11,38,'vous avez perdu une cabane de pêche et une Eglise');
     couleurTexte(15);
     setPeche(getPeche()-1);
     setEglise(getEglise()-1);
     end
     else if (rChoice = 4) AND (getTissus()<>0) AND (getEglise()<>0) then
     begin
     couleurTexte(4);
     ecrireenposition2(11,38,'vous avez perdu une usine à tissus et une eglise');
     couleurTexte(15);
     setTissus(getTissus()-1);
     setEglise(getEglise()-1);
     end
     else if (rChoice = 1)AND (getBucheron()<>0) AND (getPeche()<>0)  then
     begin
     couleurTexte(4);
     ecrireenposition2(11,38,'vous avez perdu une cabane de pecheur et une cabane de bucheron');
     couleurTexte(15);
     setBucheron(getBucheron()-1);
     setPeche(getPeche()-1);
     end
     else
         ecrireenposition2(11,38,'Aucun batiment n''a ete detruit.');
   end;


end;
end;

procedure pourriture();
var
    poisson: Integer;
    poubelle: Integer;
    s: String;
begin
poisson := getFish();

if poisson > 5 then
begin
   if p=getTour()then
      begin
      couleurTexte(4);
      ecrireenposition2(11,33,'Votre poissons est devenu avarie a cause d''une mauvaise conservation!!!');
      couleurTexte(15);

      end

   else if p+1=getTour() then
   begin
   couleurTexte(4);
   ecrireenposition2(11,33,'vos pecheurs doivent jeter des poissons du stock!!!');
   couleurTexte(15);
   end
   else if p+2= getTour() then
   begin
   randomize;
   poubelle := random(5)+1;
   s:= inttostr(poubelle);
   couleurTexte(4);
   ecrireenposition2(11,33,'fin du tris, vous avez perdu '+s+' poissons');
   couleurTexte(15);
   removeFish(poubelle);
   end;


end;
end;

procedure feuBatiment();

var
    bucherons : Integer;
begin
bucherons := getBucheron();

if bucherons <> 0 then
begin
   if t=getTour()then
      begin
      couleurTexte(4);
      ecrireenposition2(11,35,'Attention, une de vos cabanes de bucherons est en feu !!!');
      couleurTexte(15);

      end

   else if t+1=getTour() then
   begin
   couleurTexte(4);
   ecrireenposition2(11,35,'ca brule encore !!!');
   couleurTexte(15);
   end
   else if t+2= getTour() then
   begin
   couleurTexte(4);
   ecrireenposition2(11,35,'feu maitrisé, vous avez perdu une cabane de bucherons');
   couleurTexte(15);
   setBucheron(getBucheron()-1);
   end;


end;
end;


procedure probleme();
var
    r: Integer;
    luck: Integer;
begin
randomize;

dessinerCadreXY(10,30,120,40,simple,15,0);
ecrireenposition2(60,31,'Alerte');
ColorierZone(12,0,59,66,31);

luck:= random(1000)+1;


if luck = 1 then // cela veut dire qu'il y aura intempérie
begin             //début du choix de l'intempérie
   r := 1;
   if (getTour() = t+1) or (getTour() = t+2) then
   begin
   feuBatiment();
   end
   else
   begin
   if r = 1 then
      setT(getTour());
      feuBatiment();
   end;

end;


if luck = 45 then
begin
  r := random(3)+1;
     if (getTour() = t+1) or (getTour() = t+2) then
     begin
     pourriture();
     end
     else
     begin
     if r = 1 then
        setP(getTour());
        pourriture();
     end;

  end;



if luck = 6 then
begin
  r := random(1)+1;
     if (getTour() = O+1) or (getTour() = O+2) then
     begin
     ouragan();
     end
     else
     begin
     if r = 1 then
        setO(getTour());
        ouragan();
     end;

  end;

end;

end.
