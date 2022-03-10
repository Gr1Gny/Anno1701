unit unitSytemePop;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, unitPresentation, ressource, procefunct, GestionEcran;
//Fonction qui retourne le nombre de colons avec en paramètre le nombre de maison de colons
//(en supposant qu'1 maison de colons contient maximum 3 colons)

//procédure qui affiche notre nombre de colons
procedure nbColons();
//procédures qui permettent aux habitants de consommer des ressources
procedure poisson();
procedure tissu();

//procédures qui correspondent à la production de ressources
procedure nextBois();
procedure nextPoisson();
procedure nextLaine();
procedure nextTissu();

//procédures qui indiquent si il faut construire des centres villes ou églises
procedure centreville();
procedure Eglise();

implementation


procedure nbColons();
begin
  if gethab()>=1 then
  begin
    couleurTexte(15);
    writeln('il y a maintenant ',gethab(),' colons sur votre ile');
    writeln('vos habitants ont produit ',2*gethab(),' or');
    addGold(2*gethab());
  end
  else
  begin
    couleurTexte(15);
    writeln('Vous n''avez pas assez de maison de colons pour en accueillir');
  end;
end;

procedure poisson();
begin
  if getFish() > 1 then     // on consomme du poisson si il y en a assez
    begin
      couleurTexte(2);
      writeln('vos habitants ont consomme 2 poissons');
      removeFish(2);
    end
  else
  begin
    couleurTexte(4);
    writeln('vos habitants veulent du poisson !!!');
  end;
end;

procedure tissu();
begin
  if getTissu() > 1 then      // on utilise du tissu si il y en a assez
    begin
    couleurTexte(2);
      writeln('vos habitants ont consommé 2 tissu pour s''habiller');
      removeTissu(2);
    end
  else
  begin
    couleurTexte(4);
    writeln('vos habitants veulent du Tissu pour faire des vetements!!!');
  end;
  writeln('');
end;

// on devra construire des églises et centres villes en fonction du nombre d'habitant

procedure centreville();
begin
  if ((gethab() div 25) >= getCenter()) AND (gethab() > 4) then
  begin
    couleurTexte(4);
    writeln('vous devez construire des centres villes');
  end;
end;

procedure Eglise();
begin
  if ((gethab() div 35) >= getEglise()) AND (gethab() > 12) then
  begin
    couleurTexte(4);
    writeln('vous devez construire des eglises');
  end;
end;

procedure nextBois();
begin
  addBois(getBucheron());
  couleurTexte(15);
  writeln('');
  if getBois() > 40 then
  begin
    setBois(40);
    writeln('vos habitants ne peuvent pas produire du bois mais vos reserves sont plaines, vous en avez maintenant ',getBois());
  end
  else if getBucheron() = 0 then
  begin
    writeln('vos habitants n''ont pas produits de bois, vous en avez toujours ',getBois());
  end
  else
    writeln('vos habitants ont produits du bois, vous en avez maintenant ',getBois());
end;

procedure nextPoisson();
begin
  addBois(getPeche());
  if getFish() > 40 then
  begin
    setFish(40);
    writeln('vos habitants ne peuvent pas pecher du poisson mais vos reserves sont pleines, vous en avez maintenant ',getFish());
  end
  else if getPeche() = 0 then
  begin
    writeln('vos habitants n''ont pas produits de poisson, vous en avez toujours ',getFish());
  end
  else
  begin
    addFish(getPeche);
    writeln('vos habitants ont peche du poisson, vous en avez maintenant ',getFish());
  end;
end;

procedure nextLaine();
begin
  addBois(getBergerie());
  if getLaine() > 40 then
  begin
    setFish(40);
    writeln('vos habitants ne peuvent pas produire de la laine car vos reserves sont pleines, vous en avez maintenant ',getLaine());
  end
  else if getBergerie() = 0 then
  begin
    writeln('vos habitants n''ont pas produits de laine, vous en avez toujours ',getLaine());
  end
  else
  begin
    addLaine(getBergerie);
    writeln('vos habitants ont produits de la laine, vous en avez maintenant ',getLaine());
  end;
end;

procedure nextTissu();
var
  n : Integer;  //variable de type entier qui permet de convertir la laine en tissu
begin
  addBois(getTissus());
  if getTissu() > 40 then
  begin
    setFish(40);
    writeln('vos habitants ne peuvent pas produire de tissu car vos reserves sont pleines, vous en avez maintenant ',getTissu());
  end
  else if getTissus() = 0 then
  begin
    writeln('vos habitants n''ont pas produits de tissu, vous en avez toujours ',getTissu());
  end
  else
  begin
    if getTissus < 3 then
    begin
      n := getLaine() div 3;
      setTissu(n);
      n := getLaine - n;
      setLaine(getLaine() - n);
    end
    else
    begin
      n := getLaine() div 2;
      setTissu(n);
      n := getLaine - n;
      setLaine(getLaine() - n);
    end;
    writeln('vos habitants ont produits du tissu, vous en avez maintenant ',getTissu());
  end;
end;

end.

