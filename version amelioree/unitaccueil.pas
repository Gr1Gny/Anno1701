unit unitAccueil;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, GestionEcran, pseudosexe, ressource;

//procédure qui permet le menu de lancement du jeu
procedure play();
function GetValPlay(): String;
//procédures qui ca permettent au joueur de choisir son pseudo et son sexe et les récupérer par la suite
procedure setPseudo();
function getPseudo():String;
procedure setSexe();
function getSexe():Char;
//procédure qui permet l'affichage du logo
procedure logobateau();
procedure difficulte();

implementation

var
  sexe : Char;                           //variable de type Char qui correspond au sexe du joueur;
  pseudo : string;                       //variable qui contient le pseudo du joueur
  jouer : String;                       //variable de type entier qui permet de savoir si l'utilisateur veut jouer ou non

procedure setPseudo();
begin
  pseudo := '';
  pseudo := ChoixPseudo(pseudo);    //on fait appel à cette fonction pour que l'utilisateur puisse choisir son pseudo
  writeln(pseudo);
end;

function getPseudo():String;
begin
  getPseudo := pseudo;
end;

procedure setSexe();
begin
  //on initialise la variable sexe à la lettre A ce qui ne correspond à aucun sexe

  sexe := 'A';
  sexe := ChoixSexe(sexe, pseudo);          //on fait appel à cette fonction pour que l'utilisateur puisse choisir son sexe
end;

function getSexe():Char;
begin
  getSexe := sexe;
end;

function GetValPlay(): String;
begin
  GetValPlay := jouer;
end;

procedure play();
begin
    //on initialise la variable jouer à 0 ce qui ne correspond à aucune option

  jouer := '0';

  while (jouer <> '1') AND (jouer <> '2') do    // 1 = jouer et 2 = quitter
  begin
    EffacerEcran();
    logobateau();
    ecrireenposition2(5,7,'pour jouer, saisissez 1 et pour quitter, saisissez 2 : ');
    readln(jouer);

  end;
end;

procedure logobateau();
begin
  writeln(''); writeln(''); writeln(''); writeln(''); writeln(''); writeln('');
  writeln('                                                                                                ##  #                                          ');
  writeln('                                                                                                ##  ##                                         ');
  writeln('                                                                                                ##  ###                                        ');
  writeln('                                                                                                ##  ####                                       ');
  writeln('                                                                                                ##  #####                                      ');
  writeln('                                                                                             #  ##  ######                                     ');
  writeln('                                                                                           ###  ##  #######                                    ');
  writeln('                                                                                         #####  ##  ########                                   ');
  writeln('                                                                                       #######  ##  #########                                  ');
  writeln('                                                                                     #########  ##  ##########                                 ');
  writeln('                                                                                   ###########  ##  ###########                                ');
  writeln('                                                                                 #############  ##  ############                               ');
  writeln('                                                                               ###############  ##  #############                              ');
  writeln('                                                                             #################  ##  ##############                             ');
  writeln('                                                                           ###################  ##  ###############                            ');
  writeln('                                                                         #####################  ##  ################                           ');
  writeln('                                                                       #######################  ##  #################                          ');
  writeln('                                                                     #########################  ##  ##################                         ');
  writeln('                                                                   ###########################  ##  ###################                        ');
  writeln('                                                                 #############################  ##  ####################                       ');
  writeln('                                                               ###############################  ##  #####################                      ');
  writeln('                                                             #################################  ##  ######################                     ');
  writeln('                                                                                                ##                                             ');
  writeln('                                                                                                ##                                             ');
  writeln('                                                                                                ##                                             ');
  writeln('                                                    ################################################################################      ');
  writeln('                                                       ############################################################################        ');
  writeln('                                                         ########################################################################          ');
  writeln('                                                           ####################################################################            ');
  writeln('                                                             ################################################################              ');
  writeln('                                                               ############################################################                ');
  writeln('                                                                 ########################################################                  ');

end;

procedure difficulte();
var
  diff : Integer;
begin
  diff := 0;
  while (diff <> 1) AND (diff <> 2) AND (diff <> 3) do       // on choisit la difficulté 1, 2 ou 3
  begin
    EffacerEcran();
    ecrireenposition2(5,7,'pour jouer, saisissez 1 et pour quitter, saisissez 2 : ' + getValPlay());
    ecrireenposition2(5,10,'vous allez choisir le niveau de difficulte : ');
    ecrireenposition2(5,11,'facile : 1');
    ecrireenposition2(5,12,'intermediaire : 2');
    ecrireenposition2(5,13,'difficile : 3');
    ecrireenposition2(5,14,'que choisissez vous ? ');
    readln(diff);
  end;
  if diff = 1 then       // en fonction du nombre chosit, on initialise les ressources différament
    initialisation1()
  else if diff = 2 then
    initialisation2()
  else
    initialisation3();
end;

end.

