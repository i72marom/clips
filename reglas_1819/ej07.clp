; Ejercicio 7
; Haz un programa que dado un único hecho datos con un número indefinido de valores,
; elimine los que no sean numéricos.

	(deffacts datos
		(datos hola 1 3 nuevo 1 adios)
		(datos 1 2 1 4 1 6 1 8)
		(datos 1 sin "uco" 2.2 1 1.1 2 1 1 1 hola 1 caca 1)
	)

	(defrule ejercicio7
		?dir <- (datos $?antes ?x&:(not (numberp ?x)) $?despues)
		=>
		(retract ?dir)
		(assert (datos $?antes $?despues))
	)

