; Ejercicio 1
; En una granja hay animales de los siguientes tipos: perros, gatos, patos, vacas,
; ovejas y gallos. Escribe una serie de reglas de manera que en base a un hecho que
; indique el sonido que hace un animal identifique qué clase de animal es.
; Por ejemplo, si se afirma un hecho como (sonido kikiriki), el programa debe imprimir
; por pantalla el mensaje “Se trata de un gallo”. 

	(defrule animal-perro
		(sonido guau)
		=>
		(printout t "Se trata de un perro" crlf)
	)

	(defrule animal-gato
		(sonido miau)
		=>
		(printout t "Se trata de un gato" crlf)
	)

	(defrule animal-vaca
		(sonido muu)
		=>
		(printout t "Se trata de una vaca" crlf)
	)

	(defrule animal-pato
		(sonido cuak)
		=>
		(printout t "Se trata de un pato" crlf)
	)

	(defrule animal-oveja
		(sonido bee)
		=>
		(printout t "Se trata de una oveja" crlf)
	)

	(defrule animal-gallo
		(sonido kikiriki)
		=>
		(printout t "Se trata de un gallo" crlf)
	)

