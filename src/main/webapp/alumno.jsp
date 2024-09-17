<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <title>Información del Alumno</title>
</head>
<body>

    <h2>Detalles del Alumno</h2>

    <s:if test="alumno != null">
        <p><strong>DNI:</strong> <s:property value="alumno.dni"/></p>
        <p><strong>Nombre:</strong> <s:property value="alumno.nombre"/></p>
        <p><strong>Apellidos:</strong> <s:property value="alumno.apellidos"/></p>
        <p><strong>Email:</strong> <s:property value="alumno.email"/></p>
        <p><strong>Dirección:</strong> <s:property value="alumno.direccion"/></p>
        <p><strong>Teléfono:</strong> <s:property value="alumno.telefono"/></p>
        <p><strong>Fecha de Nacimiento:</strong> <s:property value="alumno.fechaNacimiento"/></p>
        <p><strong>Curso:</strong> <s:property value="alumno.curso"/></p>
        <p><strong>Fecha de Inicio:</strong> <s:property value="alumno.fechaInicio"/></p>
        <p><strong>Fecha de Fin:</strong> <s:property value="alumno.fechaFin"/></p>
    </s:if>

    <br/>
    <a href="hello.action">Volver a la página de búsqueda</a>

</body>
</html>