; Ejercicio 3
; Haz un programa que dado un conjunto de hechos, detecte qué hechos cumplen
; que el segundo valor sea mayor que el primero y los imprima.
; (datos <val1> <val2>) (hechos de tipo datos con dos valores numéricos)

	(deffacts datos
		(datos 1 2)
		(datos 2 1)
		(datos 12 3)
		(datos 12 23)
		(datos 3 32)
		(datos 42 45)
		(datos 45 42)
		(datos 23 23)
		(datos 20 1)
		(datos 1 0)
	)

	(defrule mayor
		?dir <- (datos ?val1 ?val2)
		(test (> ?val2 ?val1))
		=>
		(printout t "En el hecho " ?dir ", el valor " ?val2 " es mayor que " ?val1 crlf)
	)

