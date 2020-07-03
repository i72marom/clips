; Ejercicio 4
; Haz un programa que dado un conjunto de hechos de tipo datos con un número
; indefinido de valores, detecte e imprima aquellos tal que el primer
; valor sea par y menor o igual al último.

	(deffacts datos
		(datos 1 2 3 4 5 6)
		(datos 2 1 4 3 2)
		(datos 12 3 3 56 7 65 7 34)
		(datos 12 23 23 42 4 2 1)
		(datos 3 32 2 4 35 4 35 5 3)
		(datos 42 452 32 4 354 3 123 233)
		(datos 45 23 4 32 43 53 4)
		(datos 23 23)
		(datos 20 31)
		(datos 1 23 10)
	)

	(defrule mayor
		?dir <- (datos ?x&:(evenp ?x) $? ?y)
		(test (<= ?x ?y))
		=>
		(printout t "La regla se activa en el hecho " ?dir crlf)
	)

