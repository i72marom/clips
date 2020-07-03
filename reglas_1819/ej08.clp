; Ejercicio 8
; Haz un programa que dado un conjunto de hechos (vector <nombreVector> <val1> ... <valN>),
; detecte aquellos hechos cuyos valores no están ordenados de menor a mayor e imprima el
; mensaje “El vector <nombreVector> no está ordenado”. Se entenderá que en la base de hechos
; no habrá dos hechos vector con mismo nombre de vector. 

	(deffacts vector
		(datos 1 3 4 5 6 7 8)
		(datos 1 2 1 4 1 6 1 8)
		(datos 11 13 4 34 2 1 1 1 1 1)
	)

	(defrule ejercicio8
		(vector ?n $?)
		(not (forall
					(vector ?n $? ?x ?y $?)
					(test (< ?x ?y))
				))
		=>
		(printout t "EL vector " ?n " no esta ordenado" crlf)
	)

