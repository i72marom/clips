; Ejercicio 2
; Repite el ejercicio anterior pero utilizando ahora la siguiente plantilla y una sola regla.

	(deftemplate animal 
		(slot nombre)
		(slot sonido)
	)

	(deffacts
		(animal (nombre perro) (sonido guau))
		(animal (nombre gato) (sonido miau))
		(animal (nombre vaca) (sonido muu))
		(animal (nombre oveja) (sonido bee))
		(animal (nombre pato) (sonido cuak))
		(animal (nombre gallo) (sonido kikiriki))
	)

	(defrule
		(animal (nombre ?n) (sonido ?s))
		=>
		(printout t "El animal que hace el sonido " ?s " es: " ?n crlf)
	)

