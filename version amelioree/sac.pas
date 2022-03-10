unit sac;

{$mode objfpc}{$H+}
{$codepage utf8}

interface

uses
  Classes, SysUtils, ressource, unitchantiernaval, unitPresentation, unitSoldats, procefunct, entrepot, gestionEcran;

// on stock ici les ressources de notre première ile
procedure updatesac();
// on stock ici les ressources de notre sdeuxième ile
procedure updatesac2();
// on initilaise ici les ressources de base de l'ile à coloniser
procedure inisac2();
// ces deux procédures permettent de pas passer d'une ile à l'autre
procedure applysac1();
procedure applysac2();
// on initialise dans le programme principal les variables utiles dans cette unité
procedure inicol();
// procédure qui correspond à la page de colonisation
procedure pagecolonisation();
// procédure qui permet de se donner des ressources (Godmod)
procedure GM();

implementation

var

// on va stocker dans ces variables toutes les ressources, les colons, les soldats, les bateaux ...  des deux iles
  boissac,lainesac,tissusac,poissonsac,outilssac,batnavalsac,colonssac,soldatssac,BCPsac,BCMsac,
  BCGsac,BVPsac,BVMsac,BVGsac,maisonsac,eglisesac,centersac,entrepotsac,cabanepechesac,cabanebuchesac,bergeriesac,usinetissusac : Integer;

  boissac2,lainesac2,tissusac2,poissonsac2,outilssac2,batnavalsac2,colonssac2,soldatssac2,BCPsac2,BCMsac2,
  BCGsac2,BVPsac2,BVMsac2,BVGsac2,maisonsac2,eglisesac2,centersac2,entrepotsac2,cabanepechesac2,cabanebuchesac2,bergeriesac2,usinetissusac2 : Integer;

  Nile,Nile2 : String;

  colonisation,colonisation2 : Integer;

procedure inicol();
begin
  colonisation := 0;
  colonisation2 := 0;
end;

procedure updatesac();
begin

  // on met toutes les données de l'ile une dans le sac

  boissac := getBois();
  lainesac := getLaine();
  tissusac := getTissu();
  poissonsac := getFish();
  outilssac := getTools();
  batnavalsac := getnbBatNaval();
  colonssac := gethab();
  soldatssac := getSoldats();
  BCPsac := CommercePetit();
  BCMsac := CommerceMoyen();
  BCGsac := CommerceGrand();
  BVPsac := ColonisationPetit();
  BVMsac := ColonisationMoyen();
  BVGsac := ColonisationGrand();
  maisonsac := getMaison();
  eglisesac := getEglise();
  centersac := getCenter();
  entrepotsac := getrsv();
  cabanepechesac := getPeche();
  cabanebuchesac := getBucheron();
  bergeriesac := getBergerie();
  usinetissusac := getTissus();
  Nile := getNomIle();

end;

procedure updatesac2();
  begin

  // on met toutes les données de l'ile deux dans le sac

  boissac2 := getBois();
  lainesac2 := getLaine();
  tissusac2 := getTissu();
  poissonsac2 := getFish();
  outilssac2 := getTools();
  batnavalsac2 := getnbBatNaval();
  colonssac2 := gethab();
  soldatssac2 := getSoldats();
  BCPsac2 := CommercePetit();
  BCMsac2 := CommerceMoyen();
  BCGsac2 := CommerceGrand();
  BVPsac2 := ColonisationPetit();
  BVMsac2 := ColonisationMoyen();
  BVGsac2 := ColonisationGrand();
  maisonsac2 := getMaison();
  eglisesac2 := getEglise();
  centersac2 := getCenter();
  entrepotsac2 := getrsv();
  cabanepechesac2 := getPeche();
  cabanebuchesac2 := getBucheron();
  bergeriesac2 := getBergerie();
  usinetissusac2 := getTissus();
  Nile2 := getNomIle();

end;

procedure applysac1();
begin

  // on remplace toutes les données de l'ile 2 par celles de l'ile 1

  setBois(boissac);
  setLaine(lainesac);
  setTissu(tissusac);
  setFish(poissonsac);
  setTools(outilssac);
  setnbBatNaval(batnavalsac);
  newhab(colonssac);
  setSoldats(soldatssac);
  setCommercePetit(BCPsac);
  setCommerceMoyen(BCMsac);
  setCommerceGrand(BCGsac);
  setColonisationPetit(BVPsac);
  setColonisationMoyen(BVMsac);
  setColonisationGrand(BVGsac);
  setMaison(maisonsac);
  setEglise(eglisesac);
  setCenter(centersac);
  setrsv(entrepotsac);
  setPeche(cabanepechesac);
  setBucheron(cabanebuchesac);
  setBergerie(bergeriesac);
  setTissus(usinetissusac);
  setNomIle(NIle);
end;

procedure applysac2();
begin

  // on remplace toutes les données de l'ile 2 par celles de l'ile 1

  setBois(boissac2);
  setLaine(lainesac2);
  setTissu(tissusac2);
  setFish(poissonsac2);
  setTools(outilssac2);
  setnbBatNaval(batnavalsac2);
  newhab(colonssac2);
  setSoldats(soldatssac2);
  setCommercePetit(BCPsac2);
  setCommerceMoyen(BCMsac2);
  setCommerceGrand(BCGsac2);
  setColonisationPetit(BVPsac2);
  setColonisationMoyen(BVMsac2);
  setColonisationGrand(BVGsac2);
  setMaison(maisonsac2);
  setEglise(eglisesac2);
  setCenter(centersac2);
  setrsv(entrepotsac2);
  setPeche(cabanepechesac2);
  setBucheron(cabanebuchesac2);
  setBergerie(bergeriesac2);
  setTissus(usinetissusac2);
  setNomIle(NIle2);
end;

procedure inisac2();
begin

  // on initialise toutes les données de l'ile 2

  setBois(40);
  setLaine(10);
  setTissu(10);
  setFish(10);
  setTools(40);
  setnbBatNaval(0);
  newhab(15);
  setSoldats(0);
  setCommercePetit(0);
  setCommerceMoyen(0);
  setCommerceGrand(0);
  setColonisationPetit(0);
  setColonisationMoyen(0);
  setColonisationGrand(0);
  setMaison(5);
  setEglise(1);
  setCenter(0);
  setrsv(40);
  setPeche(0);
  setBucheron(2);
  setBergerie(0);
  setTissus(0);
  setNomIle('wiskhey Pick')
end;

procedure pagecolonisation();    // texte d'explicatiobn + choix de colonisation
var
  choix : Integer;
  i : Integer;
begin
  if colonisation = 0 then

  begin

    EffacerEcran();
    writeln('');
    writeln('');
    writeln('          Bonjour chere colonisateur !');
    writeln('          Si vous souhaitez colonisez une autre ile, c''est que la votre doit être déja suffisament dévellopé.');
    writeln('          C''est pourquoi vous ne pouvez pas vous lancez à la conquête de lîle voisine sans avoir au moins 80 colons sur la votre.');
    writeln('          Mais si votre ile est assez developpé, alors n''hesitez pas et lancez vous à l''aventure');
    writeln('          Pour pouvoir faire face aux troupes ennemies et pouvoir coloniser Whiskey Peak, vous devrez posseder : ');
    writeln('          2 petits navires de colonisation, 2 navires standards ainsi que deux grands navires');
    writeln('          Ces navires devront eux aussi être accompagnés de soldats, 80 soldats suffiront.');

    writeln('          si vous sentez prêt à découvrir le vaste monde, allons-y !');
    writeln('');
    writeln('          saisissez 1 pour partir à l''aventure ou saisissez 2 pour retourner voius preparer sur votre île : ');
    choix := 0;

    while (choix <> 1) AND (choix <> 2) do
    begin
      readln(choix);
      if (choix = 1) AND (ColonisationPetit() > 2) AND (ColonisationMoyen() > 2) AND (ColonisationGrand() > 2) AND (getSoldats > 80) then
      // on a vérifié qu'on a assez de soldats et de bateauxs
      begin
        colonisation := colonisation + 1;
        i := 20;
        while i > 0 do
        begin

          // TIMER de 20 secondes qui permet aux bateaux de se rendre sur l'ile à coloniser
          effacerEcran();
          writeln('');
          writeln('     vos navires arrivent dans ', i ,' secondes');
          sleep(1000);
          i := i - 1;

        end;

        effacerEcran();
        writeln('');
        writeln('     vous pouvez des maintenant acceder a Whiskey Peak depuis votre ile principale');
        readln();
      end;
    end;

  end
  else
    if colonisation2 = 0 then
      begin

       updatesac();
       inisac2();
       colonisation2 := colonisation2 + 1;
       EffacerEcran();
       writeln('');
       writeln('     changement d''ile en cours');
       sleep(4000);

      end

    else
      begin
      if (colonisation2 mod 2) = 1 then       // permet d'changer le contenu des deux sacs
        begin

          updatesac2();
          applysac1();

        end

      else
        begin                                  // permet d'changer le contenu des deux sacs

          updatesac();
          applysac2();

        end;
        colonisation2 := colonisation2 + 1;
        EffacerEcran();
        writeln('');
        writeln('     changement d''ile en cours');
        sleep(4000);
      end;

end;

procedure GM();
var
  res : Integer;
  nb : Integer;
begin

  EffacerEcran();                                    // on affiche ici les ressources de l'ile actuelle
  writeln('');
  writeln('0.        Or : ',getGold());
  writeln('');
  writeln('1.        bois : ',getBois());
  writeln('2.        laine : ',getLaine());
  writeln('3.        tissu : ',getTissu());
  writeln('4.        poisson : ',getFish());
  writeln('5.        outils : ',getTools());

  writeln('');
  writeln('          quelle ressource souhaitez vous obtenir ? (0..5/6 pour quitter) : ');
  readln(res);
  if res <> 6 then                                    // 6 permet de quitter le GM
    begin
  writeln('');
  writeln('          combien en voulez vous ? faites attention a ce que vos entrepots puissent les contenir ! : ');
  readln(nb);                                         // on choisit combien de ressources on souhaite ajouter
    case res of
      0 : addGold(nb);
      1 : addBois(nb);
      2 : addLaine(nb);
      3 : addTissu(nb);
      4 : addFish(nb);
      5 : addTools(nb);

    end;
    end;

    // ces conditions permettent de ne pas dépasser les réserves
    if getBois() > getrsv() then setBois(getrsv());
    if getLaine() > getrsv() then setLaine(getrsv());
    if getTissu() > getrsv() then setTissu(getrsv());
    if getFish() > getrsv() then setFish(getrsv());
    if getTools() > getrsv() then setTools(getrsv());

end;


end.

