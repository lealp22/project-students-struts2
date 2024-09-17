<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
  <title><s:text name="hello.message"/></title>
  <s:head/>
</head>

<body>

<s:form theme="simple" id="registroAlumno" name="registroAlumno" action="registroAlumno" method="post" validate="true">
  <h1><s:text name="form.tittle.message"/></h1>
  <table>
  <tr>
      <td class="evenRow">
        <s:fielderror fieldName = "alumno.dni" />
        <s:text name="form.dni.message"/>
        <s:textfield id="dni" name="alumno.dni"/>
      </td>
  </tr>
  <tr>
      <td class="evenRow">
        <s:fielderror fieldName = "alumno.nombre" />
        <s:text name="form.nombre.message"/>
        <s:textfield id="nombre" name="alumno.nombre"/>
      </td>
  </tr>
  <tr>
      <td class="evenRow">
        <s:fielderror fieldName = "alumno.apellidos" />
        <s:text name="form.apellidos.message"/>
        <s:textfield id="apellidos" name="alumno.apellidos"/>
      </td>
  </tr>
  <tr>
      <td class="evenRow">
        <s:fielderror fieldName = "alumno.email" />
        <s:text name="form.email.message"/>
        <s:textfield id="email" name="alumno.email"/>
      </td>
  </tr>
  <tr>
      <td class="evenRow">
        <s:fielderror fieldName = "alumno.direccion" />
        <s:text name="form.direccion.message"/>
        <s:textfield id="direccion" name="alumno.direccion"/>
      </td>
  </tr>
  <tr>
      <td class="evenRow">
        <s:fielderror fieldName = "alumno.telefono" />
        <s:text name="form.telefono.message"/>
        <s:textfield id="telefono" name="alumno.telefono"/>
      </td>
  </tr>
  <tr>
      <td class="evenRow">
        <s:fielderror fieldName = "alumno.fechaNacimiento" />
        <s:text name="form.fechaNacimiento.message"/>
        <s:textfield type="date" id="fechaNacimiento" name="alumno.fechaNacimiento"/>
      </td>
  </tr>
  <tr>
      <td class="evenRow">
        <s:fielderror fieldName = "alumno.curso" />
        <s:text name="form.curso.message"/>
        <s:textfield id="curso" name="alumno.curso"/>
      </td>
  </tr>
  <tr>
      <td class="evenRow">
        <s:fielderror fieldName = "alumno.fechaInicio" />
        <s:text name="form.fechaInicio.message"/>
        <s:textfield type="date" id="fechaInicio" name="alumno.fechaInicio"/>
      </td>
  </tr>
  <tr>
    <td class="evenRow">
       <s:fielderror fieldName = "alumno.fechaFin" />
       <s:text name="form.fechaFin.message"/>
       <s:textfield type="date" id="fechaFin" name="alumno.fechaFin"/>
    </td>
  </tr>
  <tr>
    <td class="evenRow">
        <s:submit align="left" value="Guardar"/>
    </td>
  </tr>
  </table>
</s:form>

    <!-- Mensaje de error si no se encuentra el alumno o si hay un problema -->
    <s:if test="hasActionErrors()">
        <div style="color: red;">
            <s:actionerror />
        </div>
    </s:if>

    <s:if test="hasActionMessage()">
        <div style="color: blue;">
            <s:actionmessage />
        </div>
    </s:if>


</body>
</html>