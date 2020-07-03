; Ejercicio 5
; Haz un programa que dado un único hecho datos con un número indefinido de valores
; (ejemplo: (datos hola 1 3 nuevo 1 adios)), elimine todas las apariciones del valor 1. 

	(deffacts datos
		(datos hola 1 3 nuevo 1 adios)
		(datos 1 2 1 4 1 6 1 8)
		(datos 1 sin "uco" 2.2 1 1.1 2 1 1 1 hola 1 caca 1)
	)

	(defrule borra
		?f <- (datos $?antes ?x&:(integerp ?x)&:(= ?x 1) $?despues)
		=>
		(retract ?f)
		(assert (datos $?antes$ ?despues))
	)

