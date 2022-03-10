unit unitchantiernaval;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, GestionEcran, ressource, unitAccueil, procefunct;

procedure inibateau();
procedure choixBatNaval();
procedure comparaisonNaval();
procedure initNaval();
procedure VerifBatNaval();
procedure bateau();
procedure setNaval(val : Integer);
procedure choixCommerce();
procedure choixColonisation();



function getNaval(): Integer;

function checkCommercePetit(petitCommerce: Integer): Integer;
function checkCommerceMoyen(MoyenCommerce: Integer): Integer;
function checkCommerceGrand(GrandCommerce: Integer): Integer;

function checkColonisationGrand(GrandColonisation: Integer): Integer;
function checkColonisationPetit(PetitColonisation: Integer): Integer;
function checkColonisationMoyen(MoyenColonisation: Integer): Integer;

function CommercePetit(): Integer;
function CommerceMoyen(): Integer;
function CommerceGrand(): Integer;

function ColonisationPetit(): Integer;
function ColonisationMoyen(): Integer;
function ColonisationGrand(): Integer;

procedure setCommercePetit(val:Integer);
procedure setCommerceMoyen(val:Integer);
procedure setCommerceGrand(val:Integer);

procedure setColonisationPetit(val:Integer);
procedure setColonisationMoyen(val:Integer);
procedure setColonisationGrand(val:Integer);

function getnbBatNaval(): Integer;
procedure setnbBatNaval(val:Integer);
implementation

var
  nbBatNaval: Integer;
  //nbBatColonisation: Integer;
  //nbBatCommerce: Integer;
  petitCommerce: Integer;
  MoyenCommerce: Integer;
  GrandCommerce: Integer;
  GrandColonisation: Integer;
  PetitColonisation: Integer;
  MoyenColonisation: Integer;

procedure setCommercePetit(val:Integer);
begin
  petitCommerce := val;
end;

procedure setCommerceMoyen(val:Integer);
begin
  MoyenCommerce := val;
end;

procedure setCommerceGrand(val:Integer);
begin
  GrandCommerce := val;
end;


procedure setColonisationPetit(val:Integer);
begin
  PetitColonisation := val;
end;

procedure setColonisationMoyen(val:Integer);
begin
  MoyenColonisation := val;
end;

procedure setColonisationGrand(val:Integer);
begin
  GrandColonisation := val;
end;


procedure setnbBatNaval(val : Integer);
begin
  nbBatNaval := val;
end;

function CommercePetit(): Integer;
begin
  CommercePetit := petitCommerce;
end;

function CommerceMoyen(): Integer;
begin
  CommerceMoyen := MoyenCommerce;
end;

function CommerceGrand(): Integer;
begin
  CommerceGrand := GrandCommerce;
end;

function ColonisationPetit(): Integer;
begin
  ColonisationPetit := PetitColonisation;
end;

function ColonisationMoyen(): Integer;
begin
  ColonisationMoyen := MoyenColonisation;
end;

function ColonisationGrand(): Integer;
begin
  ColonisationGrand := GrandColonisation;
end;


function getnbBatNaval():Integer;
begin
  getnbBatNaval := nbBatNaval;
end;

procedure inibateau();

begin
petitCommerce := 0;
MoyenCommerce := 0;
GrandCommerce := 0;
PetitColonisation :=0;
MoyenColonisation:= 0;


end;

procedure setNaval(val : Integer);
begin
     nbBatNaval := val;
end;

function getNaval(): Integer;
begin
     getNaval:= nbBatNaval;
end;

function checkColonisationMoyen(MoyenColonisation: Integer): Integer;
const
  nbBoisBesoin= 10;
  nbOutilsBesoin= 2;
  nbOrBesoin = 1000;

begin

  if (getBois() >= nbBoisBesoin) AND (getGold() >= nbOrBesoin) AND (getTools >= nbOutilsBesoin)  then
    begin
    MoyenColonisation := MoyenColonisation + 1;
    checkColonisationMoyen := MoyenColonisation;
    removeBois(10);
    removeGold(1000);
    removeTools(2);
    writeln('');
    couleurTexte(2);
    writeln('     construction reussie');
    couleurTexte(15);
    readln();
    end
  else
  begin
    checkColonisationMoyen := MoyenColonisation;
      writeln('');
      couleurTexte(4);
      writeln('     pas assez de ressources');
      couleurTexte(15);
      readln();

  end;



end;




function checkColonisationPetit(PetitColonisation: Integer): Integer;
const
  nbBoisBesoin= 5;
  nbOutilsBesoin= 1;
  nbOrBesoin = 500;

begin

  if (getBois() >= nbBoisBesoin) AND (getGold() >= nbOrBesoin) AND (getTools >= nbOutilsBesoin)  then
    begin
    PetitColonisation := PetitColonisation + 1;
    checkColonisationPetit := PetitColonisation;
    removeBois(5);
    removeGold(500);
    removeTools(1);
    writeln('');
    couleurTexte(2);
    writeln('     construction reussie');
    couleurTexte(15);
    readln();
    end
  else
  begin
    checkColonisationPetit := PetitColonisation;
      writeln('');
      couleurTexte(4);
      writeln('     pas assez de ressources');
      couleurTexte(15);
      readln();

  end;



end;



function checkColonisationGrand(GrandColonisation: Integer): Integer;
const
  nbBoisBesoin= 20;
  nbOutilsBesoin= 3;
  nbOrBesoin = 1500;

begin

  if (getBois() >= nbBoisBesoin) AND (getGold() >= nbOrBesoin) AND (getTools >= nbOutilsBesoin)  then
    begin
    GrandColonisation := GrandColonisation + 1;
    checkColonisationGrand := GrandColonisation;
    removeBois(20);
    removeGold(1500);
    removeTools(3);
    writeln('');
    couleurTexte(2);
    writeln('     construction reussie');
    couleurTexte(15);
    readln();
    end
  else
  begin
    checkColonisationGrand := GrandColonisation;
      writeln('');
      couleurTexte(4);
      writeln('     pas assez de ressources');
      couleurTexte(15);
      readln();

  end;

end;

function checkCommerceGrand(GrandCommerce: Integer): Integer;
const
  nbBoisBesoin= 20;
  nbOutilsBesoin= 3;
  nbOrBesoin = 1500;

begin

  if (getBois() >= nbBoisBesoin) AND (getGold() >= nbOrBesoin) AND (getTools >= nbOutilsBesoin)  then
    begin
    GrandCommerce := GrandCommerce + 1;
    checkCommerceGrand := GrandCommerce;
    removeBois(20);
    removeGold(1500);
    removeTools(3);
    writeln('');
    couleurTexte(2);
    writeln('     construction reussie');
    couleurTexte(15);
    readln();
    end
  else
  begin
    checkCommerceGrand := GrandCommerce;
      writeln('');
      couleurTexte(4);
      writeln('     pas assez de ressources');
      couleurTexte(15);
      readln();

  end;



end;
function checkCommerceMoyen(MoyenCommerce: Integer): Integer;
const
  nbBoisBesoin= 10;
  nbOutilsBesoin= 2;
  nbOrBesoin = 1000;

begin

  if (getBois() >= nbBoisBesoin) AND (getGold() >= nbOrBesoin) AND (getTools >= nbOutilsBesoin)  then
    begin
    MoyenCommerce := MoyenCommerce + 1;
    checkCommerceMoyen := MoyenCommerce;
    removeBois(10);
    removeGold(1000);
    removeTools(2);
    writeln('');
    couleurTexte(2);
    writeln('     construction reussie');
    couleurTexte(15);
    readln();
    end
  else
  begin
    checkCommerceMoyen := MoyenCommerce;
      writeln('');
      couleurTexte(4);
      writeln('     pas assez de ressources');
      couleurTexte(15);
      readln();

  end;



end;


function checkCommercePetit(petitCommerce: Integer): Integer;
const
  nbBoisBesoin= 5;
  nbOutilsBesoin= 1;
  nbOrBesoin = 500;

begin

  if (getBois() >= nbBoisBesoin) AND (getGold() >= nbOrBesoin) AND (getTools >= nbOutilsBesoin)  then
    begin
    petitCommerce := petitCommerce + 1;
    checkCommercePetit := petitCommerce;
    removeBois(5);
    removeGold(500);
    removeTools(1);
    writeln('');
    couleurTexte(2);
    writeln('     construction reussie');
    couleurTexte(15);
    readln();
    end
  else
  begin
    checkCommercePetit := petitCommerce;
      writeln('');
      couleurTexte(4);
      writeln('     pas assez de ressources');
      couleurTexte(15);
      readln();

  end;



end;

procedure choixCommerce();

var
   validationcommerce: Integer;

begin

writeln('Vous avez choisis un bateau de commerce, choisissez sa taille: ');
writeln('petit bateau: Ressources necessaires: 5 bois, 500 d''or, 1 outils');
writeln('moyen bateau: Ressources necessaires: 10 bois, 1000 d''or, 2 outils');
writeln('Grand bateau: Ressources necessaires: 20 bois, 1500 d''or, 3 outils');
write('Validez vous votre choix? (1.petit / 2.moyen / 3.grand): ');
readln(validationcommerce);

if validationcommerce = 1 then
begin
  petitCommerce := checkCommercePetit(petitCommerce);

end
else if validationcommerce = 2 then
begin
MoyenCommerce:= checkCommerceMoyen(MoyenCommerce);
end
else if validationcommerce = 3 then

GrandCommerce:= checkCommerceGrand(GrandCommerce);

end;



procedure choixColonisation();

var
   validationcolonisation: Integer;

begin

writeln('Vous avez choisis un bateau de colonisation, choisissez sa taille: ');
writeln('petit bateau: Ressources necessaires: 5 bois, 500 d''or, 1 outils');
writeln('moyen bateau: Ressources necessaires: 10 bois, 1000 d''or, 2 outils');
writeln('Grand bateau: Ressources necessaires: 20 bois, 1500 d''or, 3 outils');
write('Validez vous votre choix? (1.petit / 2.moyen / 3.grand): ');
readln(validationcolonisation);

if validationcolonisation = 1 then
begin
PetitColonisation:= checkColonisationPetit(PetitColonisation);
end
else if validationcolonisation = 2 then
begin
MoyenColonisation:= checkColonisationMoyen(MoyenColonisation);
end
else if validationcolonisation = 3 then
begin
GrandColonisation:= checkColonisationGrand(GrandColonisation);
end
end;



procedure bateau();

var
  validaConstru: Integer;
  s: String;
  s1: String;
  s2:String;
  s3:String;
  s4:String;
  s5: String;

begin
effacerEcran();
dessinerCadreXY(18,4,46,24,simple,15,0);
ecrireenposition2(24,5,'Bateau de commerce');
ColorierZone(12,0,23,42,5);

ecrireenposition2(20,8,'petits bateaux: ');
s:= inttostr(petitCommerce);
ecrireenposition2(20,10,'Vous avez '+s+' petits bateaux');
ecrireenposition2(20,12,'bateaux: ');
s1 := inttostr(MoyenCommerce);
ecrireenposition2(20,14,'Vous avez '+s1+' bateaux');
ecrireenposition2(20,16,'grands bateaux: ');
s2 := inttostr(GrandCommerce);
ecrireenposition2(20,18,'Vous avez '+s2+' grand bateaux');



dessinerCadreXY(60,4,88,24,simple,15,0);
ecrireenposition2(64,5,'Bateau de colonisation');
ColorierZone(12,0,63,86,5);

ecrireenposition2(61,8,'petits bateaux: ');
s4:= inttostr(PetitColonisation);
ecrireenposition2(61,10,'Vous avez '+s4+' petit bateaux');
ecrireenposition2(61,12,'bateaux: ');
s5:= inttostr(MoyenColonisation);
ecrireenposition2(61,14,'Vous avez '+s5+' bateaux');
ecrireenposition2(61,16,'grands bateaux: ');
s3:= inttostr(GrandColonisation);
ecrireenposition2(61,18,'Vous avez '+s3+' grands bateaux');

ecrireenposition2(0,28,'1. Creer un bateau (1.Commerce/2.Colonisation): ');
readln(validaConstru);

if validaConstru = 1 then
begin
   choixCommerce();
end
else if validaConstru = 2 then
   choixColonisation();

end;


procedure initNaval();

begin

nbBatNaval:=0;

end;

procedure VerifBatNaval();

begin
      if getNaval() = 0 then
      begin
       choixBatNaval();

      end
      else if getNaval() = 1 then
          bateau();


end;

procedure comparaisonNaval();

const
  nbLaineBesoin= 12;
  nbBoisBesoin= 20;
  nbOutilsBesoin= 5;
  nbOrBesoin = 1000;
begin

  if (getBois() >=nbBoisBesoin) {AND (getLaine() >=nbLaineBesoin)} AND (getTools() >=nbOutilsBesoin) AND (getGold() >=nbOrBesoin) then
    begin
      setNaval(1);
      removeBois(20);
      removeGold(1000);
      removeTools(5);
      //removeLaine(12);
    end

end;

procedure choixBatNaval();

var
  validationNaval:Integer;

begin
  writeln('     Vous avez choisis un chantier naval');
  writeln('     ressources necessaires: 20 bois, 12 laines, 1000 d''or, 5 outils');
  write('     Validez vous votre choix? (1.oui / 2.non): ');
  readln(validationNaval);

  if validationNaval = 1 then
  begin
    comparaisonNaval();
    writeln('');
    couleurTexte(2);
    writeln('     construction reussie');
    couleurTexte(15);
    readln();

  end;






end;

end.

