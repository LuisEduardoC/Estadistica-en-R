library(htmltab)
linkCIA_carb = "https://www.cia.gov/library/publications/resources/the-world-factbook/fields/274.html"
linkPath_carb='//*[@id="fieldListing"]'
carbon = htmltab(doc = linkCIA_carb, 
                which =linkPath_carb)
head(carbon)
carbon[1,2]

library(stringr)
names (carbon)[2]="Emisiones"


summary(carbon$Emisiones)
str_extract_all(carbon$Emisiones,pattern="(\\-*\\d+\\.*\\d*)")
str_extract_all(carbon$Emisiones,pattern="(\\-*\\d+\\.*\\d*)",simplify = T)

PATRON="(\\-*\\d+\\.*\\d*)"
COLSUCIA=carbon$Emisiones
PATRON
COLSUCIA

carbon$Emisiones=str_extract_all(string = COLSUCIA,pattern=PATRON,simplify = T)[,1]
head(carbon)

