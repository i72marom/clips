; Ejercicio 2
; Representa mediante hechos no ordenados, los datos de varios  
; pacientes de un médico (nombre, apellidos, dni y seguro médico) y 
; las visitas que éstos realizanal médico (fecha, síntomas, pruebas y medicación).

(deftemplate paciente
	(slot nombre)
	(slot apellidos)
	(slot dni)
	(slot seguro_medico)
)

(deftemplate visitas
	(slot fecha)
	(multislot sintomas)
	(multislot pruebas)
	(multislot medicacion)
)