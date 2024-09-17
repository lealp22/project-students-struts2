package org.example.actions;

import org.example.actions.beans.AlumnoBean;
import org.example.actions.services.AlumnoService;
import com.opensymphony.xwork2.ActionSupport;

public class RegistroAction extends ActionSupport {
    private AlumnoBean alumno;
    private AlumnoService alumnoService = new AlumnoService();

    @Override
    public String execute() {

        if (alumno == null) {
            alumno = new AlumnoBean(); // Inicializa el objeto si es nulo
        }

        // Simula una validación o proceso
        if (alumno.getDni() == null || alumno.getDni().isEmpty()) {
            addFieldError("alumno.dni", "El DNI es obligatorio.");
            return INPUT; // Si el DNI está vacío, regresa a la página de registro
        }

        if (alumnoService.buscarAlumnoPorDni(alumno.getDni()) != null) {
            addActionError("El DNI ya está registrado");
            return INPUT;
        }

        if (!alumnoService.registrarAlumno(alumno)) {
            addActionError("Error al registrar el alumno");
            return INPUT;
        }

        addActionMessage("Alumno registrado correctamente");
        return SUCCESS;
    }

    @Override
    public void validate() {

        if (alumno != null) {

            if (alumno.getDni() == null || alumno.getDni().trim().isEmpty()) {
                addFieldError("alumno.dni", "El DNI es obligatorio");
            }
            // Aquí podrías agregar más validaciones para los otros campos según lo que necesites
        }
    }

    public String iniciar() throws Exception {
        alumno = new AlumnoBean();
        return SUCCESS;
    }

    // Getters y setters
    public AlumnoBean getAlumno() {
        return alumno;
    }

    public void setAlumno(AlumnoBean alumno) {
        this.alumno = alumno;
    }
}