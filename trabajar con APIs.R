#Abrir un shapefile
#llamando a librerias
library(sp)
library(geojsonio)
library(rgdal)
#Empleamos un archivo shape guardado en la pc
datos=readOGR("C:/Users/ADMIN/Desktop/charo/db.shp")
plot(datos)

#Usando los Apis

millave='db80a7dbc0a6b9f1fbdef548783938cc7b00d4e3'
library(jsonlite)
GUID='http://api.datosabiertos.msi.gob.pe/api/v2/datastreams/INTER-DE-SEREN-2019/'
FORMATO='data.json/'

#El GUID se encuentrta disponible en la pagina, sólo queda agregar el key

GUID='http://api.datosabiertos.msi.gob.pe/api/v2/datastreams/INTER-DE-SEREN-2019/'
FORMATO='data.json/'
millave='6242186595f840debd6cf1730633a0230e5d7d5e'
request=paste0(GUID,FORMATO,'?auth_key=',millave)
#verificar la dirección
request
serenosSI = fromJSON(request)
serenosSI
FORMATO='data.pjson/'
request2=paste0(GUID,FORMATO,'?auth_key=',millave)
serenosSI = fromJSON(request2)
serenosSI 
