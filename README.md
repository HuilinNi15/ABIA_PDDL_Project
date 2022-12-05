# ABIA_PDDL_Project
## Estructura del proyecto

Carpetas donde se encuentran los domains:
/Extension 1
/Extension 2
/Extension 3
/Nivel basico

En cada una de estas carpetas se encuentra un archivo llamado "practica-prob-custom.pddl", en este archivo es donde se generan los problemas de cada extensión, así nos ahorramos tener que generar millones de archivos para hacer los experimentos.

En estas carpetas también se encuentran algún archivo de prueba.


-------------------------------------------------------------
/Python : En está carpeta hay tres archivo:
  - Generator: Este archivo de python sirve para generar los ficheros de prueba y ejecutarlos.
  - Output.txt: Este archivo lo usamos para guardar el último output que hemos tenido.
  - Run.py: Es un archivo que sirve como ejemplo para llamar al archivo Generator.
 ------------------------------------------------------------
 
maps_generator.py: Es un archivo que usamos como libería para generar mapas con unas distribuciones de bases concretas.

--------------------------------------------------------------------------------------------------------------------

experiments-"nombre de la extensión": Son una serie de archivos donde están los experimentos que hemos realizado.

En la extensión dos, para cambiar entre la versión uno y la dos, hay que cambiar el valor de la variable "decre_comb", para la versión 1, hay que ponerle el valor 0 y para la versión dos, hay que ponerle el valor 1. Esta variable controla cuanto combustible es consumido por movimiento de rover.

La variable min_c_r sirve para especificar la mínima cantidad de combustible que tiene un rover.
La variable max_c_r sirve para especificar la máxima cantidad de combustible que tiene un rover.


Para la extensión 3, aparte de los valores que se pueden modificar en la extensión 2 (min_c_r, max_c_r, cecre_comb), también se puede modificar:
- val_comb : Cuanta importancia tiene el combustible en el metric.
- val_prio: Cuanta importancia tiene la prioridad en el metric.
