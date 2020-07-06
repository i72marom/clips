Crea un conjunto de reglas tal que dado hechos vectores como los siguientes: muestre por pantalla el nombre de aquellos vectores que tienen tres números consecutivos tal que el tercero es igual a la suma de los dos anteriores.

(deffacts vectores
	(vector (nombre v1) (valores 1 2 3 4 5 6 7))
	(vector (nombre v2) (valores 1 2 4 6 8))
	(vector (nombre v3) (valores 2 2 2 2 2 3 2))
	(vector (nombre v4) (valores 1))
)

(defrule regla
	(vector (nombre ?n) (valores $? ?x ?y ?z $?))
	(test (= (+ ?x ?y) ?z))
	=>
	(printout t "La condicion se cumple en el vector " ?n crlf)
)
