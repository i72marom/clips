; Ejercicio 4
; Sobre los hechos ordenados del ejercicio 2, elimina mediante una regla
; aquellas personas que tengan altura 1.8 metros.

(defrule borraAltura
	?dir <- (persona (nombre ?) (apellidos ?) (direccion $?) (altura 1.8) (tengo-mascota ?))
	=>
	(retract ?dir)
)
