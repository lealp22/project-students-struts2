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

            // Validación del DNI (ya existente)
            if (alumno.getDni() == null || alumno.getDni().trim().isEmpty()) {
                addFieldError("alumno.dni", "El DNI es obligatorio.");
            }

            // Validación del nombre
            if (alumno.getNombre() == null || alumno.getNombre().trim().isEmpty()) {
                addFieldError("alumno.nombre", "El nombre es obligatorio.");
            }

            // Validación de apellidos
            if (alumno.getApellidos() == null || alumno.getApellidos().trim().isEmpty()) {
                addFieldError("alumno.apellidos", "Los apellidos son obligatorios.");
            }

            // Validación de dirección
            if (alumno.getDireccion() == null || alumno.getDireccion().trim().isEmpty()) {
                addFieldError("alumno.direccion", "La dirección es obligatoria.");
            }

            // Validación del curso
            if (alumno.getCurso() == null || alumno.getCurso().trim().isEmpty()) {
                addFieldError("alumno.curso", "El curso es obligatorio.");
            }

            // Validación de teléfono (solo números)
            if (alumno.getTelefono() == null || !alumno.getTelefono().matches("\\d+")) {
                addFieldError("alumno.telefono", "El teléfono debe contener solo números.");
            }

            // Validación del email (debe contener '@')
            if (alumno.getEmail() == null || !alumno.getEmail().contains("@")) {
                addFieldError("alumno.email", "El email debe contener un '@'.");
            }

            // Validación de fechas (asegúrate de que no sean nulas y tengan formato válido)
            if (alumno.getFechaNacimiento() == null) {
                addFieldError("alumno.fechaNacimiento", "La fecha de nacimiento es obligatoria.");
            }

            if (alumno.getFechaInicio() == null) {
                addFieldError("alumno.fechaInicio", "La fecha de inicio es obligatoria.");
            }

            if (alumno.getFechaFin() == null) {
                addFieldError("alumno.fechaFin", "La fecha de fin es obligatoria.");
            }

            // Validación de que la fecha de inicio no sea posterior a la fecha de fin
            if (alumno.getFechaInicio() != null && alumno.getFechaFin() != null &&
                    alumno.getFechaInicio().after(alumno.getFechaFin())) {
                addFieldError("alumno.fechaInicio", "La fecha de inicio no puede ser posterior a la fecha de fin.");
            }
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