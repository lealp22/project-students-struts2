<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <title>Gestión de Alumnos - Página Inicial</title>
</head>
<body>

    <h2><s:text name="init.tittle.message"/></h2>

    <!-- Formulario para buscar alumno por DNI -->
    <s:form action="buscarAlumno" method="post">
        <s:text name="init.dni.message"/>
        <s:textfield name="dni" required="true" />
        <s:submit value="Buscar" />
    </s:form>

    <!-- Enlace para ir a la página de registro -->
    <br/>
    <a href="registrarAlumnoForm.action">Registrar nuevo alumno</a>

    <!-- Mensaje de error si no se encuentra el alumno o si hay un problema -->
    <s:if test="hasActionErrors()">
        <div style="color: red;">
            <s:actionerror />
        </div>
    </s:if>

</body>
</html>