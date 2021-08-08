 
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







