 
 setwd("C:/Users/Yulissa Stefania/OneDrive/Escritorio/TESIS/Base de datos en R")

 library(readr)

 datos_siniestros <- read.csv("dataset_estandarizado.csv")

 dep_dataset <- datos_siniestros[ !((datos_siniestros$PARTICIPANTE_1=='CONDUCTOR' & datos_siniestros$TIPO_DE_VEHICULO_1=='AUTOMOVIL' & 
                                    (datos_siniestros$SERVICIO_1!='PARTICULAR' & datos_siniestros$SERVICIO_1!='CUENTA PROPIA')) & 
                                    (datos_siniestros$EDAD_1<16 & !datos_siniestros$EDAD_1==-1)) &
                                  !((datos_siniestros$PARTICIPANTE_1=='CONDUCTOR' & datos_siniestros$TIPO_DE_VEHICULO_1=='CAMIONETA' & 
                                    (datos_siniestros$SERVICIO_1!='PARTICULAR' & datos_siniestros$SERVICIO_1!='CUENTA PROPIA')) & 
                                    (datos_siniestros$EDAD_1<16 & !datos_siniestros$EDAD_1==-1)) &
                                  !((datos_siniestros$PARTICIPANTE_1=='CONDUCTOR' & datos_siniestros$TIPO_DE_VEHICULO_1=='MOTOCICLETA') & 
                                    (datos_siniestros$EDAD_1<18 & !datos_siniestros$EDAD_1==-1)) &
                                  !((datos_siniestros$PARTICIPANTE_1=='CONDUCTOR' & datos_siniestros$TIPO_DE_VEHICULO_1=='NO IDENTIFICADO') & 
                                    (datos_siniestros$EDAD_1<18 & !datos_siniestros$EDAD_1==-1)) &
                                  !((datos_siniestros$PARTICIPANTE_1=='CONDUCTOR' & datos_siniestros$TIPO_DE_VEHICULO_1=='CAMION') & 
                                    (datos_siniestros$EDAD_1<18 & !datos_siniestros$EDAD_1==-1)) &
                                  !((datos_siniestros$PARTICIPANTE_1=='CONDUCTOR' & datos_siniestros$TIPO_DE_VEHICULO_1=='VEHICULO DEPORTIVO UTILITARIO') & 
                                    (datos_siniestros$EDAD_1<18 & !datos_siniestros$EDAD_1==-1)) &
                                  !((datos_siniestros$PARTICIPANTE_1=='CONDUCTOR' & datos_siniestros$TIPO_DE_VEHICULO_1=='BUS') & 
                                    (datos_siniestros$EDAD_1<18 & !datos_siniestros$EDAD_1==-1)) &
                                  !((datos_siniestros$PARTICIPANTE_1=='CONDUCTOR' & datos_siniestros$TIPO_DE_VEHICULO_1=='FURGONETA') & 
                                    (datos_siniestros$EDAD_1<18 & !datos_siniestros$EDAD_1==-1)) &
                                  !((datos_siniestros$PARTICIPANTE_1=='CONDUCTOR' & datos_siniestros$TIPO_DE_VEHICULO_1=='ESPECIAL') & 
                                    (datos_siniestros$EDAD_1<18 & !datos_siniestros$EDAD_1==-1)) &
                                  !((datos_siniestros$PARTICIPANTE_1=='CONDUCTOR' & datos_siniestros$TIPO_DE_VEHICULO_1=='EMERGENCIAS') & 
                                    (datos_siniestros$EDAD_1<18 & !datos_siniestros$EDAD_1==-1)),]

 




#datos_choqueLateral <- subset(dataset_dep, CLASE_FINAL=="CHOQUE LATERAL")
#datos_estrellamientos <- subset(dataset_dep, CLASE_FINAL=="ESTRELLAMIENTOS")
datos_atropellos <- subset(dataset_dep, CLASE_FINAL=="ATROPELLOS")
datos_perdidadePista <- subset(dataset_dep, CLASE_FINAL=="PERDIDA DE PISTA")
datos_choquePosterior <- subset(dataset_dep, CLASE_FINAL=="CHOQUE POSTERIOR")
datos_arrollamientos <- subset(dataset_dep, CLASE_FINAL=="ARROLLAMIENTOS")
datos_perdidadeCarril <- subset(dataset_dep, CLASE_FINAL=="PERDIDA DE CARRIL")
datos_choqueFrontal <- subset(dataset_dep, CLASE_FINAL=="CHOQUE FRONTAL")
datos_rozamientos <- subset(dataset_dep, CLASE_FINAL=="ROZAMIENTOS")
datos_otros <- subset(dataset_dep, CLASE_FINAL=="OTROS")
datos_caidadePasajero <- subset(dataset_dep, CLASE_FINAL=="CAIDA DE PASAJERO")
datos_colision <- subset(dataset_dep, CLASE_FINAL=="COLISION")
datos_volcamientos <- subset(dataset_dep, CLASE_FINAL=="VOLCAMIENTOS")



#write.xlsx(datos_dep, "C:/Users/Yulissa Stefania/OneDrive/Escritorio/TESIS/Base de datos en R/dataset_dep.xlsx")
write.xlsx(datos_choqueLateral, "C:/Users/Yulissa Stefania/OneDrive/Escritorio/TESIS/Base de datos en R/dataset_1_choqueLateral.xlsx")
write.xlsx(datos_estrellamientos, "C:/Users/Yulissa Stefania/OneDrive/Escritorio/TESIS/Base de datos en R/dataset_2_estrellamientos.xlsx")
write.xlsx(datos_atropellos, "C:/Users/Yulissa Stefania/OneDrive/Escritorio/TESIS/Base de datos en R/dataset_3_atropellos.xlsx")
write.xlsx(datos_perdidadePista, "C:/Users/Yulissa Stefania/OneDrive/Escritorio/TESIS/Base de datos en R/dataset_4_perdidadePista.xlsx")
write.xlsx(datos_choquePosterior, "C:/Users/Yulissa Stefania/OneDrive/Escritorio/TESIS/Base de datos en R/dataset_5_choquePosterior.xlsx")
write.xlsx(datos_arrollamientos, "C:/Users/Yulissa Stefania/OneDrive/Escritorio/TESIS/Base de datos en R/dataset_6_arrollamientos.xlsx")
write.xlsx(datos_perdidadeCarril, "C:/Users/Yulissa Stefania/OneDrive/Escritorio/TESIS/Base de datos en R/dataset_7_perdidadeCarril.xlsx")
write.xlsx(datos_choqueFrontal, "C:/Users/Yulissa Stefania/OneDrive/Escritorio/TESIS/Base de datos en R/dataset_8_choqueFrontal.xlsx")
write.xlsx(datos_rozamientos, "C:/Users/Yulissa Stefania/OneDrive/Escritorio/TESIS/Base de datos en R/dataset_9_rozamientos.xlsx")
write.xlsx(datos_caidadePasajero, "C:/Users/Yulissa Stefania/OneDrive/Escritorio/TESIS/Base de datos en R/dataset_10_caidadePasajero.xlsx")
write.xlsx(datos_colision, "C:/Users/Yulissa Stefania/OneDrive/Escritorio/TESIS/Base de datos en R/dataset_11_colision.xlsx")
write.xlsx(datos_volcamientos, "C:/Users/Yulissa Stefania/OneDrive/Escritorio/TESIS/Base de datos en R/dataset_12_volcamientos.xlsx")
write.xlsx(datos_otros, "C:/Users/Yulissa Stefania/OneDrive/Escritorio/TESIS/Base de datos en R/dataset_13_otros.xlsx")

#write.csv(datos1, file="dataset_prueba.csv")
