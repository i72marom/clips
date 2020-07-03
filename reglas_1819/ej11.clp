; Ejercicio 11
; Haz un programa que resuelva el ejercicio 9 pero sin eliminar los hechos:
; (dato 1), (dato 5), (dato verde)

	(deffacts datos
		(dato rojo)
		(dato 3)
		(dato 1)
		(dato 2)
		(dato 5)
		(dato "hola")
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
		(test (neq verde ?d))
		(test (neq 5 ?d))
		(test (neq 1 ?d))
		=>
		(retract ?dato ?todos)
		(assert (todos-los-datos $?t ?d))
	)

