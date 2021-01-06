 #!/bin/sh
 
 mongoimport --db=RSP_S3E2 --collection=colegios --file=colegios_lat_lon.json --jsonArray
 mongoimport --db=RSP_S3E2 --collection=colegios_utm --file=colegios_utm.json --jsonArray
 mongoimport --db=RSP_S3E2 --collection=alumnos --file=alumnos_lat_lon.json --jsonArray
 mongoimport --db=RSP_S3E2 --collection=alumnos_utm --file=alumnos_utm.json --jsonArray
 
