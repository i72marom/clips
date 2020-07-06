;Define una plantilla vector con un campo nombre, y un campo valores,
; restringido a enteros y con cardinalidad entre 0 y 100. Por ejemplo:

(vector (nombre v1) (valores 1 2 3 4 5 6 7))
(vector (nombre v2) (valores 1 2 4 6 8))
(vector (nombre v3) (valores 2 2 2 2 2 3 2))
(vector (nombre v4) (valores 1))

(deftemplate vector
	(slot nombre)
	(multislot valores (type INTEGER) (range 0 100))
)