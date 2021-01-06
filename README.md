## Generar estudiantes

Para generar los estudiantes se debe ejecutar el archivo /generate_alus_python/alu_generate.py este generará ubicaciones de estudiantes con base en la cantidad a la información del Censo 2017 https://www.censo2017.cl/

### Librerias de python

- shapefile
- random
- pymongo
- shapely
- json
- bson
- utm
### Info extra

Las zonas se extrajeron del sitio https://ine-chile.maps.arcgis.com/apps/webappviewer/index.html?id=bc3cfbd4feec49699c11e813ae9a629f donde se puede seleccionar una área y recopilar información de ella, además se utilizó como base para separar el archivo /generate_alus_python/mapa_legendas.png generando la carpeta zonas-temuco, para abrir los qgz se necesita tener instalado qgis.

En cuanto a información detallada se puede encontrar en el archivo Zonas.xlsx
