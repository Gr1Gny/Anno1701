unit UnitCommerce;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, ressource, GestionEcran, entrepot;

//Procedure qui va prendre en valeur d'entrée ce que le joueur souhaite faire, avec quel produit et la quantité
//Procedure qui va prendre en valeur de sortie les nouveaux stocks
procedure boutique ();

implementation

procedure boutique ();
var
   prix: Integer;
   choix: Integer; //Variable qui contient le choix acheter ou vendre
   quoi : Integer; //Variable contenant le produit que l'on souhaite acheter
   cb : Integer;   //Variable contenant la quantité que l'on souhaite acheter
   alea: Integer;

begin
randomize;
alea :=random(3);

if alea = 2 then
begin

  writeln('Le marchand vous rend visite');
  writeln('Ce tour ci, vous pourrez : ');
  writeln('1. Acheter');
  writeln('2. Vendre');
  writeln('3. Quitter');
  writeln('Que voulez vous faire ? ');
  readln(choix);

  while choix <> 3 do
  begin

  writeln('Quel produit ? ');
  writeln('1. Le poisson');
  writeln('2. Le bois');
  writeln('3. Les outils');
  writeln('4. La laine');
  writeln('5. Le tissu');
  readln(quoi);                            //quel produit
  writeln('Combien de ce produit ? ');
  readln(cb);                              //combien de ce produit

  if quoi=1 then
     begin
     prix :=5*cb;
        if choix=1 then begin //mise a jour de la bourse et de l'inventaire suite à l'achat
           setGold(getGold() - prix);
           setFish(getFish()+cb);
           if getFish() > getrsv() then begin //vérification que l'inventaire ne soit pas pleins suite à l'action d'acheter, sinon l'action est annulé
              setFish(getFish()-cb);
              setGold(getGold()+ prix);
              writeln ('Ton inventaire est plein');
           end;
        end
        else if choix=2 then begin //mise a jour de la bourse et de l'inventaire suite à la vente
           setGold(getGold()+ prix);
           setFish(getFish()-cb);
           if getFish() < 0 then begin //vérification que l'inventaire ne soit pas vide suite à l'action d'acheter, sinon l'action est annulé
              setFish(getFish()+cb);
              setGold(getGold()- prix);
              writeln('Si tu fais ca ton inventaire sera plus que vide');
           end;
        end
        else
            writeln('Ton choix d action n''existe pas');
     end
  else if quoi=2 then
     begin
     prix :=10*cb;
        if choix=1 then begin //mise a jour de la bourse et de l'inventaire suite à l'achat
           setGold(getGold() - prix);
           setBois(getBois()+cb);
           if getBois() > 40 then begin //vérification que l'inventaire ne soit pas pleins suite à l'action d'acheter, sinon l'action est annulé
              setBois(getBois()-cb);
              setGold(getGold() + prix);
              writeln ('Ton inventaire est pleins');
           end;
        end
        else if choix=2 then begin //mise a jour de la bourse et de l'inventaire suite à la vente
           setGold(getGold() + prix);
           setBois(getBois()-cb);
           if getBois() < 0 then begin //vérification que l'inventaire ne soit pas vide suite à l'action d'acheter, sinon l'action est annulé
              setBois(getBois()+cb);
              setGold(getGold() - prix);
              writeln('Si tu fais ca ton inventaire sera plus que vide');
           end;
        end
        else
           writeln('Ton choix d''action n''existe pas');
     end
  else if quoi=3 then
     begin
     prix :=10*cb;
        if choix=1 then begin //mise a jour de la bourse et de l'inventaire suite à l'achat
           setGold(getGold() - prix);
           setTools(getTools()+cb);
           if getTools() > 40 then begin //vérification que l'inventaire ne soit pas pleins suite à l'action d'acheter, sinon l'action est annulé
              setTools(getTools()-cb);
              setGold(getGold() + prix);
              writeln ('Ton inventaire est plein');
           end;
        end
        else if choix=2 then begin //mise a jour de la bourse et de l'inventaire suite à la vente
            setGold(getGold() + prix);
            setTools(getTools()-cb);
            if getTools() < 0 then begin //vérification que l'inventaire ne soit pas vide suite à l'action d'acheter, sinon l'action est annulé
               setTools(getTools()+cb);
               setGold(getGold() - prix);
               writeln('Si tu fais ca ton inventaire sera plus que vide');
           end;
        end
        else
            writeln('Ton choix d''action n''existe pas');
       end
  else if quoi=4 then
     begin
     prix :=7*cb;
          if choix=1 then begin //mise a jour de la bourse et de l'inventaire suite à l'achat
             setGold(getGold() - prix);
             setLaine(getLaine + cb);
             if getLaine() > 40 then begin //vérification que l'inventaire ne soit pas pleins suite à l'action d'acheter, sinon l'action est annulé
                setLaine(getLaine - cb);
                setGold(getGold() + prix);
                writeln ('Ton inventaire est plein');
           end;
          end
          else if choix=2 then begin //mise a jour de la bourse et de l'inventaire suite à la vente
              setGold(getGold() + prix);
              setLaine(getLaine - cb);
              if getLaine() < 0 then begin //vérification que l'inventaire ne soit pas vide suite à l'action d'acheter, sinon l'action est annulé
                 setLaine(getLaine + cb);
                 setGold(getGold() - prix);
                 writeln('Si tu fais ca ton inventaire sera plus que vide');
           end;
          end
          else
              writeln('Ton choix d''action n''existe pas');
     end
  else if quoi=5 then
     begin
     prix :=9*cb;
        if choix=1 then begin //mise a jour de la bourse et de l'inventaire suite à l'achat
           setGold(getGold() - prix);
           setTissu(getTissu() + cb);
           if getTissu > 40 then begin //vérification que l'inventaire ne soit pas pleins suite à l'action d'acheter, sinon l'action est annulé
              setTissu(getTissu() - cb);
              setGold(getGold() + prix);
              writeln ('Ton inventaire est plein');
           end;
        end
        else if choix=2 then begin //mise a jour de la bourse et de l'inventaire suite à la vente
            setGold(getGold() + prix);
            setTissu(getTissu() - cb);
            if getTissu < 0 then begin //vérification que l'inventaire ne soit pas vide suite à l'action d'acheter, sinon l'action est annulé
               setTissu(getTissu() + cb);
               setGold(getGold() - prix);
               writeln('Si tu fais ca ton inventaire sera plus que vide');
           end;
        end
        else
            writeln('Ton choix d''action n''existe pas');
     end
  else
  writeln('Ton produit n''existe pas');

  readln();
  effacerEcran();
  writeln('Le marchand vous rend visite');
  writeln('Ce tour ci, vous pourrez : ');
  writeln('1. Acheter');
  writeln('2. Vendre');
  writeln('3. Quitter');
  writeln('Que voulez vous faire ? ');
  readln(choix);


  end;


end;

end;

end.

