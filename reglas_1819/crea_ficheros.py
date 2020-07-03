import os

relacion2 = open("relacion_reglas2.clp", "r")
content = relacion2.readlines()

for x in range(1,13):
	# Crear el archivo para el ejercicio
	if x < 10:
		nombre = "ej0" + str(x) + ".clp"
	else:
		nombre = "ej" + str(x) + ".clp"

	ej = open(nombre, "w")

	# Elegir que se escribe
	inicio = content.index("; Ejercicio " + str(x) + "\n")
	fin = content.index("; Ejercicio " + str(x + 1) + "\n")

	# Escribir el archivo
	for linea in range(inicio, fin):
		ej.write(content[linea])

	ej.close()

relacion2.close()