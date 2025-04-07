# ------ Actividad 4


# Carga de paquetes
library(readr)
library(ggplot2)
library(dplyr)

#Importar datos
data <- read.csv("salarios_mujeres")

#Exploración de los datos

#Ver primeras 6 filas del conjunto de datos 
head(salarios_mujeres)

#Información sobre los datos
summary(salarios_mujeres)

#Transformación y limpieza de los datos
#Manejo de nulos
data <- na.omit(salarios_mujeres)

#Estructura de los datos
str(salarios_mujeres)

#Calculo de la media
media <- mean(salarios_mujeres$Edad)
print(paste("La media es:", media))

#Calculo de la mediana
mediana <- median(salarios_mujeres$Edad)
print(paste("La mediana es:", mediana))

#Calculo de la moda
moda <- mode(salarios_mujeres$Edad)
print(paste("La moda es:", moda))

#Sumario de los datos (estadísticas descriptivas y MIN, MEDIANA, MAX, Quartiles...)
print("Resumen de los datos:")
summary(salarios_mujeres)

#Visualización de los datos con ggplot2

#Histograma - Distribución del salario
ggplot(data, aes(x=Edad)) +
  geom_histogram(binwidth = 5, fill = "lightgreen", color= "black") +
  labs(title = "Distribución de la Edad", x = "Edad", y = "Frecuencia") +
  theme_minimal()

#Histograma - Distribución del salario
ggplot(salarios_mujeres, aes(x=Salario)) +
  geom_histogram(binwidth = 1000, fill = "lightgreen", color = "black") +
  labs(title = "Distribución del salario", x="salario", y ="Frecuencia") +
  theme_minimal()