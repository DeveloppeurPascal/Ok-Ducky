# 20250501 - [DeveloppeurPascal](https://github.com/DeveloppeurPascal)

Refonte du jeu vidéo Ok Ducky! à partie de la version de mars 2021.

* reprise du dépôt de code d'origine
* mise en place des fichiers et dossiers de la structure du Delphi Project Template
* mise à jour des docs FR/EN
* ajout des sous-modules liés à Gamolf FMX Game Starter Kit
* création du nouveau projet depuis le modèle du starter Kit
* remplacement des bitmaps (canard + cible) dans l'icone par leur version vectorielle
* mise à jour de l'image "Social Preview" sur GitHub
* adaptation de la nouvelle version du projet (copie du GUID de l'ancien, changement des chemins vers les icones, changement des package name, renommage des icones)
* poursuite des opérations depuis l'IDE de Delphi
* copie des fichiers du starter kit à personnaliser pour chaque projet et mise à jour de leur contenu
* mise à jour du fichier de configuration pour DocInsight
* mise à jour du fichier de configuration pour Copyright Pascal Projects
* report de l'affichage du stand de tir et des animations des vagues et canards de la version 2021 vers la scène de background se la nouvelle version
* ajustement de la vitesse de Skia sous Windows (désactivation du rastering)
* ajustement de la vitesse sur Mac (et probablement iOS) par activation de l'utilisation de Metal
* création d'une classe TOkDuckyGameData pour prendre en charge les paramètres d'une partie en cours
* finalisation de la scène de background avec prise en charge des animations, tirs, changement de scores et autres
* ajout des scènes d'accueil, de jeu et de fin de partie
* mise en place d'un écran d'accueil temporaire pour lancer une partie et sortir du programme
* mise en place de l'écran de jeu (revoir l'affichage des scores)
* mise en place de l'écran de fin de partie (avec retour au menu)


A suivre :
* choix des fontes pour les titres, les textes de boutons de menu et éventuellement les textes tout court
* import des chiffres provenant de la shooting gallery de Kenny pour remplacer l'affichage des Scores/Vies/Munitions
* création d'un bouton de menu
* création d'une boite de dialogue
* mise en place de ces éléments sur les scènes existantes

* création de la scène des crédits du jeu
* ajout du stockage des scores
* création de la scène du hall of fame
* création de la scène de paramétrage du jeu (acctivation et niveau des sons)

* tentative d'implémenter un curseur pilotable au joystick ou au clavier, voir la jouabilité
* tests de la version finale sur iOS
* tests de la version finale sur Android
* tests de la version finale sur macOS
* tests de la version finale sur Windows
* déploiement de la version 1.0 
* soumission à Google Play, Apple AppStore, Microsoft Store et mise à jour sur Itch
