package org.example.actions;

import com.opensymphony.xwork2.ActionSupport;
import org.example.actions.beans.AlumnoBean;
import org.example.actions.services.AlumnoService;

public class BuscarAction extends ActionSupport {

    private String dni;
    private AlumnoBean alumno;

    // Servicio de gestión de alumnos (puede estar en memoria)
    private static final AlumnoService alumnoService = new AlumnoService();

    @Override
    public String execute() {
        if (dni == null || dni.isEmpty()) {
            addActionError("El campo DNI no puede estar vacío.");
            return INPUT;  // Vuelve a la página de búsqueda (index.jsp)
        }

        // Intentar buscar el alumno por el DNI
        alumno = alumnoService.buscarAlumnoPorDni(dni);

        if (alumno == null) {
            addActionError("El alumno con DNI " + dni + " no existe.");
            return INPUT;  // Si no se encuentra, vuelve a la página inicial
        }

        // Si el alumno se encuentra, continuar a la página de detalles del alumno
        return SUCCESS;
    }

    // Getters y setters
    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public AlumnoBean getAlumno() {
        return alumno;
    }

    public void setAlumno(AlumnoBean alumno) {
        this.alumno = alumno;
    }
}