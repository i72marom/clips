; Ejercicio 3
; Describe la información representada en la figura,  acerca de trayectos
; aéreos,mediante un conjunto de hechos no ordenados. Utiliza una única plantilla.

(deftemplate trayectos-aereos
	(slot origen (type SYMBOL))
	(multislot destino (type SYMBOL))
)

(assert (trayectos-aereos (origen lisboa) (destino paris madrid)))
(assert (trayectos-aereos (origen paris) (destino roma)))
(assert (trayectos-aereos (origen estocolmo) (destino paris)))
(assert (trayectos-aereos (origen roma) (destino madird lisboa frankfurt)))
(assert (trayectos-aereos (origen frankfurt) (destino roma)))