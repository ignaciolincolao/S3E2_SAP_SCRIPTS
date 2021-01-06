import shapefile
import random
from pymongo import MongoClient
from shapely.geometry import Point
from shapely.geometry import Polygon
from shapely.geometry import shape
import json
import utm
from bson import BSON


"""
Random_point recibe como parametro un polygono, para luego generar un punto,
si el punto esta dentro del polygono, este retorna el punto. En el caso
contrario lo intenta hasta que se genere dentro del polygono.
"""


def random_point(polygono):
    x, y, _x, _y = polygono.bounds
    lOK = True
    while lOK:
        punto = Point(random.uniform(x, _x), random.uniform(y, _y))
        if polygono.contains(punto):
            return punto


"""
Clase que contendra la información de un punto en el polygono,
en este caso son los datos de un estudiante: rbd, vulnerable,
longitud y latitud;
"""


class Point_save:
    def __init__(self, rbd, vulnerable, longitud, latitud):
        self.rbd = rbd
        self.vulnerable = vulnerable
        self.longitud = float('%.8f'%(longitud))
        self.latitud = float('%.8f'%(latitud))


"""
Conexion a la base de datos mongodb, la cual contiene a las escuelas,
las escuelas que se encuentran en la collection son solo del año 2017 y
de la comuna de temuco.
"""
client = MongoClient(port=27017)
db = client.test
collection = db['school_2017']

# Genera los archivos lat lon de alumnos y colegios
file = open("./alumnos_lat_lon.txt", "w")
file2 = open("./colegios_lat_lon.txt", "w")

# Genera los archivos de UTM de alumnos y colegios
file_UTM_a = open("./alumnos_utm.txt", "w")
file_UTM_c = open("./colegios_utm.txt", "w")


# Inicializa los array y variables
manzanas_zona = []
all_shapes_manzanas = []
all_records_manzana = []
zonas_shape = []
zonas = []
count = 1
cc = 0
total_alu = 0
colegios = 0
sep = 0
Points_shape = []
json_data_alu = []
json_data_col = []
json_utm_alu = []
json_utm_col = []
"""
alu_sep es un array que contiene la cantidad de estudiantes vulnerables
en cada zona, alu_sep[0] = cantidad de estudiantes de la zona 1
alu_no_sep es un array que contiene la cantidad de estudiantes no vulnerables
en cada zona.
La cantidad de estudiantes se realiza se calculo en base a la cantidad de
personas registrada durante el CENSO con edad entre 6 a 14 años y la cantidad
de estudiantes que registran en total la ciudad de temuco.
"""
alu_sep = [1336, 1677, 5936, 1493, 185, 844, 520, 195, 594, 73, 5619, 2129, 548, 203]
alu_no_sep = [573, 419, 1392, 840, 245, 843, 2078, 49, 149, 173, 423, 185, 857, 275]

"""
Carga los shapefiles que contiene los polygonos de cada zona, y tambien
las manzana de la ciudad de temuco.
"""
for i in range(14):
    zonas.append(shapefile.Reader("zonas/zona-" + str(i+1) + "/zona-" + str(i+1) + ".shp"))
    manzanas_zona.append(shapefile.Reader("zonas/zona-" + str(i+1) + "/zona-" + str(i+1) + "-manzana.shp"))
    all_shapes_manzanas.append(manzanas_zona[i].shapes())
    all_records_manzana.append(manzanas_zona[i].records())
    zonas_shape.append(zonas[i].shapes())

"""
Genera la cantidad correspondiente de puntos dentro de la zona, estos
puntos corresponden a los estudiantes.
"""
for x in range(14):
    Points = []
    for alumno_sep in range(alu_sep[x]):
        boundary = random.choice(all_shapes_manzanas[x])
        manzana = Polygon(boundary.points)
        point_in_poly = random_point(manzana)
        Points.append(Point_save(x, 1, point_in_poly.x, point_in_poly.y))

        #file.write(str(document['RBD']) + "," + "0" + "," + str(point_in_poly.y) + "," + str(point_in_poly.x) + "\n")
        cc+=1
    for alumnos_no_sep in range(alu_no_sep[x]):
        boundary = random.choice(all_shapes_manzanas[x])
        manzana = Polygon(boundary.points)
        point_in_poly = random_point(manzana)
        Points.append(Point_save(x, 0, point_in_poly.x, point_in_poly.y))
        #file.write(str(document['RBD']) + "," + "1" + "," + str(point_in_poly.y) + "," + str(point_in_poly.x) + "\n")
        cc+=1
    Points_shape.append(Points)


"""
Realiza la asignación de los estudiantes a las escuelas dentro de la zona,
con una probabilidad de 15 de ser asignado a una escuela fuera de la zona
que se encuentra el alumno.
"""
for x in range(14):
    cursor = collection.find({})
    for document in cursor:
        if Point(float(document['LONGITUD']), float(document['LATITUD'])).within(shape(zonas_shape[x])): # Verifica que el punto se encuentre dentro del shapefile
            count = 0
            # Asignacion de estudiantes vulnerables a las escuelas
            while(count < int(document['ALUMNOS']['VULNERABLES']['TOTAL'])):
                lok=True
                y=0
                p = random.randrange(0,100)
                # Si es menor a 15 este sera asignado a una escuela de una zona
                # aleatoria.
                if(p<15):
                    zona_student = random.choice(range(14))
                    while(lok):
                        try:
                            student = Points_shape[zona_student][y]
                        except Exception as e:
                            break
                        if(student.vulnerable == 1):
                            json_data_alu.append({
                                "rbd": document['RBD'],
                                "latitude": student.latitud,
                                "longitude": student.longitud,
                                "sep": student.vulnerable
                            })
                            utm_est_x, utm_est_y, zona, letter = utm.from_latlon(student.latitud, student.longitud, 18, 'H')
                            json_utm_alu.append({
                                "rbd": document['RBD'],
                                "latitude": utm_est_x,
                                "longitude": utm_est_y,
                                "sep": student.vulnerable
                            })
                            file_UTM_a.write(str(document['RBD']) + "," + str(utm_est_x) + "," + str(utm_est_y) + "," + str(student.vulnerable) + "\n")
                            file.write(str(document['RBD']) + "," + str(student.latitud) + "," + str(student.longitud) +  "," + str(student.vulnerable) + "\n")
                            count+=1
                            Points_shape[zona_student].remove(student)
                            lok= False
                        y+=1
                        if(y >= len(Points_shape[zona_student])):
                            lok=False
                else:
                    zona_student = x
                    while(lok):
                        try:
                            student = Points_shape[zona_student][y]
                        except Exception as e:
                            break
                        if(student.vulnerable == 1):
                            json_data_alu.append({
                                "rbd": document['RBD'],
                                "latitude": student.latitud,
                                "longitude": student.longitud,
                                "sep": student.vulnerable
                            })
                            utm_est_x, utm_est_y, zona, letter = utm.from_latlon(student.latitud, student.longitud, 18, 'H')
                            json_utm_alu.append({
                                "rbd": document['RBD'],
                                "latitude": utm_est_x,
                                "longitude": utm_est_y,
                                "sep": student.vulnerable
                            })
                            file_UTM_a.write(str(document['RBD']) + "," + str(utm_est_x) + "," + str(utm_est_y) + "," + str(student.vulnerable) + "\n")
                            file.write(str(document['RBD']) + "," + str(student.latitud) + "," + str(student.longitud) +  "," + str(student.vulnerable) + "\n")
                            count+=1
                            Points_shape[zona_student].remove(student)
                            lok = False
                        y+=1
                        if(y >= len(Points_shape[zona_student])):
                            lok=False
            count = 0
            # Asignacion de estudiantes no vulnerables a las escuelas
            while(count<int(document['ALUMNOS']['TOTAL']) - int(document['ALUMNOS']['VULNERABLES']['TOTAL'])):
                lok=True
                y=0
                p = random.randrange(0,100)
                # Si es menor a 5 este sera asignado a una escuela de una zona
                # aleatoria.
                if(p<5):
                    zona_student = random.choice(range(14))
                    while(lok):
                        try:
                            student = Points_shape[zona_student][y]
                        except Exception as e:
                            break
                        if(student.vulnerable == 0):
                            json_data_alu.append({
                                "rbd": document['RBD'],
                                "latitude": student.latitud,
                                "longitude": student.longitud,
                                "sep": student.vulnerable
                            })
                            utm_est_x, utm_est_y, zona, letter = utm.from_latlon(student.latitud, student.longitud, 18, 'H')
                            json_utm_alu.append({
                                "rbd": document['RBD'],
                                "latitude": utm_est_x,
                                "longitude": utm_est_y,
                                "sep": student.vulnerable
                            })
                            file_UTM_a.write(str(document['RBD']) + "," + str(utm_est_x) + "," + str(utm_est_y) + "," + str(student.vulnerable) + "\n")
                            file.write(str(document['RBD']) + "," + str(student.latitud) + "," + str(student.longitud) +  "," + str(student.vulnerable) + "\n")
                            count+=1
                            Points_shape[zona_student].remove(student)
                            lok = False
                        y+=1
                        if(y >= len(Points_shape[zona_student])):
                            lok=False
                # En el caso contrario asigna al estudiante a una escuela de la misma zona
                else:
                    while(lok):
                        try:
                            student = Points_shape[zona_student][y]
                        except Exception as e:
                            break
                        if(student.vulnerable == 0):
                            json_data_alu.append({
                                "rbd": document['RBD'],
                                "latitude": student.latitud,
                                "longitude": student.longitud,
                                "sep": student.vulnerable
                            })
                            utm_est_x, utm_est_y, zona, letter = utm.from_latlon(student.latitud, student.longitud, 18, 'H')
                            json_utm_alu.append({
                                "rbd": document['RBD'],
                                "latitude": utm_est_x,
                                "longitude": utm_est_y,
                                "sep": student.vulnerable
                            })
                            file_UTM_a.write(str(document['RBD']) + "," + str(utm_est_x) + "," + str(utm_est_y) + "," + str(student.vulnerable) + "\n")
                            file.write(str(document['RBD']) + "," + str(student.latitud) + "," + str(student.longitud) +  "," + str(student.vulnerable) + "\n")
                            count+=1
                            Points_shape[zona_student].remove(student)
                            lok = False
                        y+=1
                        if(y >= len(Points_shape[zona_student])):
                            lok=False


            total_alu+=int(int(document['ALUMNOS']['TOTAL']) - int(document['ALUMNOS']['VULNERABLES']['TOTAL']))
            total_alu+=int(document['ALUMNOS']['VULNERABLES']['TOTAL'])
            sep+=int(document['ALUMNOS']['VULNERABLES']['TOTAL'])
            json_data_col.append({
                "rbd": document['RBD'],
                "latitude": document['LATITUD'],
                "longitude": document['LONGITUD'],
                "alumnos": document['ALUMNOS']['TOTAL'],
                "prioritario": document['ALUMNOS']['VULNERABLES']['TOTAL']
            })
            utm_col_x, utm_col_y, zona, letter = utm.from_latlon(document['LATITUD'], document['LONGITUD'], 18, 'H')
            json_utm_col.append({
                "rbd": document['RBD'],
                "latitude": utm_col_x,
                "longitude": utm_col_y,
                "alumnos": document['ALUMNOS']['TOTAL'],
                "prioritario": document['ALUMNOS']['VULNERABLES']['TOTAL']
            })
            file_UTM_c.write(str(document['RBD']) + "," + str(utm_col_x) + "," + str(utm_col_y) + "," + str(document['ALUMNOS']['TOTAL']) + "," + str(document['ALUMNOS']['VULNERABLES']['TOTAL']) + "\n")
            file2.write(str(document['RBD']) + "," + str(document['LATITUD']) + "," + str(document['LONGITUD']) + "," + str(document['ALUMNOS']['TOTAL']) + "," + str(document['ALUMNOS']['VULNERABLES']['TOTAL']) + "\n")
            colegios+=1


# Genera los archivos de lat lon en json para mongodb
# Genera los archivos de UTM de alumnos y colegios en json para mongodb
with open("./alumnos_lat_lon.json", "w") as outfile:
    json.dump(json_data_alu, outfile)
with open("./colegios_lat_lon.json", "w") as outfile:
    json.dump(json_data_col, outfile)
with open("./alumnos_utm.json", "w") as outfile:
    json.dump(json_utm_alu, outfile)
with open("./colegios_utm.json", "w") as outfile:
    json.dump(json_utm_col, outfile)
file.close()
file2.close()
file_UTM_a.close()
file_UTM_c.close()
