; Ejercicio 5
; Define una plantilla que permita almacenar información sobre libros,
; definiendo las restricciones que consideres adecuadas para los atributos.
; Inserta una serie de hechos en base a esta plantilla acerca de algunos
; de los libros de la bibliografíade la asignatura.

(deftemplate libros
	(slot titulo (type STRING))
	(multislot autores (type STRING))
	(slot editorial (type STRING))
	(slot año-publicacion (type INTEGER))
)

(assert (libros (titulo "Aspectos basicos de la inteligencia artificial") (autores "Mira J" "Delgado A") (editorial "Sanz y torres") (año-publicacion 1995)))
