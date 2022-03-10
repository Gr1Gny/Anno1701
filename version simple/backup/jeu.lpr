program jeu;

uses
  GestionEcran,                          //unité permettant de modifier l'écran
  unitAccueil,                           //unité qui permet à l'utilisateur de créer sa partie
  PseudoSexe,                            //unité permettant à l'utilisateur de saisir un pseudo et d'indiquer son sexe
  unitPresentation,                      //unité permettant l'affichage de la page principale
  procefunct,                            //unité permettant la construction
  ressource,                             //unité qui permet de gérer les ressources
  unitcommerce,                          //unité qui permet au marchand de venir sur notre ile
  unitSytemePop;                         //unité qu'on appel pour passer au tour suivant

var
  rep : String;                          //variable qui correspond à ce que l'utilisateur veut faire
  res : String;                          //variable qui correspond à ce que l'utilisateur veut faire

begin

changerTailleConsole(200,60);

play();
if GetValPlay() = '1' then            //si il a cliqué sur le bouton quitter, le jeu se ferme
  effacerEcran()
else
  exit;

  //on passe maintenant à la page de création de personnage

setPseudo();                          //il choisit son pseudo
setSexe();                            //il choisit son sexe


  //maintenant que l'utilateur a crée son personnage, on peut commencer la partie
  //on initialise les variables qu'on souhaite utiliser dans nos unités

  initialisation();
  inihab();
  iniNb();
  initab();

  EffacerEcran();

  //on commence l'affichage de la page principale
  //cette page s'affiche tant que l'utilisateur ne quitte pas la partie donc tant que la réponse est différente est différent de 3
  
  rep := '0';
  res := '0';

  while rep <> '3' do      //rep différent de quitter

  begin

    effacerEcran();

    infoIle();             //informations concernant l'ile

    //on affiche ensuite le nombre d'habitants

    infoHabitant();        //affiche le nombre de colons

    infoRessources();      //affiche les ressources disponibles

    //maintenant qu'on a finis l'affichage des informations pricipales, on demande à l'utilisateur ce qu'il veut faire
    //on appel différentes procédures/fonctions en fonction de sa réponse

  begin

    while (rep <> '1') AND (rep <> '2') AND (rep <> '3') do      //3 réponses possibles : 1, 2 ou 3
    begin
    ecrireenposition2(5,28,'que souhaitez vous faire à present ?');
    ecrireenposition2(5,28,'1 : tour suivant, 2 : menu de construction, 3 : quitter : ');
    readln(rep);
    end;

    //on va maintenant faire quelque chose de différent pour chaque nombre différents que l'utilisateur peut saisir

    //on commence d'abord par le cas ou le joueur souhaite passer au tour suivant

    if rep = '1' then

    begin

      effacerEcran();

      boutique();
      EffacerEcran();

      sethab();

      nbColons();       //procédure qui affiche le nombre de colons
      poisson();        //procedure qui permet aux colons de consommer du poisson
      tissu();          //procedure qui permet aux colons d'utiliser du tissu

      centreville();    //l'utilisateur doit construire des eglises/centre villes en fonction du nombre d'habitants
      Eglise();

      nextBois();       //procédure qui correspond à la production de bois
      nextLaine();      //procédure qui correspond à la procductio de laine
      nextPoisson();    //procédure qui correspond à la procductio de poisson
      nextTissu();      //procédure qui correspond à la procductio de tissu

      readln();

      rep := '0';         //ca évite une boucle infini

    end

    //ensuite, le cas ou le joueur souhaite accéder au menu de construction

    else if rep = '2'then

    begin

      while res <> '2' do
      begin

        effacerEcran();


        infomaison();    //procédure qui permet d'afficher les informations corcernant les maisons

        infobatso();   //procédure qui permet d'afficher les informations corcernant les batiments sociaux

        infoindustrie();

        ecrireenposition2(5,28,'que souhaitez vous faire à present ?');
        ecrireenposition2(5,28,'1 : construire, 2 : retour au menu : ');
        readln(res);

        if res = '1' then
        begin
          effacerEcran();
          construction();
        end;

        rep := '0';         //ca évite une boucle infini
    end;


    res := '0';

    end;

  end;
end;
exit;
readln;
end.

