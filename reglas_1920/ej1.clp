; Ejercicio 1
; Añade los siguientes 10 hechos no ordenados utilizando el constructor deffacts.
; Escribe reglas que se activen en los siguientes casos, indicando aquellos
; hechos en los que se activarían.(Puedes dejar el consecuente vacío).

(deffacts lista-valores
	(valores 1 3 number float "1" "76" cadena)
	(valores 34 3 numeronumber 3.3 float 11 11 42 "hola")
	(valores hola que tal estas 3 numero 1.2 index 33 "cadena")
	(valores hola como estas 33 33 3.3 3.333)
	(valores "1" hola inteligencia artificial cadena)
	(valores cuadro 3 bebida 2 desayuno marco planta 1)
	(valores 3)
	(valores 3 3 3)
	(valores 3 algo mas que no es un "3")
	(valores cereales 3 marcas cuadro)
)

; a.Haya el número entero 3 en el hecho, sin importar el número de valores del hecho.

(defrule num-3
	(valores $? 3 $?)
	=>
)

; b.Hechos con 5 valores que tengan el número entero 3 en la 3ª posición.

(defrule num-3-pos-3
	(valores ? ? 3 ? ?)
	=>
)

; c.Hechos con 5o másvalores que tengan el número entero 3en la3ªposición.

(defrule num-3-pos-3-mas-5-valores
	(valores ? ? 3 ? ? $?)
	=>
)

; d.Hechos que tengan el número entero 3 antes del símbolo float.

(defrule num-3-antes-float
	(valores $? 3 $? float $?)
	=>
)
