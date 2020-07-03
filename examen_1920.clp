(deftemplate calificaciones
	(slot nombre)
	(slot curso)
	(slot asignatura)
	(multislot notas)
)

(calificaciones (nombre "gracia, carlos") (curso "20/21") (asignatura SIN) (notas 4 5 8 9))

(defrule ultimaCalificacion
	(claificaciones (nombre ?n) (curso ?c) (asignatura ?a) (notas $? ?ultima))
	=>
	(assert (ultimaCalificacion ?n ?a ?c ?ultima))
)

(defrule mejoraCalificaciones
	(claificaciones (nombre ?n) (curso ?c) (asignatura ?a) (notas $?))
	(forall
		(claificaciones (nombre ?n) (curso ?c) (asignatura ?a) (notas $? ?x1 ?x2 $?))
		(test (<= ?x1 ?x2))
	)
	=>
	(assert (mejoraCalificaciones ?n ?c ?a))
)
