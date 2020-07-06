Crea un conjunto de reglas que cree hechos con la suma de los valores de los vectores en la base de hechos. Por ejemplo, si tuviésemos los hechos
(vector (nombre v1) (valores 1 2 3 4 5 6 7))
(vector (nombre v2) (valores 1 2 4 6 8))
(vector (nombre v3) (valores 2 2 2 2 2 3 2))
(vector (nombre v4) (valores 1))
Entonces creará los hechos:
(suma v1 28)
(suma v2 21)
(suma v3 15)
(suma v4 1)

(deffacts vectores
	(vector (nombre v1) (valores 1 2 3 4 5 6 7))
	(vector (nombre v2) (valores 1 2 4 6 8))
	(vector (nombre v3) (valores 2 2 2 2 2 3 2))
	(vector (nombre v4) (valores 1))
)

(defrule assertSuma
	(vector (nombre ?n) (valores $?))
	=>
	(assert (suma ?n 0))
)

(defrule suma
	?f <- (vector (nombre ?n) (valores $?antes ?x&:(integerp ?x) $?despues))
	?dir <- (suma ?n ?y)
	=>
	(retract ?dir ?f)
	(assert (vector (nombre ?n) (valores $?antes $?despues)))
	(assert (suma ?n (+ ?x ?y)))
)
