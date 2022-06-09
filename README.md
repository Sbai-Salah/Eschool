# Eschool
Application de gestion d'universite (cours, emplois du temps, fees,...) pour les profs, étudiant(e)s et la faculté.
------

![logoAPP](https://github.com/Sbai-Salah/Eschool/blob/main/eschool/src/img/ICON2.png)

## Pourquoi Eschool ?


## Les outils qu'on a utiliser

> Editeur IntelliJ : [Download it here](https://www.jetbrains.com/fr-fr/idea/download/download-thanks.html?platform=windows&code=IIC)


> Version 11.0.1 & 11.0.2 du Javafx SDK. (Voir ci-dessous pour les telechargers)


> OpenJDK-17


> Mysql-connector-java-8.0.17


## Maquettes graphique & Remarques sur le design

![Web 1920 – 2](https://user-images.githubusercontent.com/101054444/172859825-0afe2c98-be65-4fdf-a99a-8f8615d0d9df.jpg)
![Web 1920 – 1](https://user-images.githubusercontent.com/101054444/172859891-3c34e9e7-5168-49a6-8ac5-df50cbd23d35.jpg)
![Web 1920 – 3](https://user-images.githubusercontent.com/101054444/172859921-519b14cf-9066-447e-9dc1-2c9d50a6bf4e.jpg)
![Web 1920 – 4](https://user-images.githubusercontent.com/101054444/172859985-c704e65c-0a43-4492-ab55-7f8c9b4a7705.jpg)



## Etapes pour fonctionner le projet

- [X] Telecharger le fichier zip, puis prenez le dossier `eschool` et metter-le dans le Desktop par exemple.

- [X] A l'interieur du fichier eschool on va faire quelques modifications : 
    + Prenez le fichier `production` et metter-le dans le dossier `out`.
    + Telecharger le dossier des images en cliquant ici [Img](https://drive.google.com/drive/folders/1VuuXSiCldWZwY2GsjuMkmv04Uf9sC4Jc?usp=sharing) puis metter-le dans le dossier `eschool`.
    + (Voir l'arborescance du dossier eschool ci-dessous)

- [X] Telecharger les deux versions du Javafx SDK [11.0.1](https://download2.gluonhq.com/openjfx/11.0.1/openjfx-11.0.1_windows-x64_bin-sdk.zip) et [11.0.2](https://download2.gluonhq.com/openjfx/11.0.2/openjfx-11.0.2_windows-x64_bin-sdk.zip), apres telechargement extracter les deux n'importe ou (on va l'utiliser apres)

- [X] Lancer IntelliJ et cliquer sur Open (eschool).
- [X] Dans la barre superieur, cliquer sur : `FILE>Project Structure`.
- [X] Dans cette fenetre, cliquer sur `MODULES` ou il y : sources, paths, dependencies.
- [X] Dans la partie : sources, choisir le dossier `src` et cliquer sur : `Mark as : Sources`.
- [X] Dans la meme partie : sources, choisir le dossier `out` et cliquer sur : `Mark as : Excluded`.

- [X] Dans la partie Dependencies, on va ajouter (par le boutton `+`) les fichiers suivants : 
    + Javafx SDK 11.0.1/lib (C'est le fichier qu'on a extracter avant)
    + Javafx SDK 11.0.2/lib
    + OpenJDK-17
    + mysql-connector-java-8.0.17
    + ajouter aussi le dossier : `testEschool` il est dans le dossier : out>artifacts>testEschool_jar>testEschool.jar
    
- [X] cliquer sur `APPLY` puis `OK`.

> Partie Base de Donnees : 

- [X] dans Xamp ou Wamp importer le fichier `Eschool.sql` (il y a tout la dedans).

> VM Options & venv config : 

- [X] Dans la partie VM Options du projet on va ajouter ce ligne : 
  ``` 
  --module-path "C:\Users\Sbai Salah\Downloads\javafx-sdk-11.0.1\lib" --add-modules javafx.controls,javafx.fxml 
  
  Bien sur il faut changer lce chemin par le chemin ou il existe le fichier lib du javafx sdk 11.0.1
  ```
- [X] Finalement `Environement Variables` ajouter le fichier `bin` du javafx 11.0.1.


-------------------


## Le team

|       Noms                  |         Position & travail            |        
| -------------               | ------------------------------------  |
| SBAI Salah                  | Chef de projet & Code Controlleurs    |
| MHARZI Chaymae              | Partie Student (Views)                |
| ZIANI Imane                 | Partie Student (Views)                |
| SGHIOURI el idrissi Mohammed| Partie Admin (Views)                  |
| EL BOUZYANI Intissar        | Partie Admin (Views)                  |
| EL MOURABIT Mohammed        | Partie Faculty (Views) & Design       |
| FAKIHI MOUAD                | Partie Faculty (Views) & Design       |












