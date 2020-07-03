; Ejercicio 12
; Haz un programa que dado un conjunto de hechos de tipo dato y un único valor
; numérico, imprima los valores numéricos por pantalla de menor a mayor. Vigila que
; el programa funciona correctamente incluso con la estrategia de ejecución de reglas Random. 

	(deffacts datos
		(dato 1)
		(dato 43)
		(dato 6)
		(dato 34)
		(dato 456)
		(dato 65)
		(dato 9)
		(dato 45)
		(dato 656)
		(dato 765)
		(dato 34)
		(dato 89)
	)

	(defrule assert-todo
		(declare (salience 5))
		(not (todos $?))
		=>
		(assert (todos))
	)

	(defrule creaHecho
		(declare (salience 4))
		?dato <- (dato ?d)
		?todos <- (todos $?t)
		=>
		(retract ?dato ?todos)
		(assert (todos $?t ?d))
	)

	(defrule ordenaTodos
		(declare (salience 3))
		?dir <- (todos $?antes ?x&:(numberp ?x) ?y&:(numberp ?y) $?despues)
		(test (> ?x ?y))
		=>
		(retract ?dir)
		(assert (todos $?antes ?y ?x $?despues))
	)

	(defrule imprime
		(declare (salience 2))
		(todos $? ?x $?)
		=>
		(printout t "dato: " ?x crlf)
	)

