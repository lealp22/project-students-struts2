package org.example.actions.services;

import org.example.actions.beans.AlumnoBean;

import java.util.HashMap;
import java.util.Map;

public class AlumnoService {
    private static Map<String, AlumnoBean> alumnos = new HashMap<>();

    public AlumnoBean buscarAlumnoPorDni(String dni) {
        return alumnos.get(dni);
    }

    public boolean registrarAlumno(AlumnoBean alumno) {
        if (alumnos.containsKey(alumno.getDni())) {
            return false; // Ya existe un alumno con ese DNI
        }
        alumnos.put(alumno.getDni(), alumno);
        return true;
    }
}