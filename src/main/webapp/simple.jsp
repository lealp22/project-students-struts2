<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registro de Alumno</title>
</head>
<body>

<h1>Formulario de Registro de Alumno</h1>

<s:form action="registrarAlumno" method="post" validate="true">
    <table>
        <tr>
            <td>
                <s:fielderror fieldName="alumnoBean.dni"/>
                <label for="dni">DNI:</label>
                <s:textfield id="dni" name="alumnoBean.dni"/>
            </td>
        </tr>
        <tr>
            <td>
                <s:fielderror fieldName="alumnoBean.nombre"/>
                <label for="nombre">Nombre:</label>
                <s:textfield id="nombre" name="alumnoBean.nombre"/>
            </td>
        </tr>
        <tr>
            <td>
                <s:fielderror fieldName="alumnoBean.apellidos"/>
                <label for="apellidos">Apellidos:</label>
                <s:textfield id="apellidos" name="alumnoBean.apellidos"/>
            </td>
        </tr>
        <tr>
            <td>
                <s:fielderror fieldName="alumnoBean.email"/>
                <label for="email">Email:</label>
                <s:textfield id="email" name="alumnoBean.email"/>
            </td>
        </tr>
        <tr>
            <td>
                <s:fielderror fieldName="alumnoBean.direccion"/>
                <label for="direccion">Dirección:</label>
                <s:textfield id="direccion" name="alumnoBean.direccion"/>
            </td>
        </tr>
        <tr>
            <td>
                <s:fielderror fieldName="alumnoBean.telefono"/>
                <label for="telefono">Teléfono:</label>
                <s:textfield id="telefono" name="alumnoBean.telefono"/>
            </td>
        </tr>
        <tr>
            <td>
                <s:fielderror fieldName="alumnoBean.fechaNacimiento"/>
                <label for="fechaNacimiento">Fecha de Nacimiento:</label>
                <!-- Input de tipo date para fecha de nacimiento -->
                <s:textfield type="date" id="fechaNacimiento" name="alumnoBean.fechaNacimiento"/>
            </td>
        </tr>
        <tr>
            <td>
                <s:fielderror fieldName="alumnoBean.curso"/>
                <label for="curso">Curso:</label>
                <s:textfield id="curso" name="alumnoBean.curso"/>
            </td>
        </tr>
        <tr>
            <td>
                <s:fielderror fieldName="alumnoBean.fechaInicio"/>
                <label for="fechaInicio">Fecha de Inicio:</label>
                <!-- Input de tipo date para fecha de inicio -->
                <s:textfield type="date" id="fechaInicio" name="alumnoBean.fechaInicio"/>
            </td>
        </tr>
        <tr>
            <td>
                <s:fielderror fieldName="alumnoBean.fechaFin"/>
                <label for="fechaFin">Fecha de Fin:</label>
                <!-- Input de tipo date para fecha de fin -->
                <s:textfield type="date" id="fechaFin" name="alumnoBean.fechaFin"/>
            </td>
        </tr>
        <tr>
            <td>
                <s:submit value="Guardar"/>
            </td>
        </tr>
    </table>
</s:form>

</body>
</html>