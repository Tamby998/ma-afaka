DROP DATABASE IF EXISTS MLR1;

CREATE DATABASE IF NOT EXISTS MLR1;
USE MLR1;
# -----------------------------------------------------------------------------
#       TABLE : PROF
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS PROF
 (
   ID_PROF CHAR(32) NOT NULL  ,
   NOM CHAR(32) NOT NULL  ,
   PRENOM CHAR(32) NOT NULL  ,
   PSEUDO CHAR(32) NOT NULL  ,
   ADRESSE CHAR(32) NOT NULL  ,
   PASSWORD CHAR(32) NOT NULL  ,
   TELEPHONE CHAR(32) NOT NULL  ,
   CENTRE CHAR(32) NOT NULL  ,
   RESP CHAR(32) NOT NULL  
   , PRIMARY KEY (ID_PROF) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : ETABLISSEMENT
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS ETABLISSEMENT
 (
   ID CHAR(32) NOT NULL  ,
   NOM_ETAB CHAR(255) NOT NULL  ,
   ADRESSE_ETAB CHAR(255) NOT NULL  ,
   CONTACT CHAR(255) NOT NULL  
   , PRIMARY KEY (ID) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : ETUDIANT
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS ETUDIANT
 (
   NUM_MATRICUL CHAR(32) NOT NULL  ,
   SEXE CHAR(32) NOT NULL  ,
   NOM CHAR(255) NOT NULL  ,
   PRENOM CHAR(255) NOT NULL  ,
   PSEUDO CHAR(255) NOT NULL  ,
   PASSWORD CHAR(255) NOT NULL  ,
   ADRESSE CHAR(255) NOT NULL  ,
   CONTACT CHAR(255) NOT NULL  ,
   ABSENT CHAR(32) NOT NULL  ,
   RETARD CHAR(32) NOT NULL  ,
   PENALISATION CHAR(255) NOT NULL  ,
   BONUS CHAR(255) NOT NULL  ,
   CLASSE CHAR(32) NOT NULL  ,
   TYPE CHAR(255) NOT NULL  
   , PRIMARY KEY (NUM_MATRICUL) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : ADMIN
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS ADMIN
 (
   NUM_MAT_ADMIN CHAR(32) NOT NULL  ,
   PSEUDO CHAR(32) NOT NULL  ,
   NOM CHAR(255) NOT NULL  ,
   PRENOM CHAR(255) NOT NULL  ,
   ADRRESSE CHAR(255) NOT NULL  ,
   PASSWORD CHAR(255) NOT NULL  ,
   TELEPHONE CHAR(32) NOT NULL  ,
   CENTRE CHAR(255) NOT NULL  ,
   RESP CHAR(255) NOT NULL  
   , PRIMARY KEY (NUM_MAT_ADMIN) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : secretaire
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS secretaire
 (
   num_matr_secre CHAR(32) NOT NULL  ,
   pseudo CHAR(32) NOT NULL  ,
   nom CHAR(255) NOT NULL  ,
   prenom CHAR(255) NOT NULL  ,
   adresse CHAR(255) NOT NULL  ,
   password CHAR(255) NOT NULL  ,
   telephone CHAR(32) NOT NULL  ,
   verification_key varchar(250) NOT NULL,
   created  DATE NOT NULL,
   isActive boolean NOT NULL,
   centre CHAR(255) NOT NULL
   , PRIMARY KEY (NUM_MAT_SECRE) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : SYSADMIN
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS SYSADMIN
 (
   ID CHAR(32) NOT NULL  ,
   LOGIN CHAR(150) NOT NULL  ,
   PASSWORD CHAR(255) NOT NULL  ,
   NOM CHAR(255) NOT NULL  ,
   PRENOM CHAR(255) NOT NULL  
   , PRIMARY KEY (ID) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : NOTES
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS NOTES
 (
   ID CHAR(32) NOT NULL  ,
   MATIERE CHAR(255) NOT NULL  ,
   MATRICULE CHAR(255) NOT NULL  ,
   CLASSE CHAR(255) NOT NULL  ,
   ETABLISSEMENT CHAR(255) NOT NULL  
   , PRIMARY KEY (ID) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : ECOLAGE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS ECOLAGE
 (
   ID CHAR(32) NOT NULL  ,
   NUM_MATRICUL CHAR(255) NOT NULL  ,
   MOIS CHAR(32) NOT NULL  ,
   HISTORIQUE CHAR(255) NOT NULL  
   , PRIMARY KEY (ID) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : STOCK
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS STOCK
 (
   ID CHAR(32) NOT NULL  ,
   TABLE_BANC CHAR(255) NOT NULL  ,
   TABLEAU CHAR(32) NOT NULL  ,
   TABLE_PROF CHAR(32) NOT NULL  ,
   CHAISE_PROF CHAR(32) NOT NULL  ,
   TABLIER_PROF CHAR(32) NOT NULL  ,
   BADGET_PROF CHAR(32) NOT NULL  ,
   ORDINATEUR CHAR(32) NOT NULL  
   , PRIMARY KEY (ID) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : COMPTA
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS COMPTA
 (
   ID CHAR(32) NOT NULL  ,
   HISTORIQUE CHAR(255) NOT NULL  ,
   TOTAL CHAR(255) NOT NULL  ,
   SORTIE CHAR(255) NOT NULL  
   , PRIMARY KEY (ID) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : UPLOAD
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS UPLOAD
 (
   ID CHAR(32) NOT NULL  ,
   TITRE CHAR(32) NOT NULL  ,
   CLASSE CHAR(32) NOT NULL  ,
   ID_PROF CHAR(32) NOT NULL  ,
   ETABLISSEMENT CHAR(32) NOT NULL  
   , PRIMARY KEY (ID) 
 ) 
 comment = "";


# -----------------------------------------------------------------------------
#       CREATION DES REFERENCES DE TABLE
# -----------------------------------------------------------------------------

