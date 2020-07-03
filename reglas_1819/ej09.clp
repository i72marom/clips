; Ejercicio 9
; Haz un programa que dado un conjunto de hechos de la forma (dato 1),(dato 5),(dato verde)..., 
; cree un único hecho (todos-los-datos ...) con todos los valores de los hechos anteriores. 

	(deffacts datos
		(dato rojo)
		(dato 3)
		(dato "rojo")
		(dato verde)
		(dato 2.1)
	)

	(defrule assert-todo
		(not (todos-los-datos $?))
		=>
		(assert (todos-los-datos))
	)

	(defrule ejercicio9
		?dato <- (dato ?d)
		?todos <- (todos-los-datos $?t)
		=>
		(retract ?dato ?todos)
		(assert (todos-los-datos $?t ?d))
	)

