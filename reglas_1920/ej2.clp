; Ejercicio 2
; A partir del siguiente deffacts, define una plantilla con la mayor cantidad
; de detalle posible, para ello fíjate bien en los tipos de campo, cuales están
; siempre, los valores que toman, etc. 

(deffacts personas 
	(persona (nombre "David") (apellidos Guijo-Rubio) (direccion "Rabanales" "Edificio Einstein" "C2""Tercera Planta" "lab AYRNA"))
	(persona (nombre "") (apellidos "Guijo Rubio") (direccion "Rabanales" "Edificio Einstein" "C2"))
	(persona (nombre "valor-por-defecto") (direccion "Rabanales" "Edificio Einstein"))
	(persona (nombre "Jose Miguel") (direccion "Rabanales" "Edificio Einstein") (altura 1.8) (tengo-mascota "no"))
	(persona (nombre "Juan Carlos") (direccion "Direccion" "por" "defecto") (altura 2.3) (tengo-mascota "si"))
	(persona (nombre "JuanCarlos") (apellidos "Garcia") (direccion "Rabanales""Einstein""C2"))
)

(deftemplate persona
	(slot nombre (type STRING) (default "valor-por-defecto"))
	(slot apellidos)
	(multislot direccion (type STRING) (default "Direccion" "por" "defecto"))
	(slot altura (type FLOAT))
	(slot tengo-mascota (type STRING) (allowed-strings "ns/nc" "no" "si"))
)
