require(RJSONIO)
require(plyr)
estudents = structure(list(character()), class = "data.frame")
for(i in 1:nrow(posEst)){
  estudents <- rbind(estudents,
                     data.frame("_id"=i,
                                latitude=posEst[i,1],
                                longitude=posEst[i,2],
                                rbd=previousSolution[i],
                                sep=vuln[i]))
}
estudents
colegios = structure(list(character()), class = "data.frame")
for(i in 1:nrow(posEsc)){
  colegios <- rbind(colegios,
                    data.frame("_id"=i,
                                rbd=i,
                                latitude=posEsc[i,1],
                                longitude=posEsc[i,2],
                                alumnos=sum(previousSolution==i),
                                prioritario=sum(vuln[previousSolution==i])
                                ))
}

colegios
estudents
estudents<-toJSON(as.matrix(estudents),pretty=FALSE)
colegios<-toJSON(as.matrix(colegios),pretty=FALSE)

colegios
estudents

write(estudents, "alumnos_utm.json")
write(colegios, "colegios_utm.json")