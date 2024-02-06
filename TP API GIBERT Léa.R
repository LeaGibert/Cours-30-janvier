#GIBERT Léa M2 DES
#TP sécurité numérique


library(jsonlite)

# Faire venir les données avec fromJSON
data <- fromJSON("https://geo.api.gouv.fr/communes?codePostal=35200&fields=nom,code,codesPostaux,codeDepartement,codeRegion,population&format=json&geometry=centre")

#Fonction pour avoir la liste des noms et codes de l'ensemble des régions
noms_codes_regions<- function(){
  url<- "https://geo.api.gouv.fr/regions?fields=nom,code&format=json"
  result<- fromJSON(url)
  return(result)
}

#Enregistrer la fonction dans un objet 

noms_codes_toutes_regions <- noms_codes_regions()

#Afficher la liste obtenue

View(noms_codes_toutes_regions)

#Enregistrer le jeu de donnée au format CSV

chemin_csv<- "/Users/leagibert/Desktop/noms_codes_toutes_regions.csv"
write.csv(noms_codes_toutes_regions,file = chemin_csv, row.names = FALSE)