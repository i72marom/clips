; Eercicio 1
; Define una plantilla denominadapersona que represente una relación de 
; personas con las siguientes cinco casillas simples: nombre, apellidos, 
; color-ojos,alturay edad, indicando los tipos de cada campo  (nombrey 
; apellidosde tipo cadena,color-ojosde tipo símbolo,alturade tipo float y 
; edadde tipoentero)  y un valor por defecto para todos los campos excepto al 
; nombre y a los apellidos.

(deftemplate persona
	(slot nombre (type STRING))
	(slot apellidos (type STRING))
	(slot color-ojos (type SYMBOL)(default marron))
	(slot altura (type FLOAT) (default 1.8))
	(slot edad (type INTEGER) (default 20))
)