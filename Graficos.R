
library(geojsonR)
library(GISTools)
mydata = as.matrix(read.csv("/home/ignacio/Proyectos/S3E2_RSP/v2/v3/sequential_recalentamiento_v8_promedio/cmake-build-debug/save/2020-08-04 T:21-43-info-graficos.txt", header = FALSE, sep=","))
colnames(mydata)[1] <- "count"
colnames(mydata)[2] <- "Distancia"
colnames(mydata)[3] <- "Segregacion"
colnames(mydata)[4] <- "Costo_Cupo"
colnames(mydata)[5] <- "Costo_Solucion"
par(mfrow=c(2,2))
plot(mydata[,"count"],mydata[,"Distancia"], main = "Distancia", ylab="Distancia promedio", xlab="Ciclos", type="l",col="blue")
plot(mydata[,"count"],mydata[,"Segregacion"], main = "Segregación", ylab="Segregación", xlab="Ciclos" , type="l",col="blue")
plot(mydata[,"count"],mydata[,"Costo_Cupo"], main = "Costo Cupo", ylab="Costo Cupo", xlab="Ciclos", type="l",col="blue")
plot(mydata[,"count"],mydata[,"Costo_Solucion"], main = "Costo de Solución", ylab="Costo", xlab="Ciclos", type="l",col="blue")
mtext("Secuencial", side = 1, line = -29, outer = TRUE)


mydata_v3 = as.matrix(read.csv("/home/ignacio/Proyectos/S3E2_RSP/paralelizado_v3/cmake-build-debug/save/2019-11-28 T:20-37-info-graficos.txt", header = FALSE, sep=","))
colnames(mydata_v3)[1] <- "count"
colnames(mydata_v3)[2] <- "Distancia"
colnames(mydata_v3)[3] <- "Segregacion"
colnames(mydata_v3)[4] <- "Costo_Cupo"
colnames(mydata_v3)[5] <- "Costo_Solucion"
par(mfrow=c(2,2))
plot(mydata_v3[,"count"],mydata_v3[,"Distancia"], main = "Distancia", ylab="Distancia promedio", xlab="Ciclos", type="l",col="blue")
plot(mydata_v3[,"count"],mydata_v3[,"Segregacion"], main = "Segregación", ylab="Segregación", xlab="Ciclos" , type="l",col="blue")
plot(mydata_v3[,"count"],mydata_v3[,"Costo_Cupo"], main = "Costo Cupo", ylab="Costo Cupo", xlab="Ciclos", type="l",col="blue")
plot(mydata_v3[,"count"],mydata_v3[,"Costo_Solucion"], main = "Costo de Solución", ylab="Costo", xlab="Ciclos", type="l",col="blue")
mtext("Cuda", side = 1, line = -29, outer = TRUE)

mydata_v4 = as.matrix(read.csv("/home/ignacio/Proyectos/S3E2_RSP/paralelizado_v3/cmake-build-debug/save/2020-01-09 T:20-29-info-graficos.txt", header = FALSE, sep=","))
colnames(mydata_v4)[1] <- "count"
colnames(mydata_v4)[2] <- "Distancia"
colnames(mydata_v4)[3] <- "Segregacion"
colnames(mydata_v4)[4] <- "Costo_Cupo"
colnames(mydata_v4)[5] <- "Costo_Solucion"
par(mfrow=c(2,2))
plot(mydata_v4[,"count"],mydata_v4[,"Distancia"], main = "Distancia", ylab="Distancia promedio", xlab="Ciclos", type="l",col="blue")
plot(mydata_v4[,"count"],mydata_v4[,"Segregacion"], main = "Segregación", ylab="Segregación", xlab="Ciclos" , type="l",col="blue")
plot(mydata_v4[,"count"],mydata_v4[,"Costo_Cupo"], main = "Costo Cupo", ylab="Costo Cupo", xlab="Ciclos", type="l",col="blue")
plot(mydata_v4[,"count"],mydata_v4[,"Costo_Solucion"], main = "Costo de Solución", ylab="Costo", xlab="Ciclos", type="l",col="blue")
mtext("Cuda", side = 1, line = -29, outer = TRUE)


# 1 secuencialv1
mydata_v4 = as.matrix(read.csv("/home/ignacio/Proyectos/S3E2_RSP/paralelizado_v6/cmake-build-debug/save/2020-03-01 T:23-41-info-graficos.txt", header = FALSE, sep=","))
colnames(mydata_v4)[1] <- "count"
colnames(mydata_v4)[2] <- "Distancia"
colnames(mydata_v4)[3] <- "Segregacion"
colnames(mydata_v4)[4] <- "Costo_Cupo"
colnames(mydata_v4)[5] <- "Costo_Solucion"
par(mfrow=c(2,2))
plot(mydata_v4[,"count"],mydata_v4[,"Distancia"], main = "Distancia", ylab="Distancia promedio", xlab="Ciclos", type="l",col="blue")
plot(mydata_v4[,"count"],mydata_v4[,"Segregacion"], main = "Segregación", ylab="Segregación", xlab="Ciclos" , type="l",col="blue")
plot(mydata_v4[,"count"],mydata_v4[,"Costo_Cupo"], main = "Costo Cupo", ylab="Costo Cupo", xlab="Ciclos", type="l",col="blue")
plot(mydata_v4[,"count"],mydata_v4[,"Costo_Solucion"], main = "Costo de Solución", ylab="Costo", xlab="Ciclos", type="l",col="blue")
mtext("secuencial_v1", side = 1, line = -29, outer = TRUE)


# 1 secuencialv2
mydata_v4 = as.matrix(read.csv("/home/ignacio/Proyectos/S3E2_RSP/paralelizado_v6/cmake-build-debug/save_example/block_1/save_1/1-info-graficos.txt", header = FALSE, sep=","))
colnames(mydata_v4)[1] <- "count"
colnames(mydata_v4)[2] <- "Distancia"
colnames(mydata_v4)[3] <- "Segregacion"
colnames(mydata_v4)[4] <- "Costo_Cupo"
colnames(mydata_v4)[5] <- "Costo_Solucion"
par(mfrow=c(2,2))
plot(mydata_v4[,"count"],mydata_v4[,"Distancia"], main = "Distancia", ylab="Distancia promedio", xlab="Ciclos", type="l",col="blue")
plot(mydata_v4[,"count"],mydata_v4[,"Segregacion"], main = "Segregación", ylab="Segregación", xlab="Ciclos" , type="l",col="blue")
plot(mydata_v4[,"count"],mydata_v4[,"Costo_Cupo"], main = "Costo Cupo", ylab="Costo Cupo", xlab="Ciclos", type="l",col="blue")
plot(mydata_v4[,"count"],mydata_v4[,"Costo_Solucion"], main = "Costo de Solución", ylab="Costo", xlab="Ciclos", type="l",col="blue")
mtext("secuencial_v2", side = 1, line = -29, outer = TRUE)

# 1 block
mydata_v4 = as.matrix(read.csv("/home/ignacio/Proyectos/S3E2_RSP/paralelizado_v4/cmake-build-debug/save/2020-01-09 T:22-47-info-graficos-IMPORTANTE.txt", header = FALSE, sep=","))
colnames(mydata_v4)[1] <- "count"
colnames(mydata_v4)[2] <- "Distancia"
colnames(mydata_v4)[3] <- "Segregacion"
colnames(mydata_v4)[4] <- "Costo_Cupo"
colnames(mydata_v4)[5] <- "Costo_Solucion"
par(mfrow=c(2,2))
plot(mydata_v4[,"count"],mydata_v4[,"Distancia"], main = "Distancia", ylab="Distancia promedio", xlab="Ciclos", type="l",col="blue")
plot(mydata_v4[,"count"],mydata_v4[,"Segregacion"], main = "Segregación", ylab="Segregación", xlab="Ciclos" , type="l",col="blue")
plot(mydata_v4[,"count"],mydata_v4[,"Costo_Cupo"], main = "Costo Cupo", ylab="Costo Cupo", xlab="Ciclos", type="l",col="blue")
plot(mydata_v4[,"count"],mydata_v4[,"Costo_Solucion"], main = "Costo de Solución", ylab="Costo", xlab="Ciclos", type="l",col="blue")
mtext("Cuda", side = 1, line = -29, outer = TRUE)

# 2 block
mydata_v4 = as.matrix(read.csv("/home/ignacio/Proyectos/S3E2_RSP/paralelizado_v4/cmake-build-debug/save/2020-01-13 T:16-42-info-graficos.txt", header = FALSE, sep=","))
colnames(mydata_v4)[1] <- "count"
colnames(mydata_v4)[2] <- "Distancia"
colnames(mydata_v4)[3] <- "Segregacion"
colnames(mydata_v4)[4] <- "Costo_Cupo"
colnames(mydata_v4)[5] <- "Costo_Solucion"
par(mfrow=c(2,2))
plot(mydata_v4[,"count"],mydata_v4[,"Distancia"], main = "Distancia", ylab="Distancia promedio", xlab="Ciclos", type="l",col="blue")
plot(mydata_v4[,"count"],mydata_v4[,"Segregacion"], main = "Segregación", ylab="Segregación", xlab="Ciclos" , type="l",col="blue")
plot(mydata_v4[,"count"],mydata_v4[,"Costo_Cupo"], main = "Costo Cupo", ylab="Costo Cupo", xlab="Ciclos", type="l",col="blue")
plot(mydata_v4[,"count"],mydata_v4[,"Costo_Solucion"], main = "Costo de Solución", ylab="Costo", xlab="Ciclos", type="l",col="blue")
mtext("Cuda", side = 1, line = -29, outer = TRUE)

# 3 block
mydata_v4 = as.matrix(read.csv("/home/ignacio/Proyectos/S3E2_RSP/paralelizado_v4/cmake-build-debug/save/2020-01-13 T:16-34-info-graficos.txt", header = FALSE, sep=","))
colnames(mydata_v4)[1] <- "count"
colnames(mydata_v4)[2] <- "Distancia"
colnames(mydata_v4)[3] <- "Segregacion"
colnames(mydata_v4)[4] <- "Costo_Cupo"
colnames(mydata_v4)[5] <- "Costo_Solucion"
par(mfrow=c(2,2))
plot(mydata_v4[,"count"],mydata_v4[,"Distancia"], main = "Distancia", ylab="Distancia promedio", xlab="Ciclos", type="l",col="blue")
plot(mydata_v4[,"count"],mydata_v4[,"Segregacion"], main = "Segregación", ylab="Segregación", xlab="Ciclos" , type="l",col="blue")
plot(mydata_v4[,"count"],mydata_v4[,"Costo_Cupo"], main = "Costo Cupo", ylab="Costo Cupo", xlab="Ciclos", type="l",col="blue")
plot(mydata_v4[,"count"],mydata_v4[,"Costo_Solucion"], main = "Costo de Solución", ylab="Costo", xlab="Ciclos", type="l",col="blue")
mtext("Cuda", side = 1, line = -29, outer = TRUE)


# 1200 block
mydata_v4 = as.matrix(read.csv("/home/ignacio/Proyectos/S3E2_RSP/paralelizado_v4/cmake-build-debug/save/2020-01-10 T:21-49-info-graficos.txt", header = FALSE, sep=","))
colnames(mydata_v4)[1] <- "count"
colnames(mydata_v4)[2] <- "Distancia"
colnames(mydata_v4)[3] <- "Segregacion"
colnames(mydata_v4)[4] <- "Costo_Cupo"
colnames(mydata_v4)[5] <- "Costo_Solucion"
par(mfrow=c(2,2))
plot(mydata_v4[,"count"],mydata_v4[,"Distancia"], main = "Distancia", ylab="Distancia promedio", xlab="Ciclos", type="l",col="blue")
plot(mydata_v4[,"count"],mydata_v4[,"Segregacion"], main = "Segregación", ylab="Segregación", xlab="Ciclos" , type="l",col="blue")
plot(mydata_v4[,"count"],mydata_v4[,"Costo_Cupo"], main = "Costo Cupo", ylab="Costo Cupo", xlab="Ciclos", type="l",col="blue")
plot(mydata_v4[,"count"],mydata_v4[,"Costo_Solucion"], main = "Costo de Solución", ylab="Costo", xlab="Ciclos", type="l",col="blue")
mtext("Cuda", side = 1, line = -29, outer = TRUE)



# 1 block 0,1 es un kilometro
mydata_v4 = as.matrix(read.csv("/home/ignacio/Proyectos/S3E2_RSP/paralelizado_v4/cmake-build-debug/save/2020-01-13 T:16-51-info-graficos.txt", header = FALSE, sep=","))
colnames(mydata_v4)[1] <- "count"
colnames(mydata_v4)[2] <- "Distancia"
colnames(mydata_v4)[3] <- "Segregacion"
colnames(mydata_v4)[4] <- "Costo_Cupo"
colnames(mydata_v4)[5] <- "Costo_Solucion"
par(mfrow=c(2,2))
plot(mydata_v4[,"count"],mydata_v4[,"Distancia"], main = "Distancia", ylab="Distancia promedio", xlab="Ciclos", type="l",col="blue")
plot(mydata_v4[,"count"],mydata_v4[,"Segregacion"], main = "Segregación", ylab="Segregación", xlab="Ciclos" , type="l",col="blue")
plot(mydata_v4[,"count"],mydata_v4[,"Costo_Cupo"], main = "Costo Cupo", ylab="Costo Cupo", xlab="Ciclos", type="l",col="blue")
plot(mydata_v4[,"count"],mydata_v4[,"Costo_Solucion"], main = "Costo de Solución", ylab="Costo", xlab="Ciclos", type="l",col="blue")
mtext("Cuda", side = 1, line = -29, outer = TRUE)


# plotea mapa de temuco con las escuelas
Colegios = as.matrix(read.csv("/home/ignacio/Proyectos/S3E2_RSP/generate_alus_python/colegios.txt", header = FALSE, sep=","))
Estudiantes = as.matrix(read.csv("/home/ignacio/Proyectos/S3E2_RSP/generate_alus_python/alumnos.txt", header = FALSE, sep=","))
file_js = FROM_GeoJson(url_file_string = "/home/ignacio/Proyectos/S3E2_RSP/generate_alus_python/zonas/zona-1/zona-1-manzana.geojson")
datainfo=file_js$features[[1]]$geometry$coordinates[[1]]
plot(datainfo,asp=1,type='n',xlab="Sur",ylab="oeste")
points(Colegios[,"V3"],Colegios[,"V2"],col=Colegios[,'V1'],pch=24)
points(Estudiantes[,"V3"],Estudiantes[,"V2"], col=Estudiantes[,'V1'])
polygon(datainfo, col=rgb(0,0.5,0.7,0.1))




plot(Estudiantes[,"V3"],Estudiantes[,"V2"], col=Estudiantes[,'V1'])
points(Colegios[,"V3"],Colegios[,"V2"],col=Colegios[,'V1'],pch=17)

estudiantesA=Estudiantes[Estudiantes[,"V4"] == 1,]
plot(estudiantesA[,"V3"],estudiantesA[,"V2"],col=estudiantesA[,"V4"])

estudiantesB=Estudiantes[Estudiantes[,"V4"] == 0,]
plot(estudiantesB[,"V3"],estudiantesB[,"V2"],col=2)

plot(Colegios[,"V3"],Colegios[,"V2"],col=Colegios[,'V1'],pch=17)





colegioA=Colegios[Colegios[,"V1"] == 5570,]
estudiantesA=Estudiantes[Estudiantes[,"V4"] == 1,]
plot(datainfo,asp=1,type='n',xlab="Sur",ylab="oeste")
points(colegioA[3],colegioA[2],col=colegioA[1],pch=24,bg="seagreen2")
points(estudiantesA[,"V3"],estudiantesA[,"V2"], col=estudiantesA[,'V1'])
polygon(datainfo, col=rgb(0,0.5,0.7,0.1))

Estudiantes = as.matrix(read.csv("/home/ignacio/Proyectos/S3E2_RSP/data_file/cmake-build-debug/datastudents.txt", header = FALSE, sep=","))
colegioA=Colegios
estudiantesA=Estudiantes
plot(datainfo,asp=1,type='n',xlab="Sur",ylab="oeste")
points(colegioA[3],colegioA[2],col=colegioA[1],pch=24,bg="seagreen2")
#points(estudiantesA[,"V3"],estudiantesA[,"V2"], col=estudiantesA[,'V1'])
polygon(datainfo, col=rgb(0,0.5,0.7,0.1))

Estudiantes = as.matrix(read.csv("/home/ignacio/Proyectos/S3E2_RSP/data_file/cmake-build-debug/datastudents.txt", header = FALSE, sep=","))
colegioA=Colegios[Colegios[,"V1"] == 5569,]
estudiantesA=Estudiantes[Estudiantes[,"V1"] == 5569,]
plot(datainfo,asp=1,type='n',xlab="Sur",ylab="oeste")
points(colegioA[3],colegioA[2],col=colegioA[1],pch=24,bg="seagreen2")
points(estudiantesA[,"V3"],estudiantesA[,"V2"], col=estudiantesA[,'V1'])
polygon(datainfo, col=rgb(0,0.5,0.7,0.1))

Estudiantes = read.table("/home/ignacio/Proyectos/S3E2_RSP/data_file/cmake-build-debug/datastudents.txt", header = FALSE , sep=",")
estudiantesA=Estudiantes
plot(estudiantesA[,"V3"],estudiantesA[,"V2"], col=estudiantesA[,'V1'])




##################################################


library(ggplot2)
mydata <- read.table(file = "/home/ignacio/Proyectos/S3E2_RSP/sequential_v2/cmake-build-debug/save/2020-02-18 T:18-23-students.csv",header = TRUE, fill = TRUE)
nomissing <- na.omit(mydata) #chull function does not work with missing data

#getting the convex hull of each unique point set
df <- nomissing
find_hull <- function(df) df[chull(df$eff, df$man), ]
hulls <- ddply(df, "issue", find_hull)


###################################


data_info_test = read.csv("/home/ignacio/Proyectos/S3E2_RSP/info_save_test.txt", header = FALSE, sep=",")
data_info_test = as.data.frame(data_info_test)
colnames(data_info_test)[1] <- "time"
as.double(unlist(data_info_test["time"]))
colnames(data_info_test)[2] <- "block"
as.numeric(unlist(data_info_test["block"]))
colnames(data_info_test)[3] <- "thread"
as.numeric(unlist(data_info_test["thread"]))
colnames(data_info_test)[4] <- "count"
as.numeric(unlist(data_info_test["count"]))
data_info_test <- data_info_test[!is.na(data_info_test["time"]),]
data_info_test <- data_info_test[!is.na(data_info_test["block"]),]
data_info_test <- data_info_test[!is.na(data_info_test["time"]),]

plot(lm(data_info_test$time ~ data_info_test$block + data_info_test$thread))

plot(data_info_test[,"block"],data_info_test[,"time"], main = "Distancia", ylab="Distancia promedio", xlab="Ciclos", type="l",col="blue")

plot(data_info_test[,"time"],data_info_test[,"thread"]*data_info_test[,"block"], main = "Distancia", ylab="thread", xlab="tiempo", type="l",col="blue")



###################################

mydata_v4 = as.matrix(read.csv("/home/ignacio/Proyectos/S3E2_RSP/paralelizado_v2_recalentamiento/cmake-build-debug/save/2020-03-27 T:19-53-info-graficos.txt", header = FALSE, sep=","))
colnames(mydata_v4)[1] <- "count"
colnames(mydata_v4)[2] <- "Distancia"
colnames(mydata_v4)[3] <- "Segregacion"
colnames(mydata_v4)[4] <- "Costo_Cupo"
colnames(mydata_v4)[5] <- "Costo_Solucion"
colnames(mydata_v4)[6] <- "temp"
colnames(mydata_v4)[7] <- "time_cuda"
par(mfrow=c(2,2))
plot(mydata_v4[,"count"],mydata_v4[,"Distancia"], main = "Distancia", ylab="Distancia promedio", xlab="Ciclos", type="l",col="blue")
plot(mydata_v4[,"count"],mydata_v4[,"Segregacion"], main = "Segregación", ylab="Segregación", xlab="Ciclos" , type="l",col="blue")
plot(mydata_v4[,"count"],mydata_v4[,"Costo_Cupo"], main = "Costo Cupo", ylab="Costo Cupo", xlab="Ciclos", type="l",col="blue")
plot(mydata_v4[,"count"],mydata_v4[,"Costo_Solucion"], main = "Costo de Solución", ylab="Costo", xlab="Ciclos", type="l",col="blue")
mtext("Cuda", side = 1, line = -29, outer = TRUE)


mydata_v3 = as.matrix(read.csv("/home/ignacio/Proyectos/S3E2_RSP/paralelizado_v2_recalentamiento/cmake-build-debug/save/2020-03-27 T:21-26-info-graficos.txt", header = FALSE, sep=","))
colnames(mydata_v3)[1] <- "count"
colnames(mydata_v3)[2] <- "Distancia"
colnames(mydata_v3)[3] <- "Segregacion"
colnames(mydata_v3)[4] <- "Costo_Cupo"
colnames(mydata_v3)[5] <- "Costo_Solucion"
colnames(mydata_v3)[6] <- "temp"
par(mfrow=c(2,2))
plot(mydata_v3[,"count"],mydata_v3[,"Distancia"], main = "Distancia", ylab="Distancia promedio", xlab="Ciclos", type="l",col="blue")
plot(mydata_v3[,"count"],mydata_v3[,"Segregacion"], main = "Segregación", ylab="Segregación", xlab="Ciclos" , type="l",col="blue")
plot(mydata_v3[,"count"],mydata_v3[,"Costo_Cupo"], main = "Costo Cupo", ylab="Costo Cupo", xlab="Ciclos", type="l",col="blue")
plot(mydata_v3[,"count"],mydata_v3[,"Costo_Solucion"], main = "Costo de Solución", ylab="Costo", xlab="Ciclos", type="l",col="blue")

par(mfrow=c(2,1))
plot(mydata_v3[,"count"],mydata_v3[,"temp"], main = "Costo de Solución", ylab="temp", xlab="Ciclos", type="l",col="blue")
plot(mydata_v4[,"count"],mydata_v4[,"temp"], main = "Costo de Solución", ylab="temp", xlab="Ciclos", type="l",col="blue")


mydata_v2 = as.matrix(read.csv("/home/ignacio/Proyectos/S3E2_RSP/paralelizado_v8/cmake-build-debug/save_example/block_32/save_64/1-info-graficos.txt", header = FALSE, sep=","))
colnames(mydata_v2)[1] <- "count"
colnames(mydata_v2)[2] <- "Distancia"
colnames(mydata_v2)[3] <- "Segregacion"
colnames(mydata_v2)[4] <- "Costo_Cupo"
colnames(mydata_v2)[5] <- "Costo_Solucion"
colnames(mydata_v2)[6] <- "time_cuda"
plot(mydata_v3[,"count"],mydata_v3[,"Distancia"], main = "Distancia", ylab="Distancia promedio", xlab="Ciclos", type="l",col="blue")
plot(mydata_v3[,"count"],mydata_v3[,"Segregacion"], main = "Segregación", ylab="Segregación", xlab="Ciclos" , type="l",col="blue")
plot(mydata_v3[,"count"],mydata_v3[,"Costo_Cupo"], main = "Costo Cupo", ylab="Costo Cupo", xlab="Ciclos", type="l",col="blue")
plot(mydata_v3[,"count"],mydata_v3[,"Costo_Solucion"], main = "Costo de Solución", ylab="Costo", xlab="Ciclos", type="l",col="blue")
plot(mydata_v2[,"count"],mydata_v2[,"time_cuda"], main = "Costo de Solución", ylab="ms", xlab="Ciclos", type="l",col="blue")


summary(mydata_v4[,"time_cuda"])
summary(mydata_v3[,"time_cuda"])
summary(mydata_v2[,"time_cuda"])


#Tiempo de ejecución en función del tamaño del bloque y los thread  hacer regresion lineal entre 
#t = B(bloques) + thread
#lm(t~b+thread)
#TIempo de ejecución deberia ser exponencial
#Hacer una grafica de t contra b 
#y t contra thread
#log(t)= log(B)+log(thread)

data_info_test = read.csv("/home/ignacio/Proyectos/S3E2_RSP/paralelizado_v8/cmake-build-debug/info_save_test.txt", header = FALSE, sep=",")
data_info_test = as.data.frame(data_info_test)
colnames(data_info_test)[1] <- "time"
as.double(unlist(data_info_test["time"]))
colnames(data_info_test)[2] <- "block"
as.numeric(unlist(data_info_test["block"]))
colnames(data_info_test)[3] <- "thread"
as.numeric(unlist(data_info_test["thread"]))
colnames(data_info_test)[4] <- "count"
as.numeric(unlist(data_info_test["count"]))
data_info_test <- data_info_test[!is.na(data_info_test["time"]),]
data_info_test <- data_info_test[!is.na(data_info_test["block"]),]
data_info_test <- data_info_test[!is.na(data_info_test["time"]),]

plot(lm(data_info_test$time ~ data_info_test$block + data_info_test$thread))

plot(data_info_test[,"block"],data_info_test[,"time"], main = "Distancia", ylab="Distancia promedio", xlab="Ciclos", type="l",col="blue")

plot(data_info_test[,"time"],data_info_test[,"thread"]*data_info_test[,"block"], main = "Distancia", ylab="thread", xlab="tiempo", type="l",col="blue")

data = lm(data_info_test$thread[1:28] ~ data_info_test$time[1:28])
summary(data)
library(ggplot2)
ggplot(data=data_info_test[data_info_test$block==64,],aes(x=thread, y=time) )+
  geom_smooth(model="lm")
+
  scale_x_log10()+scale_y_log10()

#####################
library(ggplot2)
data_info_test_2 = read.csv("/home/ignacio/Proyectos/S3E2_RSP/Muestras/paralelizado_recalentamiento_v1/info_save_test_1_10_50.txt", header = FALSE, sep=",")
data_info_test_2 = as.data.frame(data_info_test_2)
colnames(data_info_test_2)[1] <- "time"
as.double(unlist(data_info_test_2["time"]))
colnames(data_info_test_2)[2] <- "costSolution"
as.double(unlist(data_info_test_2["costSolution"]))
colnames(data_info_test_2)[3] <- "block"
as.numeric(unlist(data_info_test_2["block"]))
colnames(data_info_test_2)[4] <- "thread"
as.numeric(unlist(data_info_test_2["thread"]))
colnames(data_info_test_2)[5] <- "count"
as.numeric(unlist(data_info_test_2["count"]))
data_info_test_2 <- data_info_test_2[!is.na(data_info_test_2["time"]),]
data_info_test_2 <- data_info_test_2[!is.na(data_info_test_2["costSolution"]),]
data_info_test_2 <- data_info_test_2[!is.na(data_info_test_2["block"]),]
data_info_test_2 <- data_info_test_2[!is.na(data_info_test_2["time"]),]

ggplot(data=data_info_test_2[data_info_test_2$block==1,],aes(x=thread*block, y=time) )+
  geom_smooth(model="lm")+
  scale_x_log10()+scale_y_log10()


######
library(ggplot2)
data_info_test_2 = read.csv("/home/ignacio/Proyectos/S3E2_RSP/Muestras/paralelizado_recalentamiento_v1/info_save_test_1_10_50.txt", header = FALSE, sep=",")
data_info_test_2 = as.data.frame(data_info_test_2)
colnames(data_info_test_2)[1] <- "time"
as.double(unlist(data_info_test_2["time"]))
colnames(data_info_test_2)[2] <- "costSolution"
as.double(unlist(data_info_test_2["costSolution"]))
colnames(data_info_test_2)[3] <- "meandist"
as.double(unlist(data_info_test_2["meandist"]))
colnames(data_info_test_2)[4] <- "segregacion"
as.double(unlist(data_info_test_2["segregacion"]))
colnames(data_info_test_2)[5] <- "costcupo"
as.double(unlist(data_info_test_2["costcupo"]))
colnames(data_info_test_2)[6] <- "block"
as.numeric(unlist(data_info_test_2["block"]))
colnames(data_info_test_2)[7] <- "thread"
as.numeric(unlist(data_info_test_2["thread"]))
colnames(data_info_test_2)[8] <- "count"
as.numeric(unlist(data_info_test_2["count"]))
data_info_test_2 <- data_info_test_2[!is.na(data_info_test_2["time"]),]
data_info_test_2 <- data_info_test_2[!is.na(data_info_test_2["costSolution"]),]
data_info_test_2 <- data_info_test_2[!is.na(data_info_test_2["block"]),]
data_info_test_2 <- data_info_test_2[!is.na(data_info_test_2["time"]),]

ggplot(data=data_info_test_2,aes(x=block*thread, y=costSolution) )+
  geom_smooth(model="lm")+
  scale_x_log10()+scale_y_log10()

#####################

library(ggplot2)
data_info_test_3 = read.csv("/home/ignacio/Proyectos/S3E2_RSP/multihilo_v4_recalentamiento/cmake-build-debug/info_save_test.txt", header = FALSE, sep=",")
data_info_test_3 = as.data.frame(data_info_test_3)
colnames(data_info_test_3)[1] <- "time"
as.double(unlist(data_info_test_3["time"]))
colnames(data_info_test_3)[2] <- "costSolution"
as.double(unlist(data_info_test_3["costSolution"]))
colnames(data_info_test_3)[3] <- "meandist"
as.double(unlist(data_info_test_3["meandist"]))
colnames(data_info_test_3)[4] <- "segregacion"
as.double(unlist(data_info_test_3["segregacion"]))
colnames(data_info_test_3)[5] <- "costcupo"
as.double(unlist(data_info_test_3["costcupo"]))
colnames(data_info_test_3)[6] <- "block"
as.numeric(unlist(data_info_test_3["block"]))
colnames(data_info_test_3)[7] <- "thread"
as.numeric(unlist(data_info_test_3["thread"]))
colnames(data_info_test_3)[8] <- "count"
as.numeric(unlist(data_info_test_3["count"]))
data_info_test_3 <- data_info_test_3[!is.na(data_info_test_3["time"]),]
data_info_test_3 <- data_info_test_3[!is.na(data_info_test_3["costSolution"]),]
data_info_test_3 <- data_info_test_3[!is.na(data_info_test_3["block"]),]
data_info_test_3 <- data_info_test_3[!is.na(data_info_test_3["time"]),]
data_info_test_3 <- data_info_test_3[!is.na(data_info_test_3["time"]),]
data_info_test_3 <- data_info_test_3[!is.na(data_info_test_3["costSolution"]),]

ggplot(data=data_info_test_3,aes(x=block*thread, y=costSolution) )+
  geom_smooth(model="lm")+
  scale_x_log10()+scale_y_log10()

#10**t = alpha*n_thread+beta
# beta constantante 

# ver tiempo por block 

mydata_v2 = as.matrix(read.csv("/home/ignacio/Proyectos/S3E2_RSP/paralelizado_v2_recalentamiento/cmake-build-debug/save//2020-04-03 T:15-55-info-graficos.txt", header = FALSE, sep=","))
colnames(mydata_v2)[1] <- "count"
colnames(mydata_v2)[2] <- "Distancia"
colnames(mydata_v2)[3] <- "Segregacion"
colnames(mydata_v2)[4] <- "Costo_Cupo"
colnames(mydata_v2)[5] <- "Costo_Solucion"
par(mfrow=c(2,2))
plot(mydata_v2[,"count"],mydata_v2[,"Distancia"], main = "Distancia", ylab="Distancia promedio", xlab="Ciclos", type="l",col="blue")
plot(mydata_v2[,"count"],mydata_v2[,"Segregacion"], main = "Segregación", ylab="Segregación", xlab="Ciclos" , type="l",col="blue")
plot(mydata_v2[,"count"],mydata_v2[,"Costo_Cupo"], main = "Costo Cupo", ylab="Costo Cupo", xlab="Ciclos", type="l",col="blue")
plot(mydata_v2[,"count"],mydata_v2[,"Costo_Solucion"], main = "Costo de Solución", ylab="Costo", xlab="Ciclos", type="l",col="blue")

mydata_v2 = as.matrix(read.csv("/home/ignacio/Proyectos/S3E2_RSP/paralelizado_v2_recalentamiento/cmake-build-debug/save_example_4/block_1/save_85/1-info-graficos.txt", header = FALSE, sep=","))
colnames(mydata_v2)[1] <- "count"
colnames(mydata_v2)[2] <- "Distancia"
colnames(mydata_v2)[3] <- "Segregacion"
colnames(mydata_v2)[4] <- "Costo_Cupo"
colnames(mydata_v2)[5] <- "Costo_Solucion"
par(mfrow=c(2,2))
plot(mydata_v2[,"count"],mydata_v2[,"Distancia"], main = "Distancia", ylab="Distancia promedio", xlab="Ciclos", type="l",col="blue")
plot(mydata_v2[,"count"],mydata_v2[,"Segregacion"], main = "Segregación", ylab="Segregación", xlab="Ciclos" , type="l",col="blue")
plot(mydata_v2[,"count"],mydata_v2[,"Costo_Cupo"], main = "Costo Cupo", ylab="Costo Cupo", xlab="Ciclos", type="l",col="blue")
plot(mydata_v2[,"count"],mydata_v2[,"Costo_Solucion"], main = "Costo de Solución", ylab="Costo", xlab="Ciclos", type="l",col="blue")

mydata_v2 = as.matrix(read.csv("/home/ignacio/Proyectos/S3E2_RSP/sequential_adaptative/cmake-build-debug/save/2020-03-16 T:21-18-info-graficos.txt", header = FALSE, sep=","))
colnames(mydata_v2)[1] <- "count"
colnames(mydata_v2)[2] <- "Distancia"
colnames(mydata_v2)[3] <- "Segregacion"
colnames(mydata_v2)[4] <- "Costo_Cupo"
colnames(mydata_v2)[5] <- "Costo_Solucion"
par(mfrow=c(2,2))
plot(mydata_v2[,"count"],mydata_v2[,"Distancia"], main = "Distancia", ylab="Distancia promedio", xlab="Ciclos", type="l",col="blue")
plot(mydata_v2[,"count"],mydata_v2[,"Segregacion"], main = "Segregación", ylab="Segregación", xlab="Ciclos" , type="l",col="blue")
plot(mydata_v2[,"count"],mydata_v2[,"Costo_Cupo"], main = "Costo Cupo", ylab="Costo Cupo", xlab="Ciclos", type="l",col="blue")
plot(mydata_v2[,"count"],mydata_v2[,"Costo_Solucion"], main = "Costo de Solución", ylab="Costo", xlab="Ciclos", type="l",col="blue")


#################################################################################################
######
library(ggplot2)

data_info_test_0 = read.csv("/home/ignacio/Proyectos/S3E2_RSP/Muestras/sequential_recalentamiento_v1/info_save_test_1_10_50.txt", header = FALSE, sep=",")
data_info_test_0 = as.data.frame(data_info_test_0)
colnames(data_info_test_0)[1] <- "time"
as.double(unlist(data_info_test_0["time"]))
colnames(data_info_test_0)[2] <- "costSolution"
as.double(unlist(data_info_test_0["costSolution"]))
colnames(data_info_test_0)[3] <- "meandist"
as.double(unlist(data_info_test_0["meandist"]))
colnames(data_info_test_0)[4] <- "segregacion"
as.double(unlist(data_info_test_0["segregacion"]))
colnames(data_info_test_0)[5] <- "costcupo"
as.double(unlist(data_info_test_0["costcupo"]))
colnames(data_info_test_0)[6] <- "count"
as.numeric(unlist(data_info_test_0["count"]))
data_info_test_0 <- data_info_test_0[!is.na(data_info_test_0["time"]),]
data_info_test_0 <- data_info_test_0[!is.na(data_info_test_0["costSolution"]),]
data_info_test_0 <- data_info_test_0[!is.na(data_info_test_0["time"]),]

data_info_test_1 = read.csv("/home/ignacio/Proyectos/S3E2_RSP/Muestras/multihilo_recalentamiento_v1/info_save_test_1_10_50.txt", header = FALSE, sep=",")
data_info_test_1 = as.data.frame(data_info_test_1)
colnames(data_info_test_1)[1] <- "time"
as.double(unlist(data_info_test_1["time"]))
colnames(data_info_test_1)[2] <- "costSolution"
as.double(unlist(data_info_test_1["costSolution"]))
colnames(data_info_test_1)[3] <- "meandist"
as.double(unlist(data_info_test_1["meandist"]))
colnames(data_info_test_1)[4] <- "segregacion"
as.double(unlist(data_info_test_1["segregacion"]))
colnames(data_info_test_1)[5] <- "costcupo"
as.double(unlist(data_info_test_1["costcupo"]))
colnames(data_info_test_1)[6] <- "block"
as.numeric(unlist(data_info_test_1["block"]))
colnames(data_info_test_1)[7] <- "thread"
as.numeric(unlist(data_info_test_1["thread"]))
colnames(data_info_test_1)[8] <- "count"
as.numeric(unlist(data_info_test_1["count"]))
data_info_test_1 <- data_info_test_1[!is.na(data_info_test_1["time"]),]
data_info_test_1 <- data_info_test_1[!is.na(data_info_test_1["costSolution"]),]
data_info_test_1 <- data_info_test_1[!is.na(data_info_test_1["block"]),]
data_info_test_1 <- data_info_test_1[!is.na(data_info_test_1["time"]),]


data_info_test_2 = read.csv("/home/ignacio/Proyectos/S3E2_RSP/Muestras/paralelizado_recalentamiento_v1/info_save_test_1_10_50.txt", header = FALSE, sep=",")
data_info_test_2 = as.data.frame(data_info_test_2)
colnames(data_info_test_2)[1] <- "time"
as.double(unlist(data_info_test_2["time"]))
colnames(data_info_test_2)[2] <- "costSolution"
as.double(unlist(data_info_test_2["costSolution"]))
colnames(data_info_test_2)[3] <- "meandist"
as.double(unlist(data_info_test_2["meandist"]))
colnames(data_info_test_2)[4] <- "segregacion"
as.double(unlist(data_info_test_2["segregacion"]))
colnames(data_info_test_2)[5] <- "costcupo"
as.double(unlist(data_info_test_2["costcupo"]))
colnames(data_info_test_2)[6] <- "block"
as.numeric(unlist(data_info_test_2["block"]))
colnames(data_info_test_2)[7] <- "thread"
as.numeric(unlist(data_info_test_2["thread"]))
colnames(data_info_test_2)[8] <- "count"
as.numeric(unlist(data_info_test_2["count"]))
data_info_test_2 <- data_info_test_2[!is.na(data_info_test_2["time"]),]
data_info_test_2 <- data_info_test_2[!is.na(data_info_test_2["costSolution"]),]
data_info_test_2 <- data_info_test_2[!is.na(data_info_test_2["block"]),]

data_info_test_3 = read.csv("/home/ignacio/Proyectos/S3E2_RSP/Muestras/paralelizado_recalentamiento_sin_teoria_de_juegos_v1/info_save_test_1_10_50.txt", header = FALSE, sep=",")
data_info_test_3 = as.data.frame(data_info_test_3)
colnames(data_info_test_3)[1] <- "time"
as.double(unlist(data_info_test_3["time"]))
colnames(data_info_test_3)[2] <- "costSolution"
as.double(unlist(data_info_test_3["costSolution"]))
colnames(data_info_test_3)[3] <- "meandist"
as.double(unlist(data_info_test_3["meandist"]))
colnames(data_info_test_3)[4] <- "segregacion"
as.double(unlist(data_info_test_3["segregacion"]))
colnames(data_info_test_3)[5] <- "costcupo"
as.double(unlist(data_info_test_3["costcupo"]))
colnames(data_info_test_3)[6] <- "block"
as.numeric(unlist(data_info_test_3["block"]))
colnames(data_info_test_3)[7] <- "thread"
as.numeric(unlist(data_info_test_3["thread"]))
colnames(data_info_test_3)[8] <- "count"
as.numeric(unlist(data_info_test_3["count"]))
data_info_test_3 <- data_info_test_3[!is.na(data_info_test_3["time"]),]
data_info_test_3 <- data_info_test_3[!is.na(data_info_test_3["costSolution"]),]
data_info_test_3 <- data_info_test_3[!is.na(data_info_test_3["block"]),]
data_info_test_3 <- data_info_test_3[!is.na(data_info_test_3["time"]),]

####################
data_info_test_4 = read.csv("/home/ignacio/Proyectos/S3E2_RSP/Muestras/paralelizado_recalentamiento_30/info_save_test_1_10_50.txt", header = FALSE, sep=",")
data_info_test_4 = as.data.frame(data_info_test_4)
colnames(data_info_test_4)[1] <- "time"
as.double(unlist(data_info_test_4["time"]))
colnames(data_info_test_4)[2] <- "costSolution"
as.double(unlist(data_info_test_4["costSolution"]))
colnames(data_info_test_4)[3] <- "meandist"
as.double(unlist(data_info_test_4["meandist"]))
colnames(data_info_test_4)[4] <- "segregacion"
as.double(unlist(data_info_test_4["segregacion"]))
colnames(data_info_test_4)[5] <- "costcupo"
as.double(unlist(data_info_test_4["costcupo"]))
colnames(data_info_test_4)[6] <- "block"
as.numeric(unlist(data_info_test_4["block"]))
colnames(data_info_test_4)[7] <- "thread"
as.numeric(unlist(data_info_test_4["thread"]))
colnames(data_info_test_4)[8] <- "count"
as.numeric(unlist(data_info_test_4["count"]))
data_info_test_4 <- data_info_test_4[!is.na(data_info_test_4["time"]),]
data_info_test_4 <- data_info_test_4[!is.na(data_info_test_4["costSolution"]),]
data_info_test_4 <- data_info_test_4[!is.na(data_info_test_4["block"]),]
data_info_test_4 <- data_info_test_4[!is.na(data_info_test_4["time"]),]


##### Versus tiempo 
ggplot(data=data_info_test_1,aes(x=block*thread, y=time) )+
  labs(title="multihilo_recalentamiento_v1")+
  geom_smooth(model="lm")+
  scale_x_log10()+scale_y_log10()

ggplot(data=data_info_test_2,aes(x=block*thread, y=time) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  scale_x_log10()+scale_y_log10()


#### Costo
ggplot(data=data_info_test_1,aes(x=block*thread, y=costSolution) )+
  labs(title="multihilo_recalentamiento_v1")+
  geom_smooth(model="lm")+
  scale_x_log10()+scale_y_log10()

ggplot(data=data_info_test_2,aes(x=block*thread, y=costSolution) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  scale_x_log10()+scale_y_log10()

ggplot(data=data_info_test_2,aes(x=block, y=costSolution) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  scale_x_log10()+scale_y_log10()+
  facet_wrap(.~thread)

ggplot(data=data_info_test_2,aes(x=block, y=costSolution) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)+
  ylim(0,1)

ggplot(data=data_info_test_2,aes(x=block, y=costSolution) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

ggplot(data=data_info_test_2,aes(x=thread, y=costSolution) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)



ggplot(data=data_info_test_2,aes(x=block, y=segregacion) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

ggplot(data=data_info_test_2,aes(x=thread, y=segregacion) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)

ggplot(data=data_info_test_2,aes(x=block, y=segregacion) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

ggplot(data=data_info_test_2,aes(x=block, y=meandist) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

ggplot(data=data_info_test_2,aes(x=thread, y=meandist) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)

ggplot(data=data_info_test_2,aes(x=block, y=costcupo) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

ggplot(data=data_info_test_2,aes(x=thread, y=costcupo) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)

ggplot(data=data_info_test_2,aes(x=block, y=time) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

ggplot(data=data_info_test_2,aes(x=block*thread, y=costSolution) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  scale_x_log10()

ggplot(data=data_info_test_2,aes(x=block*thread, y=meandist) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  scale_x_log10()

ggplot(data=data_info_test_2,aes(x=block*thread, y=costcupo) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  scale_x_log10()

ggplot(data=data_info_test_2,aes(x=block*thread, y=segregacion) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  scale_x_log10()

ggplot(data=data_info_test_2,aes(x=count, y=meanDist()) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)


mydata_v2 = as.matrix(read.csv("/home/ignacio/Proyectos/S3E2_RSP/v2/paralelizado_recalentamiento_v7_promedio/cmake-build-debug/save/2020-08-02 T:16-20-info-graficos.txt", header = FALSE, sep=","))
colnames(mydata_v2)[1] <- "count"
colnames(mydata_v2)[2] <- "Distancia"
colnames(mydata_v2)[3] <- "Segregacion"
colnames(mydata_v2)[4] <- "Costo_Cupo"
colnames(mydata_v2)[5] <- "Costo_Solucion"
par(mfrow=c(2,2))
plot(mydata_v2[,"count"],mydata_v2[,"Distancia"], main = "Distancia", ylab="Distancia promedio", xlab="Ciclos", type="l",col="blue")
plot(mydata_v2[,"count"],mydata_v2[,"Segregacion"], main = "Segregación", ylab="Segregación", xlab="Ciclos" , type="l",col="blue")
plot(mydata_v2[,"count"],mydata_v2[,"Costo_Cupo"], main = "Costo Cupo", ylab="Costo Cupo", xlab="Ciclos", type="l",col="blue")
plot(mydata_v2[,"count"],mydata_v2[,"Costo_Solucion"], main = "Costo de Solución", ylab="Costo", xlab="Ciclos", type="l",col="blue")


### ciclo && costSolution

ggplot(data=mydata_v2,aes(x=count, y=Costo_Solucion) )+
  labs(title="multihilo_recalentamiento_v1")+
  geom_smooth(model="lm")+
  scale_x_log10()+scale_y_log10()

ggplot(data=data_info_test_2,aes(x=time, y=costSolution) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  scale_x_log10()+scale_y_log10()



w=c(10,50,1)/sum(c(10,50,1))
w
w=c(1,10,50)/sum(c(1,10,50))
w
sum(c(3.412243,0.26417506,0.064962967)*w)


########################################

ggplot(data=data_info_test_4,aes(x=block, y=costSolution) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

ggplot(data=data_info_test_4,aes(x=thread, y=costSolution) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)

ggplot(data=data_info_test_4,aes(x=thread, y=segregacion) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)

ggplot(data=data_info_test_4,aes(x=block, y=segregacion) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

ggplot(data=data_info_test_4,aes(x=block, y=meandist) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

ggplot(data=data_info_test_4,aes(x=thread, y=meandist) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)

ggplot(data=data_info_test_4,aes(x=block, y=costcupo) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

ggplot(data=data_info_test_4,aes(x=thread, y=costcupo) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)

ggplot(data=data_info_test_4,aes(x=block, y=time) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

ggplot(data=data_info_test_4,aes(x=thread, y=time) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)

ggplot(data=data_info_test_4,aes(x=block*thread, y=costSolution) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  scale_x_log10()

ggplot(data=data_info_test_4,aes(x=block*thread, y=meandist) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  scale_x_log10()

ggplot(data=data_info_test_4,aes(x=block*thread, y=costcupo) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  scale_x_log10()

ggplot(data=data_info_test_4,aes(x=block*thread, y=segregacion) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  scale_x_log10()

ggplot(data=data_info_test_4,aes(x=count, y=meanDist()) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)


######################################


####################
data_info_test_5 = read.csv("/home/ignacio/Proyectos/S3E2_RSP/Muestras/Paralelizado_recalentamiento_v1_pesos/info_save_test_5_20_50.txt", header = FALSE, sep=",")
data_info_test_5 = as.data.frame(data_info_test_5)
colnames(data_info_test_5)[1] <- "time"
as.double(unlist(data_info_test_5["time"]))
colnames(data_info_test_5)[2] <- "costSolution"
as.double(unlist(data_info_test_5["costSolution"]))
colnames(data_info_test_5)[3] <- "meandist"
as.double(unlist(data_info_test_5["meandist"]))
colnames(data_info_test_5)[4] <- "segregacion"
as.double(unlist(data_info_test_5["segregacion"]))
colnames(data_info_test_5)[5] <- "costcupo"
as.double(unlist(data_info_test_5["costcupo"]))
colnames(data_info_test_5)[6] <- "block"
as.numeric(unlist(data_info_test_5["block"]))
colnames(data_info_test_5)[7] <- "thread"
as.numeric(unlist(data_info_test_5["thread"]))
colnames(data_info_test_5)[8] <- "count"
as.numeric(unlist(data_info_test_5["count"]))
data_info_test_5 <- data_info_test_5[!is.na(data_info_test_5["time"]),]
data_info_test_5 <- data_info_test_5[!is.na(data_info_test_5["costSolution"]),]
data_info_test_5 <- data_info_test_5[!is.na(data_info_test_5["block"]),]
data_info_test_5 <- data_info_test_5[!is.na(data_info_test_5["time"]),]

ggplot(data=data_info_test_5,aes(x=block, y=costSolution) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

ggplot(data=data_info_test_5,aes(x=thread, y=costSolution) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)

ggplot(data=data_info_test_5,aes(x=thread, y=segregacion) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)

ggplot(data=data_info_test_5,aes(x=block, y=segregacion) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

ggplot(data=data_info_test_5,aes(x=block, y=meandist) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

ggplot(data=data_info_test_5,aes(x=thread, y=meandist) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)

ggplot(data=data_info_test_5,aes(x=block, y=costcupo) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

ggplot(data=data_info_test_5,aes(x=thread, y=costcupo) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)

ggplot(data=data_info_test_5,aes(x=block, y=time) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

ggplot(data=data_info_test_5,aes(x=thread, y=time) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)


data_info_test_6 = read.csv("/home/ignacio/Proyectos/S3E2_RSP/Muestras/Paralelizado_recalentamiento_v1_pesos/info_save_test_5_20_50.txt", header = FALSE, sep=",")
data_info_test_6 = as.data.frame(data_info_test_6)
colnames(data_info_test_6)[1] <- "time"
as.double(unlist(data_info_test_6["time"]))
colnames(data_info_test_6)[2] <- "costSolution"
as.double(unlist(data_info_test_6["costSolution"]))
colnames(data_info_test_6)[3] <- "meandist"
as.double(unlist(data_info_test_6["meandist"]))
colnames(data_info_test_6)[4] <- "segregacion"
as.double(unlist(data_info_test_6["segregacion"]))
colnames(data_info_test_6)[5] <- "costcupo"
as.double(unlist(data_info_test_6["costcupo"]))
colnames(data_info_test_6)[6] <- "block"
as.numeric(unlist(data_info_test_6["block"]))
colnames(data_info_test_6)[7] <- "thread"
as.numeric(unlist(data_info_test_6["thread"]))
colnames(data_info_test_6)[8] <- "count"
as.numeric(unlist(data_info_test_6["count"]))
data_info_test_6 <- data_info_test_6[!is.na(data_info_test_6["time"]),]
data_info_test_6 <- data_info_test_6[!is.na(data_info_test_6["costSolution"]),]
data_info_test_6 <- data_info_test_6[!is.na(data_info_test_6["block"]),]
data_info_test_6 <- data_info_test_6[!is.na(data_info_test_6["time"]),]

ggplot(data=data_info_test_6,aes(x=block, y=costSolution) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

ggplot(data=data_info_test_6,aes(x=thread, y=costSolution) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)

ggplot(data=data_info_test_6,aes(x=thread, y=segregacion) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)

ggplot(data=data_info_test_6,aes(x=block, y=segregacion) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

ggplot(data=data_info_test_6,aes(x=block, y=meandist) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

ggplot(data=data_info_test_6,aes(x=thread, y=meandist) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)

ggplot(data=data_info_test_6,aes(x=block, y=costcupo) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

ggplot(data=data_info_test_6,aes(x=thread, y=costcupo) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)

ggplot(data=data_info_test_6,aes(x=block, y=time) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

ggplot(data=data_info_test_6,aes(x=thread, y=time) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)



#######################################################

data_peso_0 = read.csv("/home/ignacio/Proyectos/S3E2_RSP/Muestras/paralelizado_recalentamiento_30/info_save_test_1_10_50.txt", header = FALSE, sep=",")
data_peso_0 = as.data.frame(data_peso_0)
colnames(data_peso_0)[1] <- "time"
as.double(unlist(data_peso_0["time"]))
colnames(data_peso_0)[2] <- "costSolution"
as.double(unlist(data_peso_0["costSolution"]))
colnames(data_peso_0)[3] <- "meandist"
as.double(unlist(data_peso_0["meandist"]))
colnames(data_peso_0)[4] <- "segregacion"
as.double(unlist(data_peso_0["segregacion"]))
colnames(data_peso_0)[5] <- "costcupo"
as.double(unlist(data_peso_0["costcupo"]))
colnames(data_peso_0)[6] <- "block"
as.numeric(unlist(data_peso_0["block"]))
colnames(data_peso_0)[7] <- "thread"
as.numeric(unlist(data_peso_0["thread"]))
colnames(data_peso_0)[8] <- "count"
as.numeric(unlist(data_peso_0["count"]))
data_peso_0 <- data_peso_0[!is.na(data_peso_0["time"]),]
data_peso_0 <- data_peso_0[!is.na(data_peso_0["costSolution"]),]
data_peso_0 <- data_peso_0[!is.na(data_peso_0["block"]),]
data_peso_0 <- data_peso_0[!is.na(data_peso_0["time"]),]


data_peso_1 = read.csv("/home/ignacio/Proyectos/S3E2_RSP/Muestras/Paralelizado_recalentamiento_v1_pesos/info_save_test_5_20_50.txt", header = FALSE, sep=",")
data_peso_1 = as.data.frame(data_peso_1)
colnames(data_peso_1)[1] <- "time"
as.double(unlist(data_peso_1["time"]))
colnames(data_peso_1)[2] <- "costSolution"
as.double(unlist(data_peso_1["costSolution"]))
colnames(data_peso_1)[3] <- "meandist"
as.double(unlist(data_peso_1["meandist"]))
colnames(data_peso_1)[4] <- "segregacion"
as.double(unlist(data_peso_1["segregacion"]))
colnames(data_peso_1)[5] <- "costcupo"
as.double(unlist(data_peso_1["costcupo"]))
colnames(data_peso_1)[6] <- "block"
as.numeric(unlist(data_peso_1["block"]))
colnames(data_peso_1)[7] <- "thread"
as.numeric(unlist(data_peso_1["thread"]))
colnames(data_peso_1)[8] <- "count"
as.numeric(unlist(data_peso_1["count"]))
data_peso_1 <- data_peso_1[!is.na(data_peso_1["time"]),]
data_peso_1 <- data_peso_1[!is.na(data_peso_1["costSolution"]),]
data_peso_1 <- data_peso_1[!is.na(data_peso_1["block"]),]
data_peso_1 <- data_peso_1[!is.na(data_peso_1["time"]),]

data_peso_2 = read.csv("/home/ignacio/Proyectos/S3E2_RSP/Muestras/Paralelizado_recalentamiento_v1_pesos/info_save_test_10_30_50.txt", header = FALSE, sep=",")
data_peso_2 = as.data.frame(data_peso_2)
colnames(data_peso_2)[1] <- "time"
as.double(unlist(data_peso_2["time"]))
colnames(data_peso_2)[2] <- "costSolution"
as.double(unlist(data_peso_2["costSolution"]))
colnames(data_peso_2)[3] <- "meandist"
as.double(unlist(data_peso_2["meandist"]))
colnames(data_peso_2)[4] <- "segregacion"
as.double(unlist(data_peso_2["segregacion"]))
colnames(data_peso_2)[5] <- "costcupo"
as.double(unlist(data_peso_2["costcupo"]))
colnames(data_peso_2)[6] <- "block"
as.numeric(unlist(data_peso_2["block"]))
colnames(data_peso_2)[7] <- "thread"
as.numeric(unlist(data_peso_2["thread"]))
colnames(data_peso_2)[8] <- "count"
as.numeric(unlist(data_peso_2["count"]))
data_peso_2 <- data_peso_2[!is.na(data_peso_2["time"]),]
data_peso_2 <- data_peso_2[!is.na(data_peso_2["costSolution"]),]
data_peso_2 <- data_peso_2[!is.na(data_peso_2["block"]),]
data_peso_2 <- data_peso_2[!is.na(data_peso_2["time"]),]

data_peso_3 = read.csv("/home/ignacio/Proyectos/S3E2_RSP/Muestras/Paralelizado_recalentamiento_v1_pesos/info_save_test_30_40_50.txt", header = FALSE, sep=",")
data_peso_3 = as.data.frame(data_peso_3)
colnames(data_peso_3)[1] <- "time"
as.double(unlist(data_peso_3["time"]))
colnames(data_peso_3)[2] <- "costSolution"
as.double(unlist(data_peso_3["costSolution"]))
colnames(data_peso_3)[3] <- "meandist"
as.double(unlist(data_peso_3["meandist"]))
colnames(data_peso_3)[4] <- "segregacion"
as.double(unlist(data_peso_3["segregacion"]))
colnames(data_peso_3)[5] <- "costcupo"
as.double(unlist(data_peso_3["costcupo"]))
colnames(data_peso_3)[6] <- "block"
as.numeric(unlist(data_peso_3["block"]))
colnames(data_peso_3)[7] <- "thread"
as.numeric(unlist(data_peso_3["thread"]))
colnames(data_peso_3)[8] <- "count"
as.numeric(unlist(data_peso_3["count"]))
data_peso_3 <- data_peso_3[!is.na(data_peso_3["time"]),]
data_peso_3 <- data_peso_3[!is.na(data_peso_3["costSolution"]),]
data_peso_3 <- data_peso_3[!is.na(data_peso_3["block"]),]
data_peso_3 <- data_peso_3[!is.na(data_peso_3["time"]),]

data_peso_4 = read.csv("/home/ignacio/Proyectos/S3E2_RSP/Muestras/Paralelizado_recalentamiento_v1_pesos/info_save_test_40_45_50.txt", header = FALSE, sep=",")
data_peso_4 = as.data.frame(data_peso_4)
colnames(data_peso_4)[1] <- "time"
as.double(unlist(data_peso_4["time"]))
colnames(data_peso_4)[2] <- "costSolution"
as.double(unlist(data_peso_4["costSolution"]))
colnames(data_peso_4)[3] <- "meandist"
as.double(unlist(data_peso_4["meandist"]))
colnames(data_peso_4)[4] <- "segregacion"
as.double(unlist(data_peso_4["segregacion"]))
colnames(data_peso_4)[5] <- "costcupo"
as.double(unlist(data_peso_4["costcupo"]))
colnames(data_peso_4)[6] <- "block"
as.numeric(unlist(data_peso_4["block"]))
colnames(data_peso_4)[7] <- "thread"
as.numeric(unlist(data_peso_4["thread"]))
colnames(data_peso_4)[8] <- "count"
as.numeric(unlist(data_peso_4["count"]))
data_peso_4 <- data_peso_4[!is.na(data_peso_4["time"]),]
data_peso_4 <- data_peso_4[!is.na(data_peso_4["costSolution"]),]
data_peso_4 <- data_peso_4[!is.na(data_peso_4["block"]),]
data_peso_4 <- data_peso_4[!is.na(data_peso_4["time"]),]

library(ggplot2)

##### Thread #### CostSolution

ggplot(data=data_peso_0,aes(x=block, y=costSolution) )+
  labs(title="CostSolution")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_1,aes(x=block, y=costSolution) )+
  labs(title="CostSolution")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_2,aes(x=block, y=costSolution) )+
  labs(title="CostSolution")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_3,aes(x=block, y=costSolution) )+
  labs(title="CostSolution")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_4,aes(x=block, y=costSolution) )+
  labs(title="CostSolution")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

##### block #### CostSolution

ggplot(data=data_peso_0,aes(x=thread, y=costSolution) )+
  labs(title="CostSolution")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_1,aes(x=thread, y=costSolution) )+
  labs(title="CostSolution")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_2,aes(x=thread, y=costSolution) )+
  labs(title="CostSolution")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_3,aes(x=thread, y=costSolution) )+
  labs(title="CostSolution")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_4,aes(x=thread, y=costSolution) )+
  labs(title="CostSolution")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)

##### Thread #### Segregacion

ggplot(data=data_peso_0,aes(x=block, y=segregacion) )+
  labs(title="Segregacion")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_1,aes(x=block, y=segregacion) )+
  labs(title="Segregacion")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

ggplot(data=data_peso_2,aes(x=block, y=segregacion) )+
  labs(title="Segregacion")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_3,aes(x=block, y=segregacion) )+
  labs(title="Segregacion")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_4,aes(x=block, y=segregacion) )+
  labs(title="Segregacion")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

##### block #### Segregación

ggplot(data=data_peso_0,aes(x=thread, y=segregacion) )+
  labs(title="Segregacion")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_1,aes(x=thread, y=segregacion) )+
  labs(title="Segregacion")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_2,aes(x=thread, y=segregacion) )+
  labs(title="Segregacion")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_3,aes(x=thread, y=segregacion) )+
  labs(title="Segregacion")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_4,aes(x=thread, y=segregacion) )+
  labs(title="Segregacion")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)

##### Thread #### MeanDist

ggplot(data=data_peso_0,aes(x=block, y=meandist) )+
  labs(title="MeanDist")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_1,aes(x=block, y=meandist) )+
  labs(title="MeanDist")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_2,aes(x=block, y=meandist) )+
  labs(title="MeanDist")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_3,aes(x=block, y=meandist) )+
  labs(title="MeanDist")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_4,aes(x=block, y=meandist) )+
  labs(title="MeanDist")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

##### block #### MeanDist

ggplot(data=data_peso_0,aes(x=thread, y=meandist) )+
  labs(title="MeanDist")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_1,aes(x=thread, y=meandist) )+
  labs(title="MeanDist")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_2,aes(x=thread, y=meandist) )+
  labs(title="MeanDist")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_3,aes(x=thread, y=meandist) )+
  labs(title="MeanDist")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_4,aes(x=thread, y=meandist) )+
  labs(title="MeanDist")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)

##### Thread #### CostoCupo

ggplot(data=data_peso_0,aes(x=block, y=costcupo) )+
  labs(title="CostoCupo")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_1,aes(x=block, y=costcupo) )+
  labs(title="CostoCupo")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_2,aes(x=block, y=costcupo) )+
  labs(title="CostoCupo")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_3,aes(x=block, y=costcupo) )+
  labs(title="CostoCupo")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_4,aes(x=block, y=costcupo) )+
  labs(title="CostoCupo")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

##### block #### CostoCupo

ggplot(data=data_peso_0,aes(x=thread, y=costcupo) )+
  labs(title="CostoCupo")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_1,aes(x=thread, y=costcupo) )+
  labs(title="CostoCupo")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_2,aes(x=thread, y=costcupo) )+
  labs(title="CostoCupo")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_3,aes(x=thread, y=costcupo) )+
  labs(title="CostoCupo")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_4,aes(x=thread, y=costcupo) )+
  labs(title="CostoCupo")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)

##### Thread #### tiempo

ggplot(data=data_peso_0,aes(x=block, y=time) )+
  labs(title="time")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_1,aes(x=block, y=time) )+
  labs(title="time")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_2,aes(x=block, y=time) )+
  labs(title="time")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_3,aes(x=block, y=time) )+
  labs(title="time")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_4,aes(x=block, y=time) )+
  labs(title="time")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

##### block #### tiempo

ggplot(data=data_peso_0,aes(x=thread, y=time) )+
  labs(title="time")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_1,aes(x=thread, y=time) )+
  labs(title="time")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_2,aes(x=thread, y=time) )+
  labs(title="time")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_3,aes(x=thread, y=time) )+
  labs(title="time")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_4,aes(x=thread, y=time) )+
  labs(title="time")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)



######### Con mas peso el la segregación


#######################################################

data_peso_0 = read.csv("/home/ignacio/Proyectos/S3E2_RSP/Muestras/Paralelizado_recalentamiento_v1_pesos/info_save_test_1_10_50.txt", header = FALSE, sep=",")
data_peso_0 = as.data.frame(data_peso_0)
colnames(data_peso_0)[1] <- "time"
as.double(unlist(data_peso_0["time"]))
colnames(data_peso_0)[2] <- "costSolution"
as.double(unlist(data_peso_0["costSolution"]))
colnames(data_peso_0)[3] <- "meandist"
as.double(unlist(data_peso_0["meandist"]))
colnames(data_peso_0)[4] <- "segregacion"
as.double(unlist(data_peso_0["segregacion"]))
colnames(data_peso_0)[5] <- "costcupo"
as.double(unlist(data_peso_0["costcupo"]))
colnames(data_peso_0)[6] <- "block"
as.numeric(unlist(data_peso_0["block"]))
colnames(data_peso_0)[7] <- "thread"
as.numeric(unlist(data_peso_0["thread"]))
colnames(data_peso_0)[8] <- "count"
as.numeric(unlist(data_peso_0["count"]))
data_peso_0 <- data_peso_0[!is.na(data_peso_0["time"]),]
data_peso_0 <- data_peso_0[!is.na(data_peso_0["costSolution"]),]
data_peso_0 <- data_peso_0[!is.na(data_peso_0["block"]),]
data_peso_0 <- data_peso_0[!is.na(data_peso_0["time"]),]


data_peso_1 = read.csv("/home/ignacio/Proyectos/S3E2_RSP/Muestras/Paralelizado_recalentamiento_v1_pesos/info_save_test_1_50_30.txt", header = FALSE, sep=",")
data_peso_1 = as.data.frame(data_peso_1)
colnames(data_peso_1)[1] <- "time"
as.double(unlist(data_peso_1["time"]))
colnames(data_peso_1)[2] <- "costSolution"
as.double(unlist(data_peso_1["costSolution"]))
colnames(data_peso_1)[3] <- "meandist"
as.double(unlist(data_peso_1["meandist"]))
colnames(data_peso_1)[4] <- "segregacion"
as.double(unlist(data_peso_1["segregacion"]))
colnames(data_peso_1)[5] <- "costcupo"
as.double(unlist(data_peso_1["costcupo"]))
colnames(data_peso_1)[6] <- "block"
as.numeric(unlist(data_peso_1["block"]))
colnames(data_peso_1)[7] <- "thread"
as.numeric(unlist(data_peso_1["thread"]))
colnames(data_peso_1)[8] <- "count"
as.numeric(unlist(data_peso_1["count"]))
data_peso_1 <- data_peso_1[!is.na(data_peso_1["time"]),]
data_peso_1 <- data_peso_1[!is.na(data_peso_1["costSolution"]),]
data_peso_1 <- data_peso_1[!is.na(data_peso_1["block"]),]
data_peso_1 <- data_peso_1[!is.na(data_peso_1["time"]),]

data_peso_2 = read.csv("/home/ignacio/Proyectos/S3E2_RSP/Muestras/Paralelizado_recalentamiento_v1_pesos/info_save_test_1_50_40.txt", header = FALSE, sep=",")
data_peso_2 = as.data.frame(data_peso_2)
colnames(data_peso_2)[1] <- "time"
as.double(unlist(data_peso_2["time"]))
colnames(data_peso_2)[2] <- "costSolution"
as.double(unlist(data_peso_2["costSolution"]))
colnames(data_peso_2)[3] <- "meandist"
as.double(unlist(data_peso_2["meandist"]))
colnames(data_peso_2)[4] <- "segregacion"
as.double(unlist(data_peso_2["segregacion"]))
colnames(data_peso_2)[5] <- "costcupo"
as.double(unlist(data_peso_2["costcupo"]))
colnames(data_peso_2)[6] <- "block"
as.numeric(unlist(data_peso_2["block"]))
colnames(data_peso_2)[7] <- "thread"
as.numeric(unlist(data_peso_2["thread"]))
colnames(data_peso_2)[8] <- "count"
as.numeric(unlist(data_peso_2["count"]))
data_peso_2 <- data_peso_2[!is.na(data_peso_2["time"]),]
data_peso_2 <- data_peso_2[!is.na(data_peso_2["costSolution"]),]
data_peso_2 <- data_peso_2[!is.na(data_peso_2["block"]),]
data_peso_2 <- data_peso_2[!is.na(data_peso_2["time"]),]

data_peso_3 = read.csv("/home/ignacio/Proyectos/S3E2_RSP/Muestras/Paralelizado_recalentamiento_v1_pesos/info_save_test_1_50_45.txt", header = FALSE, sep=",")
data_peso_3 = as.data.frame(data_peso_3)
colnames(data_peso_3)[1] <- "time"
as.double(unlist(data_peso_3["time"]))
colnames(data_peso_3)[2] <- "costSolution"
as.double(unlist(data_peso_3["costSolution"]))
colnames(data_peso_3)[3] <- "meandist"
as.double(unlist(data_peso_3["meandist"]))
colnames(data_peso_3)[4] <- "segregacion"
as.double(unlist(data_peso_3["segregacion"]))
colnames(data_peso_3)[5] <- "costcupo"
as.double(unlist(data_peso_3["costcupo"]))
colnames(data_peso_3)[6] <- "block"
as.numeric(unlist(data_peso_3["block"]))
colnames(data_peso_3)[7] <- "thread"
as.numeric(unlist(data_peso_3["thread"]))
colnames(data_peso_3)[8] <- "count"
as.numeric(unlist(data_peso_3["count"]))
data_peso_3 <- data_peso_3[!is.na(data_peso_3["time"]),]
data_peso_3 <- data_peso_3[!is.na(data_peso_3["costSolution"]),]
data_peso_3 <- data_peso_3[!is.na(data_peso_3["block"]),]
data_peso_3 <- data_peso_3[!is.na(data_peso_3["time"]),]

data_peso_4 = read.csv("/home/ignacio/Proyectos/S3E2_RSP/v2/paralelizado_recalentamiento_v7_promedio/cmake-build-debug/save/2020-08-02 T:16-20-info-graficos.txt", header = FALSE, sep=",")
data_peso_4 = as.data.frame(data_peso_4)
colnames(data_peso_4)[1] <- "time"
as.double(unlist(data_peso_4["time"]))
colnames(data_peso_4)[2] <- "costSolution"
as.double(unlist(data_peso_4["costSolution"]))
colnames(data_peso_4)[3] <- "meandist"
as.double(unlist(data_peso_4["meandist"]))
colnames(data_peso_4)[4] <- "segregacion"
as.double(unlist(data_peso_4["segregacion"]))
colnames(data_peso_4)[5] <- "costcupo"
as.double(unlist(data_peso_4["costcupo"]))
colnames(data_peso_4)[6] <- "block"
as.numeric(unlist(data_peso_4["block"]))
colnames(data_peso_4)[7] <- "thread"
as.numeric(unlist(data_peso_4["thread"]))
colnames(data_peso_4)[8] <- "count"
as.numeric(unlist(data_peso_4["count"]))
data_peso_4 <- data_peso_4[!is.na(data_peso_4["time"]),]
data_peso_4 <- data_peso_4[!is.na(data_peso_4["costSolution"]),]
data_peso_4 <- data_peso_4[!is.na(data_peso_4["block"]),]
data_peso_4 <- data_peso_4[!is.na(data_peso_4["time"]),]

library(ggplot2)

##### Thread #### CostSolution

ggplot(data=data_peso_0,aes(x=block, y=costSolution) )+
  labs(title="CostSolution")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_1,aes(x=block, y=costSolution) )+
  labs(title="CostSolution")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_2,aes(x=block, y=costSolution) )+
  labs(title="CostSolution")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_3,aes(x=block, y=costSolution) )+
  labs(title="CostSolution")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_4,aes(x=block, y=costSolution) )+
  labs(title="CostSolution")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

##### block #### CostSolution

ggplot(data=data_peso_0,aes(x=thread, y=costSolution) )+
  labs(title="CostSolution")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_1,aes(x=thread, y=costSolution) )+
  labs(title="CostSolution")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_2,aes(x=thread, y=costSolution) )+
  labs(title="CostSolution")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_3,aes(x=thread, y=costSolution) )+
  labs(title="CostSolution")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_4,aes(x=thread, y=costSolution) )+
  labs(title="CostSolution")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)

##### Thread #### Segregacion

ggplot(data=data_peso_0,aes(x=block, y=segregacion) )+
  labs(title="Segregacion")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_1,aes(x=block, y=segregacion) )+
  labs(title="Segregacion")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

ggplot(data=data_peso_2,aes(x=block, y=segregacion) )+
  labs(title="Segregacion")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_3,aes(x=block, y=segregacion) )+
  labs(title="Segregacion")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_4,aes(x=block, y=segregacion) )+
  labs(title="Segregacion")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

##### block #### Segregación

ggplot(data=data_peso_0,aes(x=thread, y=segregacion) )+
  labs(title="Segregacion")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_1,aes(x=thread, y=segregacion) )+
  labs(title="Segregacion")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_2,aes(x=thread, y=segregacion) )+
  labs(title="Segregacion")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_3,aes(x=thread, y=segregacion) )+
  labs(title="Segregacion")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_4,aes(x=thread, y=segregacion) )+
  labs(title="Segregacion")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)

##### Thread #### MeanDist

ggplot(data=data_peso_0,aes(x=block, y=meandist) )+
  labs(title="MeanDist")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_1,aes(x=block, y=meandist) )+
  labs(title="MeanDist")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_2,aes(x=block, y=meandist) )+
  labs(title="MeanDist")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_3,aes(x=block, y=meandist) )+
  labs(title="MeanDist")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_4,aes(x=block, y=meandist) )+
  labs(title="MeanDist")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

##### block #### MeanDist

ggplot(data=data_peso_0,aes(x=thread, y=meandist) )+
  labs(title="MeanDist")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_1,aes(x=thread, y=meandist) )+
  labs(title="MeanDist")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_2,aes(x=thread, y=meandist) )+
  labs(title="MeanDist")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_3,aes(x=thread, y=meandist) )+
  labs(title="MeanDist")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_4,aes(x=thread, y=meandist) )+
  labs(title="MeanDist")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)

##### Thread #### CostoCupo

ggplot(data=data_peso_0,aes(x=block, y=costcupo) )+
  labs(title="CostoCupo")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_1,aes(x=block, y=costcupo) )+
  labs(title="CostoCupo")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_2,aes(x=block, y=costcupo) )+
  labs(title="CostoCupo")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_3,aes(x=block, y=costcupo) )+
  labs(title="CostoCupo")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_4,aes(x=block, y=costcupo) )+
  labs(title="CostoCupo")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

##### block #### CostoCupo

ggplot(data=data_peso_0,aes(x=thread, y=costcupo) )+
  labs(title="CostoCupo")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_1,aes(x=thread, y=costcupo) )+
  labs(title="CostoCupo")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_2,aes(x=thread, y=costcupo) )+
  labs(title="CostoCupo")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_3,aes(x=thread, y=costcupo) )+
  labs(title="CostoCupo")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_4,aes(x=thread, y=costcupo) )+
  labs(title="CostoCupo")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)

##### Thread #### tiempo

ggplot(data=data_peso_0,aes(x=block, y=time) )+
  labs(title="time")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_1,aes(x=block, y=time) )+
  labs(title="time")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_2,aes(x=block, y=time) )+
  labs(title="time")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_3,aes(x=block, y=time) )+
  labs(title="time")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)
ggplot(data=data_peso_4,aes(x=block, y=time) )+
  labs(title="time")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

##### block #### tiempo

ggplot(data=data_peso_0,aes(x=thread, y=time) )+
  labs(title="time")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_1,aes(x=thread, y=time) )+
  labs(title="time")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_2,aes(x=thread, y=time) )+
  labs(title="time")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_3,aes(x=thread, y=time) )+
  labs(title="time")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)
ggplot(data=data_peso_4,aes(x=thread, y=time) )+
  labs(title="time")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)

############## Pruebas de temperatura


data_temp_1_1 = read.csv("/home/ignacio/Proyectos/S3E2_RSP/paralelizado_recalentamiento_v2/cmake-build-debug/save_example_1_10_50/block_1/save_1/1-info-graficos_temp.txt", header = FALSE, sep=";")
data_temp_1_1 = as.data.frame(data_temp_1_1)
colnames(data_temp_1_1)[1] <- "count"
as.integer(unlist(data_temp_1_1["count"]))
colnames(data_temp_1_1)[2] <- "temp"
as.double(unlist(data_temp_1_1["temp"]))
data_temp_1_2 = read.csv("/home/ignacio/Proyectos/S3E2_RSP/paralelizado_recalentamiento_v2/cmake-build-debug/save_example_1_10_50/block_1/save_1/2-info-graficos_temp.txt", header = FALSE, sep=";")
data_temp_1_2 = as.data.frame(data_temp_1_2)
colnames(data_temp_1_2)[1] <- "count"
as.integer(unlist(data_temp_1_2["count"]))
colnames(data_temp_1_2)[2] <- "temp"
as.double(unlist(data_temp_1_2["temp"]))
data_temp_1_3 = read.csv("/home/ignacio/Proyectos/S3E2_RSP/paralelizado_recalentamiento_v2/cmake-build-debug/save_example_1_10_50/block_1/save_1/3-info-graficos_temp.txt", header = FALSE, sep=";")
data_temp_1_3 = as.data.frame(data_temp_1_3)
colnames(data_temp_1_3)[1] <- "count"
as.integer(unlist(data_temp_1_3["count"]))
colnames(data_temp_1_3)[2] <- "temp"
as.double(unlist(data_temp_1_3["temp"]))



data_temp_124_1 = read.csv("/home/ignacio/Proyectos/S3E2_RSP/paralelizado_recalentamiento_v2/cmake-build-debug/save_example_1_10_50/block_124/save_85/1-info-graficos_temp.txt", header = FALSE, sep=";")
data_temp_124_1 = as.data.frame(data_temp_124_1)
colnames(data_temp_124_1)[1] <- "count"
as.integer(unlist(data_temp_124_1["count"]))
colnames(data_temp_124_1)[2] <- "temp"
as.double(unlist(data_temp_124_1["temp"]))
data_temp_124_2 = read.csv("/home/ignacio/Proyectos/S3E2_RSP/paralelizado_recalentamiento_v2/cmake-build-debug/save_example_1_10_50/block_124/save_85/2-info-graficos_temp.txt", header = FALSE, sep=";")
data_temp_124_2 = as.data.frame(data_temp_124_2)
colnames(data_temp_124_2)[1] <- "count"
as.integer(unlist(data_temp_124_2["count"]))
colnames(data_temp_124_2)[2] <- "temp"
as.double(unlist(data_temp_124_2["temp"]))
data_temp_124_3 = read.csv("/home/ignacio/Proyectos/S3E2_RSP/paralelizado_recalentamiento_v2/cmake-build-debug/save_example_1_10_50/block_124/save_85/3-info-graficos_temp.txt", header = FALSE, sep=";")
data_temp_124_3 = as.data.frame(data_temp_124_3)
colnames(data_temp_124_3)[1] <- "count"
as.integer(unlist(data_temp_124_3["count"]))
colnames(data_temp_124_3)[2] <- "temp"
as.double(unlist(data_temp_124_3["temp"]))



data_temp_124_5 = read.csv("/home/ignacio/Proyectos/S3E2_RSP/v2/paralelizado_recalentamiento_v7_promedio/cmake-build-debug/save/2020-08-02 T:16-20-info-graficos.txt.txt", header = FALSE, sep=";")
data_temp_124_5 = as.data.frame(data_temp_124_5)
colnames(data_temp_124_5)[1] <- "count"
as.integer(unlist(data_temp_124_5["count"]))
colnames(data_temp_124_5)[2] <- "temp"
as.double(unlist(data_temp_124_5["temp"]))


## Plot whit 1 block 1 thread ##
plot(data_temp_1_1$count,data_temp_1_1$temp, type='s')
ggplot(data=data_temp_1_1,aes(x=count, y=temp) )+
  labs(title="v1")+
  geom_smooth(model="lm")+
  scale_x_log10()+scale_y_log10()

#plot(data_temp_1_2$count,data_temp_1_2$temp, type='s')
ggplot(data=data_temp_1_2,aes(x=count, y=temp) )+
  labs(title="v2")+
  geom_smooth(model="lm")+
  scale_x_log10()+scale_y_log10()

#plot(data_temp_1_3$count,data_temp_1_3$temp, type='s')
ggplot(data=data_temp_1_3,aes(x=count, y=temp) )+
  labs(title="v3")+
  geom_smooth(model="lm")+
  scale_x_log10()+scale_y_log10()

## Plot whit 64 block 1 thread ##

plot(data_temp_124_1$count,data_temp_124_1$temp, type='s')
ggplot(data=data_temp_124_1,aes(x=count, y=temp) )+
  labs(title="v1")+
  geom_smooth(model="lm")+
  scale_x_log10()+scale_y_log10()

#plot(data_temp_1_2$count,data_temp_1_2$temp, type='s')
ggplot(data=data_temp_124_2,aes(x=count, y=temp) )+
  labs(title="v2")+
  geom_smooth(model="lm")+
  scale_x_log10()+scale_y_log10()

#plot(data_temp_1_3$count,data_temp_1_3$temp, type='s')
ggplot(data=data_temp_124_3,aes(x=count, y=temp) )+
  labs(title="v3")+
  geom_smooth(model="lm")+
  scale_x_log10()+scale_y_log10()

require(lattice)
xyplot(data_temp_124_2$temp~data_temp_124_2$count, type="l")


xyplot(data_temp_124_5$temp~data_temp_124_5$count, type="l")

ggplot(data=data_temp_124_5,aes(x=count, y=temp) )+
  labs(title="v3")+
  geom_smooth(model="lm")+
  scale_y_log10()+scale_x_continuous()

mydata_v3 = as.matrix(read.csv("/home/ignacio/Proyectos/S3E2_SAP/recocido_simulado_paralelizado_v3/build/save/2020-09-16 T:22-24-info-graficos.txt", header = FALSE, sep=","))
colnames(mydata_v3)[1] <- "count"
colnames(mydata_v3)[2] <- "Distancia"
colnames(mydata_v3)[3] <- "Segregacion"
colnames(mydata_v3)[4] <- "Costo_Cupo"
colnames(mydata_v3)[5] <- "Costo_Solucion"
par(mfrow=c(2,2))
plot(mydata_v3[,"count"],mydata_v3[,"Distancia"], main = "Distancia", ylab="Distancia promedio", xlab="Ciclos", type="l",col="blue")
plot(mydata_v3[,"count"],mydata_v3[,"Segregacion"], main = "Segregación", ylab="Segregación", xlab="Ciclos" , type="l",col="blue")
plot(mydata_v3[,"count"],mydata_v3[,"Costo_Cupo"], main = "Costo Cupo", ylab="Costo Cupo", xlab="Ciclos", type="l",col="blue")
plot(mydata_v3[,"count"],mydata_v3[,"Costo_Solucion"], main = "Costo de Solución", ylab="Costo", xlab="Ciclos", type="l",col="blue")
mtext("Cuda", side = 1, line = -29, outer = TRUE)


mydata_v3 = as.matrix(read.csv("/home/ignacio/Proyectos/S3E2_SAP/recocido_simulado_paralelizado/cmake-build-debug/save_example_15_30_25/block_256/save_85/6-info-graficos.txt", header = FALSE, sep=","))
colnames(mydata_v3)[1] <- "count"
colnames(mydata_v3)[2] <- "Distancia"
colnames(mydata_v3)[3] <- "Segregacion"
colnames(mydata_v3)[4] <- "Costo_Cupo"
colnames(mydata_v3)[5] <- "Costo_Solucion"
par(mfrow=c(2,2))
plot(mydata_v3[,"count"],mydata_v3[,"Distancia"], main = "Distancia", ylab="Distancia promedio", xlab="Ciclos", type="l",col="blue")
plot(mydata_v3[,"count"],mydata_v3[,"Segregacion"], main = "Segregación", ylab="Segregación", xlab="Ciclos" , type="l",col="blue")
plot(mydata_v3[,"count"],mydata_v3[,"Costo_Cupo"], main = "Costo Cupo", ylab="Costo Cupo", xlab="Ciclos", type="l",col="blue")
plot(mydata_v3[,"count"],mydata_v3[,"Costo_Solucion"], main = "Costo de Solución", ylab="Costo", xlab="Ciclos", type="l",col="blue")
mtext("Cuda", side = 1, line = -29, outer = TRUE)







library(ggplot2)

info_test_sin_restauracion = read.csv("/home/ignacio/Proyectos/S3E2_RSP/paralelizado_recalentamiento_v3/cmake-build-debug/save/2020-06-21 T:05-21-info-graficos.txt", header = FALSE, sep=",")
info_test_sin_restauracion = as.data.frame(info_test_sin_restauracion)
colnames(info_test_sin_restauracion)[1] <- "time"
as.double(unlist(info_test_sin_restauracion["time"]))
colnames(info_test_sin_restauracion)[2] <- "costSolution"
as.double(unlist(info_test_sin_restauracion["costSolution"]))
colnames(info_test_sin_restauracion)[3] <- "meandist"
as.double(unlist(info_test_sin_restauracion["meandist"]))
colnames(info_test_sin_restauracion)[4] <- "segregacion"
as.double(unlist(info_test_sin_restauracion["segregacion"]))
colnames(info_test_sin_restauracion)[5] <- "costcupo"
as.double(unlist(info_test_sin_restauracion["costcupo"]))
colnames(info_test_sin_restauracion)[6] <- "block"
as.numeric(unlist(info_test_sin_restauracion["block"]))
colnames(info_test_sin_restauracion)[7] <- "thread"
as.numeric(unlist(info_test_sin_restauracion["thread"]))
colnames(info_test_sin_restauracion)[8] <- "count"
as.numeric(unlist(info_test_sin_restauracion["count"]))
info_test_sin_restauracion <- info_test_sin_restauracion[!is.na(info_test_sin_restauracion["time"]),]
info_test_sin_restauracion <- info_test_sin_restauracion[!is.na(info_test_sin_restauracion["costSolution"]),]
info_test_sin_restauracion <- info_test_sin_restauracion[!is.na(info_test_sin_restauracion["block"]),]
info_test_sin_restauracion <- info_test_sin_restauracion[!is.na(info_test_sin_restauracion["time"]),]

ggplot(data=info_test_sin_restauracion,aes(x=count, y=costSolution) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")

info_test_con_restauracion = read.csv("/home/ignacio/Proyectos/S3E2_RSP/v2/paralelizado_recalentamiento_v7_promedio/cmake-build-debug/save/2020-08-02 T:16-20-info-graficos.txt", header = FALSE, sep=",")
info_test_con_restauracion = as.data.frame(info_test_con_restauracion)
colnames(info_test_con_restauracion)[1] <- "time"
as.double(unlist(info_test_con_restauracion["time"]))
colnames(info_test_con_restauracion)[2] <- "costSolution"
as.double(unlist(info_test_con_restauracion["costSolution"]))
colnames(info_test_con_restauracion)[3] <- "meandist"
as.double(unlist(info_test_con_restauracion["meandist"]))
colnames(info_test_con_restauracion)[4] <- "segregacion"
as.double(unlist(info_test_con_restauracion["segregacion"]))
colnames(info_test_con_restauracion)[5] <- "costcupo"
as.double(unlist(info_test_con_restauracion["costcupo"]))
colnames(info_test_con_restauracion)[6] <- "block"
as.numeric(unlist(info_test_con_restauracion["block"]))
colnames(info_test_con_restauracion)[7] <- "thread"
as.numeric(unlist(info_test_con_restauracion["thread"]))
colnames(info_test_con_restauracion)[8] <- "count"
as.numeric(unlist(info_test_con_restauracion["count"]))
info_test_con_restauracion <- info_test_con_restauracion[!is.na(info_test_con_restauracion["time"]),]
info_test_con_restauracion <- info_test_con_restauracion[!is.na(info_test_con_restauracion["costSolution"]),]
info_test_con_restauracion <- info_test_con_restauracion[!is.na(info_test_con_restauracion["block"]),]
info_test_con_restauracion <- info_test_con_restauracion[!is.na(info_test_con_restauracion["time"]),]

ggplot(data=info_test_con_restauracion,aes(x=count, y=costSolution) )+
  labs(title="paralelizado_recalentamiento_v1")+
  geom_smooth(model="lm")



library(ggplot2)
segregacion =c(seq(0.001, 1, by=0.001))
data.val = data.frame( valores=( exp(segregacion)-1 ),segregacion=segregacion)
ggplot(data=data.val, aes(x=segregacion, y=valores))+geom_line()




#####################

library(ggplot2)
library(reshape)
library(parallel)
library(animation)
library(xlsx)
library(RColorBrewer)

###########################

S<-function(cromosoma){
  return(sum(unlist(mclapply(1:nesc, function(i) {
    cuales<-which(cromosoma==i)
    ti<-length(cuales)
    if(ti!=0){
      vi<-length(which(vuln[cuales]==1))
      Pi<-vi/ti
      return(ti/nest*abs(exp(-Pi/P)-exp(-(1-Pi)/(1-P))))
    } else {
      return(0)
    }
  }, mc.cores=1))))
}


plot.esc<-function(cromosoma,escuelas,color=T){
  #  browser()
  require(RColorBrewer)
  cromosoma_orig<-cromosoma
  cualesEsc<-as.numeric(names(table(cromosoma))) #identificar escuelas abiertas
  #  cromosoma<-cromosomas[[1]]
  cuales<-cromosoma %in% escuelas #Filtrar estudiantes según escuelas
  cromosoma<-factor(cromosoma[cuales],cualesEsc)
  vulni<-factor(vuln[cuales],0:1) #Ver estudiantes vulnerables
  #  posEstEsc<-as.data.frame(posEst[cromosomas[[1]] %in% escuelas,])
  posEstEsc<-as.data.frame(posEst[cromosoma_orig %in% escuelas,])
  posEstEsc<-cbind(posEstEsc,Esc=cromosoma,Vuln=vulni)
  posEsci<-cbind(as.data.frame(posEsc[cualesEsc,]),id=factor(cualesEsc,cualesEsc))
  posEsci<-posEsci[posEsci$id %in% escuelas,]
  posEsci<-cbind(posEsci,Si=unlist(lapply(cualesEsc,function(i) Sesc(cromosoma_orig,i))))
  
  rayos<-data.frame(X=0,Y=0,Esc=factor(unlist(lapply(1:nest,function(i) return(c(cromosoma_orig[i],cromosoma_orig[i])))),cualesEsc))
  
  for(i in unique(posEsci$id)){
    cualesEstEsc<-which(posEstEsc$Esc==i)
    rayos[2*cualesEstEsc-1,1:2]<-posEsci[i,1:2]
    rayos[2*cualesEstEsc,1:2]<-posEstEsc[cualesEstEsc,1:2]
    if(i==unique(posEsci$id)[1]){
      findhull<-posEstEsc[cualesEstEsc[chull(posEstEsc$X[cualesEstEsc],
                                             posEstEsc$Y[cualesEstEsc])],]
    } else {
      findhull<-rbind(findhull,posEstEsc[cualesEstEsc[chull(posEstEsc$X[cualesEstEsc],
                                                            posEstEsc$Y[cualesEstEsc])],])
    }
  }
  #browser()
  posEstEsc$Esc<-factor(posEstEsc$Esc,escuelas)
  posEsci$id<-factor(posEsci$id,escuelas)
  myColors <- colorRampPalette(brewer.pal(8, "Dark2"))(nesc)
  names(myColors) <- levels(posEsci$id)
  
  p<-ggplot()
  p<-p+geom_polygon(data=findhull,aes(x=X,y=Y,fill=Esc),alpha=0.1)
  p<-p+geom_polygon(data=findhull,aes(x=X,y=Y,col=Esc),alpha=0)
  #p<-p+geom_path(data=rayos,aes(x=X,y=Y,color=Esc))
  p<-p+geom_point(data=posEsci,aes(x=X,y=Y,size=Si,fill=id),shape=25,color="black")
  p<-p+scale_size(limits = c(0,1),breaks=c(0,0.3,0.6,1),labels=c("Nula","Alta","Aberrante","Absoluta"))
  #p<-p+scale_color_manual(values=c("lightred","pink","lightblue","lightgreen","orange"))
  #p<-p+scale_fill_manual(values=c("lightred","pink","lightblue","lightgreen","orange"))
  p<-p+scale_color_manual(values=myColors)
  p<-p+scale_fill_manual(values=myColors)
  p<-p+geom_point(data=posEstEsc,aes(x=X,y=Y,color=Esc,shape=Vuln),size=3)
  #p<-p+theme(legend.position="bottom",legend.box="horizontal")
  p<-p+annotate("text",label=paste("S=",round(S(cromosoma),3),sep=""),
                x=min(posEstEsc$X),y=min(posEstEsc$Y),size=3,hjust = 0)
  if(!color) p<-p+scale_color_grey()+scale_fill_grey()
  p
}





bestSolution_csv = as.matrix(read.csv("/home/ignacio/Proyectos/S3E2_RSP/v2/paralelizado_recalentamiento_v5_promedio/cmake-build-debug/save/2020-07-16 T:17-13-info-graficos_bestSolution.txt", header = FALSE, sep=","))
dataSchool = dataSchool = read.csv("/home/ignacio/Proyectos/S3E2_RSP/colegios_lat_lon.txt", header = FALSE, sep=",")
dataStudent= dataStudent = read.csv("/home/ignacio/Proyectos/S3E2_RSP/alumnos_lat_lon.txt", header = FALSE, sep=",")

######## seteo de datos
bestSolution = c()
bestSolution = c(1+as.numeric(bestSolution_csv[1,1:ncol(bestSolution_csv)]))

datatest = as.matrix(bestSolution)


posEsc = data.frame(X=dataSchool$V3,Y=dataSchool$V2)
posEst = data.frame(X=dataStudent$V3,Y=dataStudent$V2)

vuln = c(dataStudent$V4)

nesc = as.numeric(nrow(dataSchool))
nest = as.numeric(nrow(dataStudent))

plot.esc(bestSolution,1:nesc)

bestSolution = c(1+as.numeric(bestSolution_csv[2,1:ncol(bestSolution_csv)]))
plot.esc(bestSolution,1:nesc)



###################################################################################################
max_dist = 5.80677
init_dist = 4.12456
min_dist = 1.46601
library(ggplot2)
distancias =c(seq(min_dist,max_dist, by=0.00001))

data.val = data.frame(valores=((exp(((distancias*abs((distancias-init_dist)/max_dist-init_dist))-min_dist)/(max_dist-min_dist)))/(exp(((max_dist*abs((max_dist-init_dist)/max_dist-init_dist))-min_dist)/(max_dist-min_dist))-exp(min_dist-max_dist))) ,distancias=distancias)
data.val2 = data.frame(valores=((exp(((distancias*abs((distancias-init_dist)/max_dist-init_dist)))/(max_dist-min_dist)))*(exp(-((max_dist*abs((max_dist-init_dist)/max_dist-init_dist)))/(max_dist-min_dist)))) ,distancias=distancias)

ggplot(data=data.val, aes(x=distancias, y=valores))+geom_line()





max_dist = 7.80677
init_dist = 3.12456
min_dist = 0.46601
distancias =c(seq(min_dist,max_dist, by=0.00001))
data.val2 = data.frame(valores=((exp(((distancias*abs((distancias-init_dist)/max_dist-init_dist)))/(max_dist-min_dist)))*(exp(-((max_dist*abs((max_dist-init_dist)/max_dist-init_dist)))/(max_dist-min_dist)))) ,distancias=distancias)
ggplot(data=data.val2, aes(x=distancias, y=valores))+geom_line()


max_dist = 7.80677
init_dist = 5.12456
min_dist = 0.46601
distancias =c(seq(min_dist,max_dist, by=0.00001))
data.val2 = data.frame(valores=((exp(((distancias*abs((distancias-init_dist)/max_dist-init_dist)))/(max_dist-min_dist)))*(exp(-((max_dist*abs((max_dist-init_dist)/max_dist-init_dist)))/(max_dist-min_dist)))) ,distancias=distancias)
ggplot(data=data.val2, aes(x=distancias, y=valores))+geom_line()


#### (exp(((distancias*(distancias-init_dist))-min_dist)/(max_dist-min_dist)))/(exp(((max_dist*(max_dist-init_dist))-min_dist)/(max_dist-min_dist))-exp(min_dist-max_dist))

#### FInal 
### ((exp(((distancias*abs((distancias-init_dist)/max_dist-init_dist))-min_dist)/(max_dist-min_dist)))/(exp(((max_dist*abs((max_dist-init_dist)/max_dist-init_dist))-min_dist)/(max_dist-min_dist))-exp(min_dist-max_dist)))
### V2 
#### ((exp(((distancias*abs((distancias-init_dist)/max_dist-init_dist)))/(max_dist-min_dist)))/(exp(((max_dist*abs((max_dist-init_dist)/max_dist-init_dist)))/(max_dist-min_dist))))
### V3
####((exp(((distancias*abs((distancias-init_dist)/max_dist-init_dist)))/(max_dist-min_dist)))*(exp(-((max_dist*abs((max_dist-init_dist)/max_dist-init_dist)))/(max_dist-min_dist))))























##########################################################################################################################################
##########################################################################################################################################
##########################################################################################################################################
##########################################################################################################################################
######

##     GRAFICOS FINALES CON LAS ULTIMAS PRUEBAS
##

######
##########################################################################################################################################
##########################################################################################################################################
##########################################################################################################################################
##########################################################################################################################################



data_paralelizado = read.csv("/home/ignacio/Proyectos/S3E2_RSP/Muestras/Paralelizado_recalentamiento_v5_promedio/info_save_test_15_30_25.txt", header = FALSE, sep=",")
data_paralelizado = as.data.frame(data_paralelizado)
colnames(data_paralelizado)[1] <- "time"
as.double(unlist(data_paralelizado["time"]))
colnames(data_paralelizado)[2] <- "costSolution"
as.double(unlist(data_paralelizado["costSolution"]))
colnames(data_paralelizado)[3] <- "meandist"
as.double(unlist(data_paralelizado["meandist"]))
colnames(data_paralelizado)[4] <- "segregacion"
as.double(unlist(data_paralelizado["segregacion"]))
colnames(data_paralelizado)[5] <- "costcupo"
as.double(unlist(data_paralelizado["costcupo"]))
colnames(data_paralelizado)[6] <- "block"
as.numeric(unlist(data_paralelizado["block"]))
colnames(data_paralelizado)[7] <- "thread"
as.numeric(unlist(data_paralelizado["thread"]))
colnames(data_paralelizado)[8] <- "count"
as.numeric(unlist(data_paralelizado["count"]))
data_paralelizado <- data_paralelizado[!is.na(data_paralelizado["time"]),]
data_paralelizado <- data_paralelizado[!is.na(data_paralelizado["costSolution"]),]
data_paralelizado <- data_paralelizado[!is.na(data_paralelizado["block"]),]
data_paralelizado <- data_paralelizado[!is.na(data_paralelizado["time"]),]


data_multihilo = read.csv("/home/ignacio/Proyectos/S3E2_RSP/Muestras/Multihilo_recalentamiento_v5_promedio/info_save_test.txt", header = FALSE, sep=",")
data_multihilo = as.data.frame(data_multihilo)
colnames(data_multihilo)[1] <- "time"
as.double(unlist(data_multihilo["time"]))
colnames(data_multihilo)[2] <- "costSolution"
as.double(unlist(data_multihilo["costSolution"]))
colnames(data_multihilo)[3] <- "meandist"
as.double(unlist(data_multihilo["meandist"]))
colnames(data_multihilo)[4] <- "segregacion"
as.double(unlist(data_multihilo["segregacion"]))
colnames(data_multihilo)[5] <- "costcupo"
as.double(unlist(data_multihilo["costcupo"]))
colnames(data_multihilo)[6] <- "block"
as.numeric(unlist(data_multihilo["block"]))
colnames(data_multihilo)[7] <- "thread"
as.numeric(unlist(data_multihilo["thread"]))
colnames(data_multihilo)[8] <- "count"
as.numeric(unlist(data_multihilo["count"]))
data_multihilo <- data_multihilo[!is.na(data_multihilo["time"]),]
data_multihilo <- data_multihilo[!is.na(data_multihilo["costSolution"]),]
data_multihilo <- data_multihilo[!is.na(data_multihilo["block"]),]
data_multihilo <- data_multihilo[!is.na(data_multihilo["time"]),]


data_paralelizado_v2 = read.csv("/home/ignacio/Proyectos/S3E2_RSP/v2/paralelizado_recalentamiento_v5_promedio/cmake-build-debug/info_save_test.txt", header = FALSE, sep=",")
data_paralelizado_v2 = as.data.frame(data_paralelizado_v2)
colnames(data_paralelizado_v2)[1] <- "time"
as.double(unlist(data_paralelizado_v2["time"]))
colnames(data_paralelizado_v2)[2] <- "costSolution"
as.double(unlist(data_paralelizado_v2["costSolution"]))
colnames(data_paralelizado_v2)[3] <- "meandist"
as.double(unlist(data_paralelizado_v2["meandist"]))
colnames(data_paralelizado_v2)[4] <- "segregacion"
as.double(unlist(data_paralelizado_v2["segregacion"]))
colnames(data_paralelizado_v2)[5] <- "costcupo"
as.double(unlist(data_paralelizado_v2["costcupo"]))
colnames(data_paralelizado_v2)[6] <- "block"
as.numeric(unlist(data_paralelizado_v2["block"]))
colnames(data_paralelizado_v2)[7] <- "thread"
as.numeric(unlist(data_paralelizado_v2["thread"]))
colnames(data_paralelizado_v2)[8] <- "count"
as.numeric(unlist(data_paralelizado_v2["count"]))
data_paralelizado_v2 <- data_paralelizado_v2[!is.na(data_paralelizado_v2["time"]),]
data_paralelizado_v2 <- data_paralelizado_v2[!is.na(data_paralelizado_v2["costSolution"]),]
data_paralelizado_v2 <- data_paralelizado_v2[!is.na(data_paralelizado_v2["block"]),]
data_paralelizado_v2 <- data_paralelizado_v2[!is.na(data_paralelizado_v2["time"]),]


data_multihilo_v2 = read.csv("/home/ignacio/Proyectos/S3E2_RSP/v2/multihilo_recalentamiento_v5_promedio/cmake-build-debug/info_save_test.txt", header = FALSE, sep=",")
data_multihilo_v2 = as.data.frame(data_multihilo_v2)
colnames(data_multihilo_v2)[1] <- "time"
as.double(unlist(data_multihilo_v2["time"]))
colnames(data_multihilo_v2)[2] <- "costSolution"
as.double(unlist(data_multihilo_v2["costSolution"]))
colnames(data_multihilo_v2)[3] <- "meandist"
as.double(unlist(data_multihilo_v2["meandist"]))
colnames(data_multihilo_v2)[4] <- "segregacion"
as.double(unlist(data_multihilo_v2["segregacion"]))
colnames(data_multihilo_v2)[5] <- "costcupo"
as.double(unlist(data_multihilo_v2["costcupo"]))
colnames(data_multihilo_v2)[6] <- "block"
as.numeric(unlist(data_multihilo_v2["block"]))
colnames(data_multihilo_v2)[7] <- "thread"
as.numeric(unlist(data_multihilo_v2["thread"]))
colnames(data_multihilo_v2)[8] <- "count"
as.numeric(unlist(data_multihilo_v2["count"]))
data_multihilo_v2 <- data_multihilo_v2[!is.na(data_multihilo_v2["time"]),]
data_multihilo_v2 <- data_multihilo_v2[!is.na(data_multihilo_v2["costSolution"]),]
data_multihilo_v2 <- data_multihilo_v2[!is.na(data_multihilo_v2["block"]),]
data_multihilo_v2 <- data_multihilo_v2[!is.na(data_multihilo_v2["time"]),]


####################

# Desviacion Standar
data_multihilo.sd <- aggregate(data_multihilo[,1:8], list(data_multihilo$block,data_multihilo$thread), sd)
data_multihilo_v2.sd <- aggregate(data_multihilo_v2[,1:8], list(data_multihilo_v2$block,data_multihilo_v2$thread), sd)
data_paralelizado.sd <- aggregate(data_paralelizado[,1:8], list(data_paralelizado$block,data_paralelizado$thread), sd)
data_paralelizado_v2.sd <- aggregate(data_paralelizado_v2[,1:8], list(data_paralelizado_v2$block,data_paralelizado_v2$thread), sd)



# Promedio
data_multihilo.mean <- aggregate(data_multihilo[,1:8], list(data_multihilo$block,data_multihilo$thread), mean)
data_multihilo_v2.mean <- aggregate(data_multihilo_v2[,1:8], list(data_multihilo_v2$block,data_multihilo_v2$thread), mean)
data_paralelizado.mean <- aggregate(data_paralelizado[,1:8], list(data_paralelizado$block,data_paralelizado$thread), mean)
data_paralelizado_v2.mean <- aggregate(data_paralelizado_v2[,1:8], list(data_paralelizado_v2$block,data_paralelizado_v2$thread), mean)
 

# mediana
data_multihilo.median <- aggregate(data_multihilo[,1:8], list(data_multihilo$block,data_multihilo$thread), median)
data_multihilo_v2.median <- aggregate(data_multihilo_v2[,1:8], list(data_multihilo_v2$block,data_multihilo_v2$thread), median)
data_paralelizado.median <- aggregate(data_paralelizado[,1:8], list(data_paralelizado$block,data_paralelizado$thread), median)
data_paralelizado_v2.median <- aggregate(data_paralelizado_v2[,1:8], list(data_paralelizado_v2$block,data_paralelizado_v2$thread), median)


# Deltas 
thread_1_block_1_z = data_multihilo_v2.mean$costSolution[1]

data_multihilo.del_z <- data.frame(block=data_multihilo.mean$Group.1, thread=data_multihilo.mean$Group.2 , delZ=(data_multihilo.mean$costSolution - thread_1_block_1_z), delZ_T = (data_multihilo.mean$costSolution - thread_1_block_1_z)/data_multihilo.mean$time, delZ_I=(data_multihilo.mean$costSolution - thread_1_block_1_z)/data_multihilo.mean$count)
data_multihilo_v2.del_z <- data.frame(block=data_multihilo_v2.mean$Group.1, thread=data_multihilo_v2.mean$Group.2 , delZ=(data_multihilo_v2.mean$costSolution - thread_1_block_1_z), delZ_T = (data_multihilo_v2.mean$costSolution - thread_1_block_1_z)/data_multihilo_v2.mean$time, delZ_I=(data_multihilo_v2.mean$costSolution - thread_1_block_1_z)/data_multihilo_v2.mean$count)
data_paralelizado.del_z <- data.frame(block=data_paralelizado.mean$Group.1, thread=data_paralelizado.mean$Group.2 , delZ=(data_paralelizado.mean$costSolution - thread_1_block_1_z), delZ_T = (data_paralelizado.mean$costSolution - thread_1_block_1_z)/data_paralelizado.mean$time, delZ_I=(data_paralelizado.mean$costSolution - thread_1_block_1_z)/data_paralelizado.mean$count)
data_paralelizado_v2.del_z <- data.frame(block=data_paralelizado_v2.mean$Group.1, thread=data_paralelizado_v2.mean$Group.2 , delZ=(data_paralelizado_v2.mean$costSolution - thread_1_block_1_z), delZ_T = (data_paralelizado_v2.mean$costSolution - thread_1_block_1_z)/data_paralelizado_v2.mean$time, delZ_I=(data_paralelizado_v2.mean$costSolution - thread_1_block_1_z)/data_paralelizado_v2.mean$count)



# Tabla
datas_table = data.frame(Metodo="Secuencial", timeMean=data_multihilo_v2.mean$time[1], timeSD=data_multihilo_v2.sd$time[1], zMean=data_multihilo_v2.mean$costSolution[1], zSD=data_multihilo_v2.sd$costSolution[1], delZ=data_multihilo_v2.del_z$delZ[1], delZ_T=data_multihilo_v2.del_z$delZ_T[1], delZ_I=data_multihilo_v2.del_z$delZ_I[1])
datas_table = rbind(datas_table,c("Multhilo block 12 thread 1 ", data_multihilo.mean$time[4],data_multihilo.sd$time[4],data_multihilo.mean$costSolution[4],data_multihilo.sd$costSolution[4],data_multihilo.del_z$delZ[4],data_multihilo.del_z$delZ_T[4],data_multihilo.del_z$delZ_I[4]))
datas_table = rbind(datas_table,c("Multhilo block 12 thread 4 ", data_multihilo.mean$time[8],data_multihilo.sd$time[8],data_multihilo.mean$costSolution[8],data_multihilo.sd$costSolution[8],data_multihilo.del_z$delZ[8],data_multihilo.del_z$delZ_T[8],data_multihilo.del_z$delZ_I[8]))
datas_table = rbind(datas_table,c("Paralelizado blockes 256 thread 1", data_paralelizado_v2.mean$time[5],data_paralelizado_v2.sd$time[5],data_paralelizado_v2.mean$costSolution[5],data_paralelizado_v2.sd$costSolution[5],data_paralelizado_v2.del_z$delZ[5],data_paralelizado_v2.del_z$delZ_T[5],data_paralelizado_v2.del_z$delZ_I[5]))


####################    Importante   #############

#Multihilo
datMulthilo= cbind(x=data_multihilo.mean$block, y=data_multihilo.mean$thread, z=data_multihilo.mean$costSolution)
datMulthilo = as.data.frame(datMulthilo)

#Paralelo
datParalelo.costSolution= cbind( x=data_paralelizado.mean$thread,y=data_paralelizado.mean$block, z=data_paralelizado.mean$costSolution)
datParalelo.costSolution = as.data.frame(datParalelo.costSolution)

#Paralelo v2
datParalelov2.costSolution= cbind( x=data_paralelizado_v2.mean$thread,y=data_paralelizado_v2.mean$block, z=data_paralelizado_v2.mean$costSolution)
datParalelov2.costSolution = as.data.frame(datParalelov2.costSolution)

datParalelo.time= cbind( x=data_paralelizado.mean$thread,y=data_paralelizado.mean$block, z=data_paralelizado.mean$time)
datParalelo.time = as.data.frame(datParalelo.time)

datParalelov2.time= cbind( x=data_paralelizado_v2.mean$thread,y=data_paralelizado_v2.mean$block, z=data_paralelizado_v2.mean$time)
datParalelov2.time = as.data.frame(datParalelov2.time)

datParalelov2.median= cbind( x=data_paralelizado_v2.median$thread,y=data_paralelizado_v2.median$block, z=data_paralelizado_v2.median$time)
datParalelov2.median = as.data.frame(datParalelov2.median)



library(ggplot2)
library(plotly)
library(reshape2)
library(akima)
library(rql)
library(MBA)


#############################################################################################
#############################################################################################

#######  GRRAFICOS 

#############################################################################################
#############################################################################################


#############################################################################################
#######  GEOM_TILE 
#############################################################################################


width = c(rep(diff(c(0,4)),6), 
          rep(diff(c(4,8)),6),
          rep(diff(c(8,20)),6),
          rep(diff(c(16,28)),6),
          rep(diff(c(20,36)),6),
          rep(diff(c(32,50)),6),
          rep(diff(c(48,56)),6),
          rep(diff(c(56,64)),6),
          rep(diff(c(64,76)),6),
          rep(diff(c(72,86)),6)
)

height = rep(diff(c(0,2,4,16,32,64,256))*2,10)

height2 = rep(c(4,4,16,32,64,256),10) 

width_multihilo = c(rep(c(4),4), 
                    rep(c(4),4),
                    rep(c(4),4),
                    rep(c(4),4)
)
height_multihilo = rep(c(4,4,4,4),4)





ggplot(data_paralelizado.mean, aes(thread,block))+ geom_point()





width_paralelo_v2 = c(rep(diff(c(0,8)),5), 
                      rep(diff(c(0,24)),5),
                      rep(diff(c(16,44)),5),
                      rep(diff(c(36,72)),5),
                      rep(diff(c(64,85)),5)
)
height_paralelo_v2 = rep(c(16,24,40,88,168),5)



ggplot(data_paralelizado_v2.mean, aes(thread,block))+ geom_point()
## Paralelo

ggplot(data_paralelizado.mean, aes(thread,block, width=width, height=log10(height)))+ geom_tile(aes(fill = costSolution))+
  scale_fill_gradientn(colours = heat.colors(60))+
  scale_y_log10()


ggplot(data_paralelizado.mean, aes(thread,block, width=width, height=log10(height2)))+ geom_tile(aes(fill = time))+
  scale_fill_gradientn(colours = heat.colors(60))+
  scale_y_log10()

## Paralelo v2

ggplot(data_paralelizado_v2.mean, aes(thread,block, width=width_paralelo_v2, height=height_paralelo_v2))+ geom_tile(aes(fill = costSolution))+
  scale_fill_gradientn(colours = heat.colors(120))


ggplot(data_paralelizado_v2.mean, aes(thread,block, width=width_paralelo_v2, height=height_paralelo_v2))+ geom_tile(aes(fill = time))+
  scale_fill_gradientn(colours = heat.colors(120))


## Multihilo


ggplot(data_multihilo.mean, aes(thread,block, width=width_multihilo))+ geom_tile(aes(fill = costSolution))+
  scale_fill_gradientn(colours = heat.colors(60))


ggplot(data_multihilo.mean, aes(thread,block, width=width_multihilo))+ geom_tile(aes(fill = time))+
  scale_fill_gradientn(colours = heat.colors(60))



################ Version 1 ###########
 
mySP <- mba.surf(datParalelo.costSolution,82,256)

data.sp=data.frame(x=c(0),y=c(0),z=c(0))

for(y in 1:nrow(mySP$xyz.est$z)){
  
  for(x in 1:ncol(mySP$xyz.est$z)){
    
    data.sp=rbind(data.sp,c(mySP$xyz.est$x[x],mySP$xyz.est$y[y],mySP$xyz.est$z[y,x]))
  }
}
data.sp=data.sp[-1,]

ggplot(data.sp, aes(x,y))+
  geom_raster(aes(fill = z))+
  scale_fill_distiller(palette = "Spectral", direction = -1) 


library(rgl)
open3d(scale=c(1/diff(range(data.sp$x)),1/diff(range(data.sp$y)),1/diff(range(data.sp$z))))
with(mySP$xyz,surface3d(x,y,z,alpha=.2))

title3d(xlab="thread",ylab="block",zlab="Z")
axes3d()


############### Version 2 #################


### Procesa los datos creando la superficie a traves de la interpolacion
mySP.int <- mba.surf(datParalelo.costSolution,256,256,extend=TRUE)$xyz.est
mySP.time <- mba.surf(datParalelo.time,256,256,extend=TRUE)$xyz.est

mySPv2.int <- mba.surf(datParalelov2.costSolution,256,256,extend=TRUE)$xyz.est
mySPv2.time <- mba.surf(datParalelov2.time,256,256,extend=TRUE)$xyz.est
mySPv2.median <-mba.surf(datParalelov2.median,256,256,extend=TRUE)$xyz.est


datParalelov2.median

data.sp=data.frame(x=c(0),y=c(0),z=c(0))
data.time=data.frame(x=c(0),y=c(0),z=c(0))

datav2.sp=data.frame(x=c(0),y=c(0),z=c(0))
datav2.time=data.frame(x=c(0),y=c(0),z=c(0))
datav2.median=data.frame(x=c(0),y=c(0),z=c(0))

for(y in 1:nrow(mySP.int$z)){
  for(x in 1:ncol(mySP.int$z)){
    data.sp=rbind(data.sp,c(mySP.int$x[x],mySP.int$y[y],mySP.int$z[x,y]))
    data.time=rbind(data.time,c(mySP.time$x[x],mySP.time$y[y],mySP.time$z[x,y]))
    
    datav2.sp=rbind(datav2.sp,c(mySPv2.int$x[x],mySPv2.int$y[y],mySPv2.int$z[x,y]))
    datav2.time=rbind(datav2.time,c(mySPv2.time$x[x],mySPv2.time$y[y],mySPv2.time$z[x,y]))
    datav2.median=rbind(datav2.median,c(mySPv2.median$x[x],mySPv2.median$y[y],mySPv2.median$z[x,y]))
  }
}

data.sp=data.sp[-1,]
data.time=data.time[-1,]

datav2.sp=datav2.sp[-1,]
datav2.time=datav2.time[-1,]
datav2.median=datav2.median[-1,]


########
## Costo Solucion
#######

## Otra forma de graficar
# image(mySP.int, xaxs="r", yaxs="r", col=hcl.colors(60))

### Raster
ggplot(data.sp, aes(x,y))+
  geom_raster(aes(fill = z))+
  scale_fill_distiller(palette = "Spectral", direction = -1)


ggplot(datav2.sp, aes(x,y))+
  geom_raster(aes(fill = z))+
  scale_fill_distiller(palette = "Spectral", direction = -1)


### Contour
ggplot(data.sp,aes(x,y,z=z))+
  geom_contour()+
  geom_contour_filled()+
  labs(x="threads", y="blocks", fill="cT")

ggplot(datav2.sp,aes(x,y,z=z))+
  geom_contour()+
  geom_contour_filled()+
  labs(x="Hilos", y="Bloques", fill="Z")


#### Raster + contour
ggplot(data.sp,aes(x,y,z=z))+
  geom_raster(aes(fill = z))+
  geom_contour(colour = "white")

ggplot(datav2.sp,aes(x,y,z=z))+
  geom_raster(aes(fill = z))+
  geom_contour(colour = "white")


#### 3D
library(rgl)
open3d(scale=c(1/diff(range(mySP.int$x)),1/diff(range(mySP.int$y)),1/diff(range(mySP.int$z))))
with(mySP.int,surface3d(x,y,z,alpha=.2))

title3d(xlab="thread",ylab="block",zlab="cT")
axes3d()


open3d(scale=c(1/diff(range(mySPv2.int$x)),1/diff(range(mySPv2.int$y)),1/diff(range(mySPv2.int$z))))
with(mySPv2.int,surface3d(x,y,z,alpha=.2))

title3d(xlab="thread",ylab="block",zlab="cT")
axes3d()

########
## Time
#######

### Raster
ggplot(data.time, aes(x,y))+
  geom_raster(aes(fill = z))+
  scale_fill_distiller(palette = "Spectral", direction = -1)

ggplot(datav2.time, aes(x,y))+
  geom_raster(aes(fill = z))+
  scale_fill_distiller(palette = "Spectral", direction = -1)

### Contour
ggplot(data.time,aes(x,y,z=z))+
  geom_contour()+
  geom_contour_filled()+
  labs(x="threads", y="blocks", fill="Time")

ggplot(datav2.time,aes(x,y,z=z))+
  geom_contour()+
  geom_contour_filled()+
  labs(x="threads", y="blocks", fill="Time")

#### Raster + contour
ggplot(data.time,aes(x,y,z=z))+
  geom_raster(aes(fill = z))+
  geom_contour(colour = "white")

ggplot(datav2.time,aes(x,y,z=z))+
  geom_raster(aes(fill = z))+
  geom_contour(colour = "white")


#### 3D
library(rgl)
open3d(scale=c(1/diff(range(mySP.time$x)),1/diff(range(mySP.time$y)),1/diff(range(mySP.time$z))))
with(mySP.time,surface3d(x,y,z,alpha=.2))

title3d(xlab="thread",ylab="block",zlab="Z")
axes3d()


open3d(scale=c(1/diff(range(mySPv2.time$x)),1/diff(range(mySPv2.time$y)),1/diff(range(mySPv2.time$z))))
with(mySPv2.time,surface3d(x,y,z,alpha=.2))

title3d(xlab="thread",ylab="block",zlab="Z")
axes3d()


#### https://www.tylermw.com/3d-ggplots-with-rayshader/ Death Probaility
############ Prueba grafico 3D

library(rayshader)
library(ggplot2)
library(tidyverse)
library(viridis)
library(reshape2)
library(scale_brewer)

ggplotingcost = ggplot(data.sp,aes(x,y,z=z))+
  geom_contour()+
  geom_contour_filled()+
  ggtitle("Costo de solucion en Threads y Blockes")


#### Costocupo
ggplotingcost = ggplot(data.sp,aes(x,y))+
  geom_raster(aes(fill=z),interpolate = TRUE)+
  scale_x_continuous("Threads", expand=c(0,0),breaks=seq(4,85,4))+
  scale_y_continuous("Blockes",expand=c(0,0),breaks=seq(1,256,8))+
  scale_fill_viridis("Z")+
  ggtitle("Costo de solucion en Threads y Blockes")

plot_gg(ggplotingcost, multicore=TRUE,height=5,width=6,scale=500)


ggplotingcost = ggplot(datav2.sp,aes(x,y))+
  geom_raster(aes(fill=z),interpolate = TRUE)+
  scale_x_continuous("Threads", expand=c(0,0),breaks=seq(4,85,4))+
  scale_y_continuous("Blockes",expand=c(0,0),breaks=seq(1,256,8))+
  scale_fill_viridis("Z")+
  ggtitle("Costo de solucion en Threads y Blockes")

plot_gg(ggplotingcost, multicore=TRUE,height=5,width=6,scale=500)


#### Time

ggplotingtime = ggplot(data.time,aes(x,y))+
  geom_raster(aes(fill=z),interpolate = FALSE)+
  scale_x_continuous("Threads", expand=c(0,0),breaks=seq(4,85,4))+
  scale_y_continuous("Blockes",expand=c(0,0),breaks=seq(1,256,8))+
  scale_fill_viridis("Time")+
  ggtitle("Costo de Tiempo en Threads y Blockes")

plot_gg(ggplotingtime, multicore=TRUE,height=5,width=6,scale=500)


ggplotingtime = ggplot(datav2.time,aes(x,y))+
  geom_raster(aes(fill=z),interpolate = FALSE)+
  scale_x_continuous("Threads", expand=c(0,0),breaks=seq(16,85,4))+
  scale_y_continuous("Blockes",expand=c(0,0),breaks=seq(1,256,8))+
  scale_fill_viridis("Time")+
  ggtitle("Costo de Tiempo en Threads y Blockes")

plot_gg(ggplotingtime, multicore=TRUE,height=5,width=6,scale=500)


ggplotingtime = ggplot(datav2,aes(x,y))+
  geom_raster(aes(fill=z),interpolate = FALSE)+
  scale_x_continuous("Threads", expand=c(0,0),breaks=seq(16,85,4))+
  scale_y_continuous("Blockes",expand=c(0,0),breaks=seq(1,256,8))+
  scale_fill_viridis("Time")+
  ggtitle("Costo de Tiempo en Threads y Blockes")

plot_gg(ggplotingtime, multicore=TRUE,height=5,width=6,scale=500)


### FIltrar solo los enteros Y
## los enteros convertirlos en factores --> factor()
### x bloques --> y = z ---> curvas los threads 
### la leyenda con escala

datav3 = datav2.sp[which(datav2.sp$y %in% c(16,32,64,128,256)),]

datav4.z = melt(datav3, id.vars = c("x","z"))
datav4.z$valueF=factor(datav4.z$value)
#datav4.z$value= factor(datav4.z$value)

ggplot(datav4.z,aes(x,z, group=valueF))+
  geom_line(aes(col=valueF))+
  scale_x_continuous("Hilos", expand=c(0,0),c(1,16,32,64,85))+
  scale_colour_viridis("Bloques",discrete = T)+
  scale_y_continuous("Z")




datav3.time = datav2.time[which(datav2.time$y %in% c(16,32,64,128,256)),]

datav4.time = melt(datav3.time, id.vars = c("x","z"))

#datav4.time$value= factor(datav4.time$value)


ggplot(datav4.time,aes(x,z, group=value))+
  geom_line(aes(col=value))+
  scale_x_continuous("Hilos", expand=c(0,0),breaks=seq(4,85,4))+
  scale_colour_viridis("Bloques")+
  scale_y_continuous("Tiempo")


### Mediana del tiempo

datav3.median = datav2.median[which(datav2.median$y %in% c(16,32,64,128,256)),]

datav4.median = melt(datav3.median, id.vars = c("x","z"))
datav4.median$valueF=factor(datav4.median$value)

ggplot(datav4.median,aes(x,z, group=valueF))+
  geom_line(aes(col=valueF))+
  scale_x_continuous("Hilos", expand=c(0,0),breaks=c(1,16,32,64,85))+
  scale_colour_viridis("Bloques", discrete = T)+
  scale_y_continuous("Tiempo")



#######################################

ggplot(data_multihilo.mean, aes(thread,block, width=width_multihilo, height=height_multihilo))+ geom_tile(aes(fill = costSolution))+
  scale_fill_gradientn(colours = heat.colors(60))


ggplot(data_multihilo.mean, aes(thread,block, width=width_multihilo, height=height_multihilo))+ geom_tile(aes(fill = time))+
  scale_fill_gradientn(colours = heat.colors(60))


ggplot(data_paralelizado.mean, aes(thread,block, width=width, height=log10(height)))+ geom_tile(aes(fill = segregacion))+
  scale_fill_gradientn(colours = heat.colors(60))+
  scale_y_log10()

ggplot(data_paralelizado.mean, aes(thread,block, width=width, height=log10(height)))+ geom_tile(aes(fill = costcupo))+
  scale_fill_gradientn(colours = heat.colors(60))+
  scale_y_log10()

ggplot(data_paralelizado.mean, aes(thread,block, width=width, height=log10(height)))+ geom_tile(aes(fill = meandist))+
  scale_fill_gradientn(colours = heat.colors(60))+
  scale_y_log10()

### Desviacion standar 

ggplot(sd_multihilo, aes(Group.2,Group.1))+ geom_tile(aes(fill = costSolution))+
  scale_fill_gradientn(colours = heat.colors(60))+
  scale_y_log10()

ggplot(sd_paralelizado, aes(Group.2,Group.1))+ geom_tile(aes(fill = costSolution))+
  scale_fill_gradientn(colours = heat.colors(60))+
  scale_y_log10()


ggplot(data_paralelizado.del_z, aes(thread,block))+ geom_tile(aes(fill = delZ))+
  scale_fill_gradientn(colours = heat.colors(60))+
  scale_y_log10()

ggplot(data_paralelizado.del_z, aes(thread,block))+ geom_tile(aes(fill = delZ_T))+
  scale_fill_gradientn(colours = heat.colors(60))+
  scale_y_log10()

ggplot(data_paralelizado.del_z, aes(thread,block))+ geom_tile(aes(fill = delZ_I))+
  scale_fill_gradientn(colours = heat.colors(60))+
  scale_y_log10()

ggplot(data_multihilo.del_z, aes(thread,block))+ geom_tile(aes(fill = delZ))+
  scale_fill_gradientn(colours = heat.colors(60))+
  scale_y_log10()

ggplot(data_multihilo.del_z, aes(thread,block))+ geom_tile(aes(fill = delZ_T))+
  scale_fill_gradientn(colours = heat.colors(60))+
  scale_y_log10()

ggplot(data_multihilo.del_z, aes(thread,block))+ geom_tile(aes(fill = delZ_I))+
  scale_fill_gradientn(colours = heat.colors(60))+
  scale_y_log10()

#### otros 



ggplot(data_mix, aes(Group.2,Group.1))+ geom_tile(aes(fill = costSolution))+
  scale_fill_gradientn(colours = heat.colors(60))+
  scale_y_log10()


ggplot(data_mix, aes(Group.2,Group.1))+ geom_tile(aes(fill = time))+
  scale_fill_gradientn(colours = heat.colors(60))+
  scale_y_log10()

##### Thread #### Segregacion con escala

ggplot(data=data_paralelizado.mean,aes(x=block, y=segregacion) )+
  labs(title="Segregacion")+
  geom_smooth(model="lm")+
  scale_x_log10()+scale_y_log10()+
  facet_wrap(.~thread)

##### block #### Segregación con escala

ggplot(data=data_paralelizado.mean,aes(x=thread, y=segregacion) )+
  labs(title="Segregacion")+
  geom_smooth(model="lm")+
  scale_x_log10()+scale_y_log10()+
  facet_wrap(.~block)

##### Thread #### Segregacion con escala

ggplot(data=data_paralelizado.mean,aes(x=block, y=segregacion) )+
  labs(title="Segregacion")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

##### block #### Segregación con escala

ggplot(data=data_paralelizado.mean,aes(x=thread, y=segregacion) )+
  labs(title="Segregacion")+
  scale_y_log10()+
  geom_smooth(model="lm")+
  facet_wrap(.~block)

ggplot(data=data_paralelizado.mean,aes(x=thread, y=costSolution) )+
  labs(title="z")+
  scale_y_log10()+
  geom_smooth(model="lm")+
  facet_wrap(.~block)


ggplot(data=data_paralelizado_v2.mean,aes(x=thread, y=costSolution) )+
  labs(title="z")+
  scale_y_log10()+
  geom_smooth(model="lm")+
  facet_wrap(.~block)



ggplot(data=data_paralelizado_v2.mean,aes(x=block, y=costSolution) )+
  labs(title="z")+
  scale_y_log10()+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)




ggplot(data=data_multihilo.mean,aes(x=thread, y=costSolution) )+
  labs(title="z")+
  scale_y_log10()+
  geom_smooth(model="lm")+
  facet_wrap(.~block)


ggplot(data=data_paralelizado.mean,aes(x=thread, y=meandist) )+
  labs(title="distancia")+
  scale_y_log10()+
  geom_smooth(model="lm")+
  facet_wrap(.~block)

ggplot(data=data_paralelizado.mean,aes(x=thread, y=costcupo) )+
  labs(title="costocupo")+
  scale_y_log10()+
  geom_smooth(model="lm")+
  facet_wrap(.~block)

ggplot(data=data_paralelizado.mean,aes(x=thread, y=time) )+
  labs(title="tiempo")+
  scale_y_log10()+
  geom_smooth(model="lm")+
  facet_wrap(.~block)

ggplot(data=data_paralelizado.mean,aes(x=thread, y=count) )+
  labs(title="tiempo")+
  scale_y_log10()+
  geom_smooth(model="lm")+
  facet_wrap(.~block)

##### Thread #### MeanDist

ggplot(data=data_paralelizado.mean,aes(x=block, y=meandist) )+
  labs(title="MeanDist")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

##### block #### MeanDist

ggplot(data=data_paralelizado.mean,aes(x=thread, y=meandist) )+
  labs(title="MeanDist")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)

##### Thread #### CostoCupo

ggplot(data=data_paralelizado.mean,aes(x=block, y=costcupo) )+
  labs(title="CostoCupo")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

##### block #### CostoCupo

ggplot(data=data_paralelizado.mean,aes(x=thread, y=costcupo) )+
  labs(title="CostoCupo")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)

##### Thread #### tiempo

ggplot(data=data_paralelizado.mean,aes(x=block, y=time) )+
  labs(title="time")+
  geom_smooth(model="lm")+
  facet_wrap(.~thread)

ggplot(data=data_paralelizado.mean, )

##### block #### tiempo

ggplot(data=data_paralelizado.mean,aes(x=thread, y=time) )+
  labs(title="time")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)


ggplot(data=data_paralelizado.mean,aes(x=thread, y=costSolution) )+
  labs(title="costosolucion")+
  geom_smooth(model="lm")+
  facet_wrap(.~block)






temp_test=0.002
anterior=0.32
nuevo = 0.34

alternativa_1 = 1/(1+exp(-(anterior-nuevo)/temp_test))
alternativa_1
alternativa_2 = exp(-(nuevo-anterior)/temp_test)
alternativa_2


sumatoria = 0
n=85
m=23358

for(i in n){
  for(j in m){
    sumatoria <- 0.0006/(n*m)
  }
}
sumatoria*(1/5)






###########################################
###############Data Final##################


library(rayshader)
library(ggplot2)
library(tidyverse)
library(viridis)
library(reshape2)
library(scale_brewer)
library(rgl)
library(ggplot2)
library(plotly)
library(reshape2)
library(akima)
library(rql)
library(MBA)



data_paralelizado_v2 = read.csv("/home/ignacio/Proyectos/S3E2_SAP/recocido_simulado_paralelizado_v2/cmake-build-debug/info_save_test.txt", header = FALSE, sep=",")
data_paralelizado_v2 = as.data.frame(data_paralelizado_v2)
colnames(data_paralelizado_v2)[1] <- "time"
as.double(unlist(data_paralelizado_v2["time"]))
colnames(data_paralelizado_v2)[2] <- "costSolution"
as.double(unlist(data_paralelizado_v2["costSolution"]))
colnames(data_paralelizado_v2)[3] <- "meandist"
as.double(unlist(data_paralelizado_v2["meandist"]))
colnames(data_paralelizado_v2)[4] <- "segregacion"
as.double(unlist(data_paralelizado_v2["segregacion"]))
colnames(data_paralelizado_v2)[5] <- "costcupo"
as.double(unlist(data_paralelizado_v2["costcupo"]))
colnames(data_paralelizado_v2)[6] <- "block"
as.numeric(unlist(data_paralelizado_v2["block"]))
colnames(data_paralelizado_v2)[7] <- "thread"
as.numeric(unlist(data_paralelizado_v2["thread"]))
colnames(data_paralelizado_v2)[8] <- "count"
as.numeric(unlist(data_paralelizado_v2["count"]))
data_paralelizado_v2 <- data_paralelizado_v2[!is.na(data_paralelizado_v2["time"]),]
data_paralelizado_v2 <- data_paralelizado_v2[!is.na(data_paralelizado_v2["costSolution"]),]
data_paralelizado_v2 <- data_paralelizado_v2[!is.na(data_paralelizado_v2["block"]),]
data_paralelizado_v2 <- data_paralelizado_v2[!is.na(data_paralelizado_v2["time"]),] 
############### Carga los datos ###################################################

data_paralelizado = read.csv("/home/ignacio/Proyectos/S3E2_SAP/recocido_simulado_paralelizado/cmake-build-debug/info_save_test.txt", header = FALSE, sep=",")
data_paralelizado = as.data.frame(data_paralelizado)
colnames(data_paralelizado)[1] <- "time"
as.double(unlist(data_paralelizado["time"]))
colnames(data_paralelizado)[2] <- "costSolution"
as.double(unlist(data_paralelizado["costSolution"]))
colnames(data_paralelizado)[3] <- "meandist"
as.double(unlist(data_paralelizado["meandist"]))
colnames(data_paralelizado)[4] <- "segregacion"
as.double(unlist(data_paralelizado["segregacion"]))
colnames(data_paralelizado)[5] <- "costcupo"
as.double(unlist(data_paralelizado["costcupo"]))
colnames(data_paralelizado)[6] <- "block"
as.numeric(unlist(data_paralelizado["block"]))
colnames(data_paralelizado)[7] <- "thread"
as.numeric(unlist(data_paralelizado["thread"]))
colnames(data_paralelizado)[8] <- "count"
as.numeric(unlist(data_paralelizado["count"]))
data_paralelizado <- data_paralelizado[!is.na(data_paralelizado["time"]),]
data_paralelizado <- data_paralelizado[!is.na(data_paralelizado["costSolution"]),]
data_paralelizado <- data_paralelizado[!is.na(data_paralelizado["block"]),]
data_paralelizado <- data_paralelizado[!is.na(data_paralelizado["time"]),]


##########################################################################
#### Version vectores diferentes
####

data_paralelizado = read.csv("/home/ignacio/Proyectos/S3E2_SAP/recocido_simulado_paralelizado_v3/build/save_example_15_30_25/info_save_test.txt", header = FALSE, sep=",")
data_paralelizado = as.data.frame(data_paralelizado)
colnames(data_paralelizado)[1] <- "time"
as.double(unlist(data_paralelizado["time"]))
colnames(data_paralelizado)[2] <- "costSolution"
as.double(unlist(data_paralelizado["costSolution"]))
colnames(data_paralelizado)[3] <- "meandist"
as.double(unlist(data_paralelizado["meandist"]))
colnames(data_paralelizado)[4] <- "segregacion"
as.double(unlist(data_paralelizado["segregacion"]))
colnames(data_paralelizado)[5] <- "costcupo"
as.double(unlist(data_paralelizado["costcupo"]))
colnames(data_paralelizado)[6] <- "block"
as.numeric(unlist(data_paralelizado["block"]))
colnames(data_paralelizado)[7] <- "thread"
as.numeric(unlist(data_paralelizado["thread"]))
colnames(data_paralelizado)[8] <- "count"
as.numeric(unlist(data_paralelizado["count"]))
data_paralelizado <- data_paralelizado[!is.na(data_paralelizado["time"]),]
data_paralelizado <- data_paralelizado[!is.na(data_paralelizado["costSolution"]),]
data_paralelizado <- data_paralelizado[!is.na(data_paralelizado["block"]),]
data_paralelizado <- data_paralelizado[!is.na(data_paralelizado["time"]),]

####################

# Desviacion Standar
data_paralelizado.sd <- aggregate(data_paralelizado[,1:8], list(data_paralelizado$block,data_paralelizado$thread), sd)
data_paralelizado_v2.sd <- aggregate(data_paralelizado_v2[,1:8], list(data_paralelizado_v2$block,data_paralelizado_v2$thread), sd)

# Promedio
data_paralelizado.mean <- aggregate(data_paralelizado[,1:8], list(data_paralelizado$block,data_paralelizado$thread), mean)
data_paralelizado_v2.mean <- aggregate(data_paralelizado_v2[,1:8], list(data_paralelizado_v2$block,data_paralelizado_v2$thread), mean)

# mediana
data_paralelizado.median <- aggregate(data_paralelizado[,1:8], list(data_paralelizado$block,data_paralelizado$thread), median)
data_paralelizado_v2.median <- aggregate(data_paralelizado_v2[,1:8], list(data_paralelizado_v2$block,data_paralelizado_v2$thread), median)

##### Datos utilizados para el grafico 
#Paralelo
datParalelo.costSolution= cbind( x=data_paralelizado.mean$thread,y=data_paralelizado.mean$block, z=data_paralelizado.mean$costSolution)
datParalelo.costSolution = as.data.frame(datParalelo.costSolution)

datParalelo.time = cbind( x=data_paralelizado.mean$thread,y=data_paralelizado.mean$block, z=data_paralelizado.mean$time)
datParalelo.time = as.data.frame(datParalelo.time)

datParalelo.median= cbind( x=data_paralelizado.median$thread,y=data_paralelizado.median$block, z=data_paralelizado.median$time)
datParalelo.median = as.data.frame(datParalelo.median)

datParalelo.sd = cbind( x=data_paralelizado.sd$thread,y=data_paralelizado.sd$block, z=data_paralelizado.sd$time)
####### 
### Procesa los datos creando la superficie a traves de la interpolacion
mySP.int <- mba.surf(datParalelo.costSolution,225,225,extend=TRUE)$xyz.est
mySP.time <- mba.surf(datParalelo.time,225,225,extend=TRUE)$xyz.est
mySP.median_time <-mba.surf(datParalelo.median,225,225,extend=TRUE)$xyz.est
mySP.ds <- mba.surf()

data.sp=data.frame(x=c(0),y=c(0),z=c(0))
data.time=data.frame(x=c(0),y=c(0),z=c(0))
data.median_time=data.frame(x=c(0),y=c(0),z=c(0))

for(y in 1:nrow(mySP.int$z)){
  for(x in 1:ncol(mySP.int$z)){
    data.sp=rbind(data.sp,c(mySP.int$x[x],mySP.int$y[y],mySP.int$z[x,y]))
    data.time=rbind(data.time,c(mySP.time$x[x],mySP.time$y[y],mySP.time$z[x,y]))
    data.median_time=rbind(data.median_time,c(mySP.median_time$x[x],mySP.median_time$y[y],mySP.median_time$z[x,y]))
  }
}


data.sp=data.sp[-1,]
data.time=data.time[-1,]
data.median_time=data.median_time[-1,]


###########################
## Costo Solucion
###########################

### Raster
ggplot(data.sp, aes(x,y))+
  geom_raster(aes(fill = z))+
  scale_fill_distiller(palette = "Spectral", direction = -1)


### Contour
ggplot(data.sp,aes(x,y,z=z))+
  geom_contour()+
  geom_contour_filled()+
  labs(x="threads", y="blocks", fill="cT")


#### Raster + contour
ggplot(data.sp,aes(x,y,z=z))+
  geom_raster(aes(fill = z))+
  geom_contour(colour = "white")

########
#### 3D
########
library(rgl)
open3d(scale=c(1/diff(range(mySP.int$x)),1/diff(range(mySP.int$y)),1/diff(range(mySP.int$z))))
with(mySP.int,surface3d(x,y,z,alpha=.2))

title3d(xlab="thread",ylab="block",zlab="cT")
axes3d()

#########################
## Time
##########################

### Raster
ggplot(data.time, aes(x,y))+
  geom_raster(aes(fill = z))+
  scale_fill_distiller(palette = "Spectral", direction = -1)

### Contour
ggplot(data.time,aes(x,y,z=z))+
  geom_contour()+
  geom_contour_filled()+
  labs(x="threads", y="blocks", fill="Time")

#### Raster + contour
ggplot(data.time,aes(x,y,z=z))+
  geom_raster(aes(fill = z))+
  geom_contour(colour = "white")

#### 3D
library(rgl)
open3d(scale=c(1/diff(range(mySP.time$x)),1/diff(range(mySP.time$y)),1/diff(range(mySP.time$z))))
with(mySP.time,surface3d(x,y,z,alpha=.2))

title3d(xlab="thread",ylab="block",zlab="Z")
axes3d()

###################
####### MOdelo 3D 
##################

ggplotingcost = ggplot(data.sp,aes(x,y))+
  geom_raster(aes(fill=z),interpolate = TRUE)+
  scale_x_continuous("Threads", expand=c(0,0),breaks=seq(4,85,4))+
  scale_y_continuous("Blockes",expand=c(0,0),breaks=seq(1,256,8))+
  scale_fill_viridis("Z")+
  ggtitle("Costo de solucion en Threads y Blockes")
plot_gg(ggplotingcost, multicore=TRUE,height=5,width=6,scale=500)

ggplotingtime = ggplot(data.time,aes(x,y))+
  geom_raster(aes(fill=z),interpolate = FALSE)+
  scale_x_continuous("Threads", expand=c(0,0),breaks=seq(4,85,4))+
  scale_y_continuous("Blockes",expand=c(0,0),breaks=seq(1,256,8))+
  scale_fill_viridis("Time")+
  ggtitle("Costo de Tiempo en Threads y Blockes")
plot_gg(ggplotingtime, multicore=TRUE,height=5,width=6,scale=500)


### FIltrar solo los enteros Y
## los enteros convertirlos en factores --> factor()
### x bloques --> y = z ---> curvas los threads 
### la leyenda con escala

datav3 = data.sp[which(data.sp$y %in% c(32,64,128,256)),]


datav4.z = melt(datav3, id.vars = c("x","z"))
datav4.z$valueF=factor(datav4.z$value)
#datav4.z$value= factor(datav4.z$value)
datav4.z

ggplot(datav4.z,aes(x,z, group=valueF))+
  geom_line(aes(col=valueF))+
  scale_x_continuous("Hilos", expand=c(0,0),c(1,32,64,85))+
  scale_colour_viridis("Bloques",discrete = T)+
  scale_y_continuous("Z")




######################

library(reshape2)
library(Rmisc)
datav3 = data_paralelizado.mean

datav4.z = melt(datav3, id.vars = c("thread","block"),measure.vars = "costSolution")
#datav4.z$thread=factor(datav4.z$thread)
datav4.z$block=factor(datav4.z$block)



#
datav6 = data_paralelizado
datav7.z = melt(datav6, id.vars = c("thread","block"),measure.vars = "costSolution")
datav7.z$block=factor(datav7.z$block)

dfwc <- summarySEwithin(datav7.z, measurevar="value", withinvars="thread",
                       na.rm=FALSE, conf.interval=.95,betweenvars = "block")

dfwc$thread = as.numeric(levels(dfwc$thread))
colnames(dfwc)[2]="thread"

ggplot(dfwc,aes(thread,value, group=block))+
  geom_line(aes(col=block))+
  scale_x_continuous("Hilos", expand=c(0,0),c(1,32,64,85))+
  scale_colour_viridis("Bloques",discrete = T)+
  scale_y_continuous("Z")+
  geom_errorbar(aes( ymin=value-ci,ymax=value+ci,col=block))+
  geom_point(aes(x=datav4.z$thread,y=datav4.z$value,col=datav4.z$block))




vector1=data_paralelizado$costSolution[which(data_paralelizado$block==32 & data_paralelizado$thread==1)]
mean(vector1)
vector2=datav7.z$value[which(datav7.z$block==32 & datav7.z$thread==1)]



####################



datav3.time = data.time[which(data.time$y %in% c(32,64,128,256)),]

datav4.time = melt(datav3.time, id.vars = c("x","z"))

#datav4.time$value= factor(datav4.time$value)


ggplot(datav4.time,aes(x,z, group=value))+
  geom_line(aes(col=value))+
  scale_x_continuous("Hilos", expand=c(0,0),breaks=seq(4,85,4))+
  scale_colour_viridis("Bloques")+
  scale_y_continuous("Tiempo")


### Mediana del tiempo

datav3.median = data.median_time[which(data.median_time$y %in% c(16,32,64,128,256)),]

datav4.median = melt(datav3.median, id.vars = c("x","z"))
datav4.median$valueF=factor(datav4.median$value)

ggplot(datav4.median,aes(x,z, group=valueF))+
  geom_line(aes(col=valueF))+
  scale_x_continuous("Hilos", expand=c(0,0),breaks=c(1,16,32,64,85))+
  scale_colour_viridis("Bloques", discrete = T)+
  scale_y_continuous("Tiempo")



#########################


data_paralelizado
datav3 = data_paralelizado
datav3$block = factor(datav3$block)
ggplot(datav3,aes(thread,costSolution, group=block))+
  geom_smooth(aes(col=block,fill=block), se = TRUE,alpha=0.2)+
  scale_fill_viridis("Bloques",discrete = TRUE)+
  scale_x_continuous("Hilos", expand=c(0,0),c(1,32,64,85))+
  scale_colour_viridis("Bloques",discrete = T)+
  scale_y_continuous("Z")

data_paralelizado
datav3 = data_paralelizado
datav3$block = factor(datav3$block)
ggplot(datav3,aes(thread,time, group=block))+
  geom_smooth(aes(col=block,fill=block), se = TRUE,alpha=0.2,width=0.01)+
  scale_fill_viridis("Bloques",discrete = TRUE)+
  scale_x_continuous("Hilos", expand=c(0,0),c(1,32,64,85))+
  scale_colour_viridis("Bloques",discrete = T)+
  scale_y_continuous("Z")

data_paralelizado
datav3 = data_paralelizado
datav3$block = factor(datav3$block)
ggplot(datav3,aes(thread,time, group=block))+
  geom_smooth(aes(col=block,fill=block), se = TRUE,alpha=0.2,width=0.01)+
  scale_fill_viridis("Bloques",discrete = TRUE)+
  scale_x_continuous("Hilos", expand=c(0,0),c(1,32,64,85))+
  scale_colour_viridis("Bloques",discrete = T)+
  scale_y_continuous("Tiempo(seg)")



info_test_con_restauracion = read.csv("/home/ignacio/Proyectos/S3E2_SAP/recocido_simulado_paralelizado/cmake-build-debug/save_example_15_30_25/block_256/save_1/24-info-graficos.txt", header = FALSE, sep=",")
info_test_con_restauracion = as.data.frame(info_test_con_restauracion)
colnames(info_test_con_restauracion)[1] <- "time"
as.double(unlist(info_test_con_restauracion["time"]))
colnames(info_test_con_restauracion)[5] <- "costSolution"
as.double(unlist(info_test_con_restauracion["costSolution"]))
colnames(info_test_con_restauracion)[2] <- "meandist"
as.double(unlist(info_test_con_restauracion["meandist"]))
colnames(info_test_con_restauracion)[3] <- "segregacion"
as.double(unlist(info_test_con_restauracion["segregacion"]))
colnames(info_test_con_restauracion)[4] <- "costcupo"
as.double(unlist(info_test_con_restauracion["costcupo"]))
colnames(info_test_con_restauracion)[6] <- "temp"
as.numeric(unlist(info_test_con_restauracion["temp"]))
info_test_con_restauracion <- info_test_con_restauracion[!is.na(info_test_con_restauracion["time"]),]
info_test_con_restauracion <- info_test_con_restauracion[!is.na(info_test_con_restauracion["costSolution"]),]
info_test_con_restauracion <- info_test_con_restauracion[!is.na(info_test_con_restauracion["temp"]),]

## Plot whit 1 block 1 thread ##
ggplot(data=info_test_con_restauracion,aes(x=time , y=costSolution) )+
  labs(title="")+
  geom_smooth(model="lm")


## Plot whit 1 block 1 thread ##
ggplot(data=info_test_con_restauracion,aes(x=time , y=meandist) )+
  labs(title="")+
  geom_smooth(model="lm")

## Plot whit 1 block 1 thread ##
ggplot(data=info_test_con_restauracion,aes(x=time , y=segregacion) )+
  labs(title="")+
  geom_smooth(model="lm")

## Plot whit 1 block 1 thread ##
ggplot(data=info_test_con_restauracion,aes(x=time , y=costcupo) )+
  labs(title="")+
  geom_smooth(model="lm")

ggplot(data = info_test_con_restauracion, aes(x = time, y = costSolution))+
  labs(title="")+
  ylab("Z")+
  xlab("Iteraciones")+
  geom_smooth() 

ggplot(data = info_test_con_restauracion, aes(x = time, y = meandist))+
  labs(title="")+
  ylab(bquote(bar(d)))+
  xlab("Iteraciones")+
  geom_smooth(model="lm") 

ggplot(data = info_test_con_restauracion, aes(x = time, y = segregacion))+
  labs(title="")+
  ylab("D")+
  xlab("Iteraciones")+
  geom_smooth() 

ggplot(data = info_test_con_restauracion, aes(x = time, y = costcupo))+
  labs(title="")+
  ylab("C")+
  xlab("Iteraciones")+
  geom_smooth() 




info_test_con_restauracion = read.csv("/home/ignacio/Proyectos/S3E2_SAP/recocido_simulado_paralelizado/cmake-build-debug/save_example_15_30_25/block_32/save_85/27-info-graficos.txt", header = FALSE, sep=",")
info_test_con_restauracion = as.data.frame(info_test_con_restauracion)
colnames(info_test_con_restauracion)[1] <- "time"
as.double(unlist(info_test_con_restauracion["time"]))
colnames(info_test_con_restauracion)[5] <- "costSolution"
as.double(unlist(info_test_con_restauracion["costSolution"]))
colnames(info_test_con_restauracion)[2] <- "meandist"
as.double(unlist(info_test_con_restauracion["meandist"]))
colnames(info_test_con_restauracion)[3] <- "segregacion"
as.double(unlist(info_test_con_restauracion["segregacion"]))
colnames(info_test_con_restauracion)[4] <- "costcupo"
as.double(unlist(info_test_con_restauracion["costcupo"]))
colnames(info_test_con_restauracion)[6] <- "temp"
as.numeric(unlist(info_test_con_restauracion["temp"]))
info_test_con_restauracion <- info_test_con_restauracion[!is.na(info_test_con_restauracion["time"]),]
info_test_con_restauracion <- info_test_con_restauracion[!is.na(info_test_con_restauracion["costSolution"]),]
info_test_con_restauracion <- info_test_con_restauracion[!is.na(info_test_con_restauracion["temp"]),]

## Plot whit 1 block 1 thread ##
ggplot(data=info_test_con_restauracion,aes(x=time , y=costSolution) )+
  labs(title="")+
  geom_smooth(model="lm")


## Plot whit 1 block 1 thread ##
ggplot(data=info_test_con_restauracion,aes(x=time , y=meandist) )+
  labs(title="")+
  geom_smooth(model="lm")

## Plot whit 1 block 1 thread ##
ggplot(data=info_test_con_restauracion,aes(x=time , y=segregacion) )+
  labs(title="")+
  geom_smooth(model="lm")

## Plot whit 1 block 1 thread ##
ggplot(data=info_test_con_restauracion,aes(x=time , y=costcupo) )+
  labs(title="")+
  geom_smooth(model="lm")



###############################
#####################

library(ggplot2)
library(reshape)
library(parallel)
library(animation)
library(xlsx)
library(RColorBrewer)



S<-function(cromosoma){
  return(sum(unlist(mclapply(1:nesc, function(i) {
    cuales<-which(cromosoma==i)
    ti<-length(cuales)
    if(ti!=0){
      vi<-length(which(vuln[cuales]==1))
      Pi<-vi/ti
      return(ti/nest*abs(exp(-Pi/P)-exp(-(1-Pi)/(1-P))))
    } else {
      return(0)
    }
  }, mc.cores=1))))
}


plot.esc<-function(cromosoma,escuelas,color=T){
  #  browser()
  require(RColorBrewer)
  cromosoma_orig<-cromosoma
  cualesEsc<-as.numeric(names(table(cromosoma))) #identificar escuelas abiertas
  #  cromosoma<-cromosomas[[1]]
  cuales<-cromosoma %in% escuelas #Filtrar estudiantes según escuelas
  cromosoma<-factor(cromosoma[cuales],cualesEsc)
  vulni<-factor(vuln[cuales],0:1) #Ver estudiantes vulnerables
  #  posEstEsc<-as.data.frame(posEst[cromosomas[[1]] %in% escuelas,])
  posEstEsc<-as.data.frame(posEst[cromosoma_orig %in% escuelas,])
  posEstEsc<-cbind(posEstEsc,Esc=cromosoma,Vuln=vulni)
  posEsci<-cbind(as.data.frame(posEsc[cualesEsc,]),id=factor(cualesEsc,cualesEsc))
  posEsci<-posEsci[posEsci$id %in% escuelas,]
  posEsci<-cbind(posEsci,Si=unlist(lapply(cualesEsc,function(i) Sesc(cromosoma_orig,i))))
  
  rayos<-data.frame(X=0,Y=0,Esc=factor(unlist(lapply(1:nest,function(i) return(c(cromosoma_orig[i],cromosoma_orig[i])))),cualesEsc))
  
  for(i in unique(posEsci$id)){
    cualesEstEsc<-which(posEstEsc$Esc==i)
    rayos[2*cualesEstEsc-1,1:2]<-posEsci[i,1:2]
    rayos[2*cualesEstEsc,1:2]<-posEstEsc[cualesEstEsc,1:2]
    if(i==unique(posEsci$id)[1]){
      findhull<-posEstEsc[cualesEstEsc[chull(posEstEsc$X[cualesEstEsc],
                                             posEstEsc$Y[cualesEstEsc])],]
    } else {
      findhull<-rbind(findhull,posEstEsc[cualesEstEsc[chull(posEstEsc$X[cualesEstEsc],
                                                            posEstEsc$Y[cualesEstEsc])],])
    }
  }
  #browser()
  posEstEsc$Esc<-factor(posEstEsc$Esc,escuelas)
  posEsci$id<-factor(posEsci$id,escuelas)
  myColors <- colorRampPalette(brewer.pal(8, "Dark2"))(nesc)
  names(myColors) <- levels(posEsci$id)
  
  p<-ggplot()
  p<-p+geom_polygon(data=findhull,aes(x=X,y=Y,fill=Esc),alpha=0.1)
  p<-p+geom_polygon(data=findhull,aes(x=X,y=Y,col=Esc),alpha=0)
  #p<-p+geom_path(data=rayos,aes(x=X,y=Y,color=Esc))
  p<-p+geom_point(data=posEsci,aes(x=X,y=Y,size=Si,fill=id),shape=25,color="black")
  p<-p+scale_size(limits = c(0,1),breaks=c(0,0.3,0.6,1),labels=c("Nula","Alta","Aberrante","Absoluta"))
  #p<-p+scale_color_manual(values=c("lightred","pink","lightblue","lightgreen","orange"))
  #p<-p+scale_fill_manual(values=c("lightred","pink","lightblue","lightgreen","orange"))
  p<-p+scale_color_manual(values=myColors)
  p<-p+scale_fill_manual(values=myColors)
  p<-p+geom_point(data=posEstEsc,aes(x=X,y=Y,color=Esc,shape=Vuln),size=3)
  #p<-p+theme(legend.position="bottom",legend.box="horizontal")
  p<-p+annotate("text",label=paste("S=",round(S(cromosoma),3),sep=""),
                x=min(posEstEsc$X),y=min(posEstEsc$Y),size=3,hjust = 0)
  if(!color) p<-p+scale_color_grey()+scale_fill_grey()
  p
}





bestSolution_csv = as.matrix(read.csv("/home/ignacio/Proyectos/S3E2_SAP/recocido_simulado_paralelizado/cmake-build-debug/save_example_15_30_25/block_256/save_1/24-info-graficos_bestSolution.txt", header = FALSE, sep=","))
dataSchool = dataSchool = read.csv("/home/ignacio/Proyectos/S3E2_RSP/colegios_lat_lon.txt", header = FALSE, sep=",")
dataStudent= dataStudent = read.csv("/home/ignacio/Proyectos/S3E2_RSP/alumnos_lat_lon.txt", header = FALSE, sep=",")

######## seteo de datos
bestSolution = c()
bestSolution = c(1+as.numeric(bestSolution_csv[1,1:ncol(bestSolution_csv)]))

datatest = as.matrix(bestSolution)


posEsc = data.frame(X=dataSchool$V3,Y=dataSchool$V2)
posEst = data.frame(X=dataStudent$V3,Y=dataStudent$V2)

vuln = c(dataStudent$V4)

nesc = as.numeric(nrow(dataSchool))
nest = as.numeric(nrow(dataStudent))

plot.esc(bestSolution,1:nesc)

bestSolution = c(1+as.numeric(bestSolution_csv[2,1:ncol(bestSolution_csv)]))
plot.esc(bestSolution,1:nesc)

length(which(bestSolution_csv[1,]!=bestSolution_csv[2,]))/ncol(bestSolution_csv)



### traspasar el paper al formato artical en ves del IEEE


#### Vectores aleatorizados block= 256 thread= 32
Z=0.08606965
semilla=8208


#### Vectores aleatorizados block= 256 thread= 1
Z=0.05204981
semilla=261
############


data = read.csv("/home/ignacio/Proyectos/S3E2_SAP/recocido_simulado_paralelizado/cmake-build-debug/save_example_15_30_25/block_256/save_32/16-info-graficos.txt", header = FALSE, sep=",")
data = as.data.frame(datra)
colnames(data)[1] <- "count"
as.numeric(unlist(data["count"]))
colnames(data)[2] <- "meandist"
as.double(unlist(data["meandist"]))
colnames(data)[3] <- "segregation"
as.double(unlist(data["segregation"]))
colnames(data)[4] <- "costcup"
as.double(unlist(data["costcup"]))
colnames(data)[5] <- "costSolution"
as.double(unlist(data["costSolution"]))

ggplot(data = mydata2, aes(x = count, y = costSolution))+
  labs(title="")+
  ylab("Z")+
  xlab("Iterations")+
  geom_smooth() 

ggplot(data = mydata2, aes(x = count, y = meandist))+
  labs(title="")+
  ylab(bquote(bar(d)))+
  xlab("Iterations")+
  geom_smooth(model="lm") 

ggplot(data = mydata2, aes(x = count, y = segregation))+
  labs(title="")+
  ylab("D")+
  xlab("Iterations")+
  geom_smooth() 

ggplot(data = mydata2, aes(x = count, y = costcup))+
  labs(title="")+
  ylab("C")+
  xlab("Iterations")+
  geom_smooth() 


data = read.csv("/home/ignacio/Proyectos/S3E2_SAP/recocido_simulado_paralelizado_v3/build/save_example_15_30_25/block_256/save_1/5-info-graficos.txt", header = FALSE, sep=",")
data = as.data.frame(datra)
colnames(data)[1] <- "count"
as.numeric(unlist(data["count"]))
colnames(data)[2] <- "meandist"
as.double(unlist(data["meandist"]))
colnames(data)[3] <- "segregation"
as.double(unlist(data["segregation"]))
colnames(data)[4] <- "costcup"
as.double(unlist(data["costcup"]))
colnames(data)[5] <- "costSolution"
as.double(unlist(data["costSolution"]))

ggplot(data = mydata2, aes(x = count, y = costSolution))+
  labs(title="")+
  ylab("Z")+
  xlab("Iterations")+
  geom_smooth() 

ggplot(data = mydata2, aes(x = count, y = meandist))+
  labs(title="")+
  ylab(bquote(bar(d)))+
  xlab("Iterations")+
  geom_smooth(model="lm") 

ggplot(data = mydata2, aes(x = count, y = segregation))+
  labs(title="")+
  ylab("D")+
  xlab("Iterations")+
  geom_smooth() 

ggplot(data = mydata2, aes(x = count, y = costcup))+
  labs(title="")+
  ylab("C")+
  xlab("Iterations")+
  geom_smooth() 

#######################################

#### 256 1 267


data = read.csv("/home/ignacio/Proyectos/S3E2_SAP/recocido_simulado_paralelizado_v3/build/save_example_1_1_1/block_256/save_1/11-info-graficos.txt", header = FALSE, sep=",")
data = as.data.frame(data)
colnames(data)[1] <- "count"
as.numeric(unlist(data["count"]))
colnames(data)[2] <- "meandist"
as.double(unlist(data["meandist"]))
colnames(data)[3] <- "segregation"
as.double(unlist(data["segregation"]))
colnames(data)[4] <- "costcup"
as.double(unlist(data["costcup"]))
colnames(data)[5] <- "costSolution"
as.double(unlist(data["costSolution"]))





ggplot(data = data, aes(x = count, y = costSolution))+
  labs(title="")+
  ylab("Z")+
  xlab("Iterations")+
  geom_smooth() 

ggplot(data = data, aes(x = count, y = meandist/distancia_max))+
  labs(title="")+
  ylab(bquote(bar(d)))+
  xlab("Iterations")+
  geom_smooth(model="lm") 

ggplot(data = data, aes(x = count, y = segregation))+
  labs(title="")+
  ylab("D")+
  xlab("Iterations")+
  geom_smooth() 

ggplot(data = data, aes(x = count, y = costcup))+
  labs(title="")+
  ylab("C")+
  xlab("Iterations")+
  geom_smooth() 



#### 256 32 8205

data = read.csv("/home/ignacio/Proyectos/S3E2_SAP/recocido_simulado_paralelizado_v3/build/save_example_1_1_1/block_256/save_32/13-info-graficos.txt", header = FALSE, sep=",")
data = as.data.frame(data)
colnames(data)[1] <- "count"
as.numeric(unlist(data["count"]))
colnames(data)[2] <- "meandist"
as.double(unlist(data["meandist"]))
colnames(data)[3] <- "segregation"
as.double(unlist(data["segregation"]))
colnames(data)[4] <- "costcup"
as.double(unlist(data["costcup"]))
colnames(data)[5] <- "costSolution"
as.double(unlist(data["costSolution"]))




ggplot(data = data)+
  labs(title="")+
  ylab("Z")+
  xlab("Iterations")+
  geom_smooth(aes(x = count, y = costSolution))
  

ggplot(data = data, aes(x = count, y = meandist/distancia_max))+
  labs(title="")+
  ylab(bquote(bar(d)))+
  xlab("Iterations")+
  geom_smooth(model="lm") 

ggplot(data = data, aes(x = count, y = segregation))+
  labs(title="")+
  ylab("D")+
  xlab("Iterations")+
  geom_smooth() 

ggplot(data = data, aes(x = count, y = costcup))+
  labs(title="")+
  ylab("C")+
  xlab("Iterations")+
  geom_smooth() 






##########################################################################
#### Version vectores diferentes
####

data_paralelizado = read.csv("/home/ignacio/Proyectos/S3E2_SAP/recocido_simulado_paralelizado_v3/build/info_save_test_1_1_1.txt", header = FALSE, sep=",")
data_paralelizado = as.data.frame(data_paralelizado)
colnames(data_paralelizado)[1] <- "time"
as.double(unlist(data_paralelizado["time"]))
colnames(data_paralelizado)[2] <- "costSolution"
as.double(unlist(data_paralelizado["costSolution"]))
colnames(data_paralelizado)[3] <- "meandist"
as.double(unlist(data_paralelizado["meandist"]))
colnames(data_paralelizado)[4] <- "segregacion"
as.double(unlist(data_paralelizado["segregacion"]))
colnames(data_paralelizado)[5] <- "costcupo"
as.double(unlist(data_paralelizado["costcupo"]))
colnames(data_paralelizado)[6] <- "block"
as.numeric(unlist(data_paralelizado["block"]))
colnames(data_paralelizado)[7] <- "thread"
as.numeric(unlist(data_paralelizado["thread"]))
colnames(data_paralelizado)[8] <- "count"
as.numeric(unlist(data_paralelizado["count"]))
data_paralelizado <- data_paralelizado[!is.na(data_paralelizado["time"]),]
data_paralelizado <- data_paralelizado[!is.na(data_paralelizado["costSolution"]),]
data_paralelizado <- data_paralelizado[!is.na(data_paralelizado["block"]),]
data_paralelizado <- data_paralelizado[!is.na(data_paralelizado["time"]),]



distancia_max = 15.1439

datav3 = datav2.sp[which(datav2.sp$y %in% c(16,32,64,128,256)),]
datav4.z = melt(datav3, id.vars = c("x","z"))


data_paralelizado_melt=melt(data_paralelizado, measure.vars = c("costSolution","meandist","segregacion","costcupo"),
                            id.vars = c("block","thread"))
data_paralelizado_melt$block = factor(data_paralelizado_melt$block)
data_paralelizado_melt$thread = factor(data_paralelizado_melt$thread)
ggplot(data_paralelizado_melt[which(data_paralelizado_melt$variable %in% c("meandist")),])+
  geom_density(aes(x=value,col=block,fill=thread))+
  facet_grid(.~variable)


ggplot(data_paralelizado_melt[which(data_paralelizado_melt$variable %in% c("meandist")),])+
  geom_density(aes(x=value,col=block))+
  facet_grid(thread~variable)


ggplot(data_paralelizado_melt[which(data_paralelizado_melt$variable %in% c("segregacion")),])+
  geom_histogram(aes(x=value,col=block))+
  facet_grid(thread~variable)

ggplot(data_paralelizado_melt[which(data_paralelizado_melt$variable %in% c("meandist")),])+
  geom_histogram(aes(x=value,col=block))+
  facet_grid(thread~variable)

ggplot(data_paralelizado_melt[which(data_paralelizado_melt$variable %in% c("segregacion")),])+
  geom_density(aes(x=value,col=thread))+
  facet_grid(block~variable)

ggplot(data_paralelizado_melt[which(data_paralelizado_melt$variable %in% c("meandist")),])+
  geom_density(aes(x=value,col=thread))+
  facet_grid(block~variable)


ggplot(data_paralelizado_melt[which(data_paralelizado_melt$variable %in% c("costSolution")),])+
  geom_density(aes(x=value,col=thread))+
  facet_grid(block~variable)

ggplot(data_paralelizado_melt[which(data_paralelizado_melt$variable %in% c("costSolution")),])+
  geom_density(aes(x=value,col=block))+
  facet_grid(thread~variable)



tau=0:60
epsilon=50
c = tau* abs(tau-epsilon)/(epsilon/2)^2
plot(tau,c,type="l", xlab=expression(tau), ylab="c")
abline(h=1,col="red",lty=2)
abline(v=epsilon/2,col="blue",lty2)

