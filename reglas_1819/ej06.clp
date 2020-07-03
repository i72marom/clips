; Ejercicio 6
; Haz un programa que detecte e imprima los hechos (vector <nombreVector> ...)
; que contengan los valores 3 y 4 en alguna posición, y que entre éstos haya un
; número impar de valores. Se debe utilizar la función length$ (ver documentación). 

	(deffacts ejercicio6-facts
		(vector nombre1 1 2 3 5 6 5 65 76 4 54 5)
		(vector nombre2 1 2 3 5 6 5 65 4 54 5)
		(vector nombre3 1 2 3 5 hola 5 65 4 54 5)
		(vector nombre4 1 2 3 5 6 hola 5 65 4 54 5)
	)

	(defrule ejercicio6
		?dir <- (vector ?n $? ?x&:(integerp ?x)&:(= ?x 3) $?facts ?y&:(integerp ?y)&:(= ?y 4) $?)
		(test (oddp (length $?facts)))
		=>
		(printout t "Se activa con el vector " ?dir ": " ?n crlf)
	)

