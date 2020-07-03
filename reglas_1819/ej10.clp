; Ejercicio 10
; Haz un programa que dado un conjunto hechos (vector <nombreVector> <val1> ... <valN>)
; con valores numéricos, ordene sus valores de menor a mayor

	(vector vector1 1 3 2 4 6 495 349 43 4 54 8 94)

	(defrule ej10
		?dir <- (vector ?n $?antes ?x&:(numberp ?x) ?y&:(numberp ?y) $?despues)
		(test (> ?x ?y))
		=>
		(retract ?dir)
		(assert (vector ?n $?antes ?y ?x $?despues))
	)

