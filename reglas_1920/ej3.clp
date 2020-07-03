; Ejercicio 3
; Utilizando los hechos ordenados del ejercicio 2, haz reglas que se activen
; para los siguientes casos:
;	a.Muestra aquellas personas que se llamen “David”.

(defrule muestraDavid
	(persona (nombre "David") (apellidos ?) (direccion $?) (altura ?) (tengo-mascota ?))
	=>
)

;	b.Muestra aquellas personas que incluya “Rabanales”en la dirección.

(defrule muestraRabanales
	(persona (nombre ?) (apellidos ?) (direccion $? "Rabanales" $?) (altura ?) (tengo-mascota ?))
	=>
)

;	c.Muestra aquellas personas que las que no sepamos los apellidos.

(defrule muestraSinApellidos
	(persona (nombre ?) (apellidos nil) (direccion $?) (altura ?) (tengo-mascota ?))
	=>
)
