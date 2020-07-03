; Ejercicio 6
; Define las plantillas necesarias para almacenar la información 
; relativa a loscoches disponibles en un concesionario de coches
; a las ventas que hace cada vendedor. El concesionario (de la casa Renault)
; dispone de los siguientes cochesy ha realizado dos ventas:
;	- 1 Clio 1.600 gasolina 3 puertas color azul.
;	- 1 Clio diesel 1.800 5 puertas color blanco.
;	- 1 Megane diesel 1.800 5 puertas color dorado.
;	- 2 Megane gasolina 1.600 5 puertas color gris.
;	- 1 Laguna gasolina 2.000 5 puertas color negro.
;	- Juan Pérez vendió un Megane el 10/10/2003 al cliente Esteban Losada.
;	- Ana Ballester vendió un Laguna el 13/10/2003 al cliente Juan Cano.

(deftemplate coche
	(slot cantidad (type INTEGER))
	(slot modelo (type SYMBOL))
	(slot combustible (type SYMBOL) (allowed-symbols gasolina diesel))
	(slot cilindrada (type FLOAT) (allowed-floats 1.6 1.8. 2.0))
	(slot num-puertas (type INTEGER) (range 2 5))
	(slot color (type SYMBOL))
)

(deftemplate venta
	(slot vendedor (type STRING))
	(slot modelo (type SYMBOL))
	(slot fecha (type SYMBOL))
	(slot cliente (type STRING))
)

(deffacts coches
	(coche (cantidad 1) (modelo Clio) (combustible gasolina) (cilindrada 1.6) (num-puertas 3) (color azul))
	(coche (cantidad 1) (modelo Clio) (combustible diesel) (cilindrada 1.8) (num-puertas 5) (color blanco))
	(coche (cantidad 1) (modelo Megane) (combustible diesel) (cilindrada 1.8) (num-puertas 5) (color dorado))
	(coche (cantidad 2) (modelo Megane) (combustible gasolina) (cilindrada 1.6) (num-puertas 5) (color gris))
	(coche (cantidad 1) (modelo Laguna) (combustible gasolina) (cilindrada 2.0) (num-puertas 5) (color negro))
)

(deffacts ventas
	(venta (vendedor "Juan Pérez") (modelo Megane) (fecha 10/10/2003) (cliente "Esteban Losada"))
	(venta (vendedor "Ana Ballester") (modelo Laguna) (fecha 13/10/2003) (cliente "Juan Cano"))	
)
