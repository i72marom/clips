; Ejercicio 5
; Escribe reglas que respondan a los siguientes mensajes mostrados por acciones del consecuente:
;	a.Salida de clips: La persona con nombre JuanCarlos tiene una altura de 0.0 metros

(defrule regla1
	(persona (nombre ?n) (apellidos ?) (direccion $?) (altura ?a) (tengo-mascota ?))
	=>
	(printout t "La persona con nombre " ?n " tiene una altura de " ?a " metros" crlf)
)

;	b.Salida de clips: La persona con nombre JuanCarlos tiene una altura de 0.0 metros y vive en ()

(defrule regla2
	(persona (nombre ?n) (apellidos ?) (direccion $?dir) (altura ?a) (tengo-mascota ?))
	=>
	(printout t "La persona con nombre " ?n " tiene una altura de " ?a " metros y vive en " $?dir crlf)
)

;	c.Salida de clips: Esta persona con apellido nil que se identifica como gen4, no tiene mascota
;	d.Salida de clips: Esta persona, ns/nc tiene mascota y mide 0.0

(defrule regla4
	(persona (nombre ?) (apellidos ?) (direccion $?dir) (altura ?a) (tengo-mascota ?m))
	=>
	(printout t "Esta persona, " ?n " tiene mascota y mide " ?a crlf)
)
