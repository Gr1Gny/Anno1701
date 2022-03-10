program jeu;

{$codepage utf8}

uses
  GestionEcran,                          // unité permettant de modifier l'écran
  unitAccueil,
  PseudoSexe,                            // unité permettant à l'utilisateur de saisir un pseudo et d'indiquer son sexe
  unitPresentation,                      // unité permettant l'affichage de la page principale
  procefunct,                            // unité permettant la construction
  ressource,                             // unité permettant la gestion des ressources
  unitcommerce,                          // unité qui correspond au marchand
  unitSytemePop,                         // unité qui permet de passer les tours
  Tour,                                  // unité qui affiche le tour en temps réel
  unitchantiernaval,                     // unité qui permet la construction de navires
  unitSoldats,                           // unité qui permet de recruter des soldats
  entrepot,                              // unité qui permet de construire gérer les réserves
  sac,                                   // unité qui gère l'amélioration colonisation et godmod
  combat,                                // unité qui permet au vickings de pourvoir attaquer notre village
  eventImpromp,                          // unnité qui gère l'amélioration évènement impromptus
  informations;                          // unité qui permet l'affichage de la page de présentation

var
  rep : String;                         //variable qui correspond à ce que l'utilisateur veut faire
  res : String;                         //variable qui correspond à ce que l'utilisateur veut faire

begin
changerTailleConsole(200,60);            // on modifie la taille de l'écran
play();                                  // procédure qui permet de savoir si l'utilisateur veut jouer ou non
if GetValPlay() = '1' then
begin
  difficulte();                          // si il veut jouer, il doit alors choisir sa difficulté
  effacerEcran()
end
else                                     // si il a cliqué sur 2, le jeu se ferme
  exit;

//on passe maintenant à la page de création de personnage

setPseudo();                             // le joueur choisit un pseudo
setSexe();                               // le joueur choisit son sexe
info();                                  // page de lancement du jeu


//maintenant que l'utilateur a crée son personnage, on peut commencer la partie

  //on initialise d'abord les variables qu'on va utiliser dans nos unités

  inihab();
  iniNb();
  initab();
  iniTour();
  inientrepot();
  inicol();

  EffacerEcran();

  //on commence l'affichage de la page principale
  //cette page s'affiche tant que l'utilisateur ne quitte pas la partie donc tant que la réponse est différente est différent de 7
  
  rep := '0';
  res := '0';

  while rep <> '7' do

  begin

    effacerEcran();

    //on affiche les informations principales concernant l'ile
    attaqueviking();    // attaque
    infoIle();

    //on affiche ensuite le nombre d'habitants et le nombre de ressources

    infoHabitant();

    infoRessources();

    probleme();         // intempéris

    writeTour();        // on affiche le tour en temps réel

    //maintenant qu'on a finis l'affichage des informations pricipales, on demande à l'utilisateur ce qu'il veut faire
    //on appel différentes procédures/fonctions en fonction de sa réponse

  begin

    while (rep <> '1') AND (rep <> '2') AND (rep <> '3') AND (rep <> '4') AND (rep <> '5') AND (rep <> '6') AND (rep <> '7') do
    begin
    ecrireenposition2(5,28,'que souhaitez vous faire à présent ?');
    ecrireenposition2(5,28,'1 : tour suivant, 2 : menu de construction, 3 : chantier naval , 4 : caserne, 5 : colonisation, 6 : Godmod, 7 : quitter : ');
    readln(rep);
    end;

    //on va maintenant faire quelque chose de différent pour chaque nombre différents que l'utilisateur peut saisir

    //on commence d'abord par le cas ou le joueur souhaite passer au tour suivant

    if rep = '1' then

    begin

      effacerEcran();

      boutique();       // il est probable qu'un marchand vienne vous voir
      EffacerEcran();

      sethab();         // le nombre d'habitant peut changer à chaque tour

      nbColons();       // procédure qui affiche le nombre de colons et l'or gagné
      poisson();        // procedure qui permet aux colons de consommer du poisson
      tissu();          // procedure qui permet aux colons d'utiliser du tissu

      centreville();
      Eglise();

      nextBois();       // procédure qui correspond à la production de bois
      nextLaine();      // procédure qui correspond à la production de bois
      nextPoisson();    // procédure qui correspond à la production de bois
      nextTissu();      // procédure qui correspond à la production de bois

      readln();

      TourSuivant();
      rep := '0';        //ca évite une boucle infini

    end

    //ensuite, le cas ou le joueur souhaite accéder au menu de construction

    else if rep = '2' then

    begin

      while res <> '2' do
      begin

        effacerEcran();


        infomaison();     //procédure qui permet d'afficher les informations corcernant les maisons

        infobatso();      // procédure qui permet d'afficher les informations corcernant les batimenchts sociaux

        infoindustrie();  // procédure qui permet d'afficher les informations corcernant les industries

        ecrireenposition2(5,28,'que souhaitez vous faire à présent ?');
        ecrireenposition2(5,28,'1 : construire, 2 : retour au menu : ');
        readln(res);

        if res = '1' then
        begin
          effacerEcran();
          construction(); // procedure qui permet de construire des bâtiments
        end;

        rep := '0';         //ca évite une boucle infini
    end;


    res := '0';

    end

  else if rep = '3' then

    begin

      effacerEcran();
      VerifBatNaval();   // procedure qui permet de construire des bateaux si on a port
      rep := '0';          // évite la boucle infinie

    end

  else if rep = '4' then

    begin

      effacerEcran();
      choixSoldats();   // procédure qui correspond à la gestion de recrutement des soldats
      rep:='0';           // évite la boucle infinie

    end

  else if rep = '5' then

    begin

  pagecolonisation();  // nous permet d'aller sur une autre ile
  rep := '0';

    end

  else if rep = '6' then
    begin

      GM();            // nous permet d'acceder au Godmods
      rep := '0';

    end;


end;
end;
exit;
readln;
end.

