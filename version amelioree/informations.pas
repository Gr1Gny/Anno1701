unit informations;

{$mode objfpc}{$H+}
{$codepage utf8}

interface

uses
  Classes, SysUtils, GestionEcran;

//Procédure qui affiche les informations sur le jeu
procedure info();

implementation
procedure info();
begin
  EffacerEcran();
  ecrireEnPosition2(70,19,'Présentation');
  ecrireEnPosition2(50,22,'Les paroles que la reine Anne d’Angleterre vous a prononcées le 12 août 1702 : ');

  ecrireEnPosition2(50,24,'« Prenez votre meilleur bateau et votre meilleure troupe. Remplissez la soute d"equipement et');
  ecrireEnPosition2(50,25,'de fournitures et naviguez vers le coucher du soleil jusqu"a ce que l"epuisement et la fatigue');
  ecrireEnPosition2(50,26,'envahissent l"equipage.');

  ecrireEnPosition2(50,28,'Trouvez une ile fertile, revendiquez-la par mon nom, construisez un camp, et arborez les');
  ecrireEnPosition2(50,29,'couleurs du royaume. Préparez tout et accueillez les nombreux navires qui vous suivront et');
  ecrireEnPosition2(50,30,'transporteront les hommes, les femmes et les enfants pour coloniser ce nouveau monde.');

  ecrireEnPosition2(50,32,'Faire de ces terres encore vierges, la fierté de sa Majesté. Puisse toute l"Europe envier notre');
  ecrireEnPosition2(50,33,'richesse. Mais soyez prêt, car aucun trésor ne suscitera le désir des vautours et des ');
  ecrireEnPosition2(50,34,'serpents. »');

  ecrireEnPosition2(50,36,'Cela fait trois mois que vous êtes allé à la mer. Lorsque l’annonce tant attendu a finalement');
  ecrireEnPosition2(50,37,'retenti, vous étiez entouré de vos plus fidèles.');

  ecrireEnPosition2(50,39,'« Terre ! Terre mon capitaine ! »');
  readln();
end;

end.

