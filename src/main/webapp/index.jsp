<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Map"%>
<%
 Map<String, String> errores = (Map<String, String>)request.getAttribute("errores");
 %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Formulario de usuarios</title>
    <link  href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
<h3>Formulario de usuarios</h3>
<%
    if(errores != null && errores.size() > 0){
%>
<ul class="alert alert-dangeralert alert-danger col-sm-4 mx-5 ">
    <% for(String error: errores.values()) { %>
        <li>
            <% out.print(error); %>
        </li>
    <%}%>
</ul>
<%}%>
<div class="px-5">
<form action="/webapp-form/registro" method="post">
 class="row mb-3"
    <div class="row mb-3">
        <label for="username" class="col-form-label col-sm-2">Usuario</label>
        <div class="col-sm-4"><input type="text" name="username" id="username" class="form-control"></div>
            <%
             if(errores != null && errores.containsKey("username")){
                out.println("<small alert alert-danger col-sm-4 style='color: red;'>"+ errores.get("username") + "</small>");
             }
             %>
    </div>
    <div class="row mb-3">
        <label for="password" class="col-form-label col-sm-2">Contraseña</label>
        <div class="col-sm-4"><input type="password" name="password" id="password" class="form-control"></div>
    </div>
    <%
     if(errores != null && errores.containsKey("password")){
        out.println("<small alert alert-danger col-sm-4 style='color: red;'>"+ errores.get("password") + "</small>");
     }
     %>
    <div class="row mb-3">
        <label for="email" class="col-form-label col-sm-2">Email</label>
        <div class="col-sm-4"><input type="text" name="email" id="email" class="form-control"></div>
            <%
             if(errores != null && errores.containsKey("email")){
                out.println("<small alert alert-danger col-sm-4 style='color: red;'>"+ errores.get("email ") + "</small>");
             }
             %>
    </div>

    <div class="row mb-3">
        <label for="pais" class="col-form-label col-sm-2">Pais</label>
        <div class="col-sm-4" class="col-form-label col-sm-2">
            <select name="pais" id="pais" class="form-select">
                <option value="">-- Seleccionar --</option>
                <option value="ES">España</option>
                <option value="MX">Mexico</option>
                <option value="CL">CHILE</option>
                <option value="ARG">ARGENTINA</option>
                <option value="PE">PERU</option>
                <option value="COL">COLOMBIA</option>
                <option value="VZ">VENEZUELA</option>
            </select>
        </div>
            <%
             if(errores != null && errores.containsKey("pais")){
                out.println("<small alert alert-danger col-sm-4 style='color: red;'>"+ errores.get("pais") + "</small>");
             }
             %>
    </div>

    <div class="row mb-3">
        <label for="lenguajes" class="col-form-label col-sm-2">Lenguajes de Programacion</label>
        <div class="col-sm-4">
            <select name="lenguajes" id="lenguajes" multiple class="form-select">
            <option value="java">Java SE</option>
            <option value="jakartaee">Jakarta EE9</option>
            <option value="spring">SpringBoot</option>
            <option value="js">JavaScript</option>
            <option value="angular">Angular</option>
            <option value="react">React</option>
            </select>
        </div>
            <%
             if(errores != null && errores.containsKey("lenguajes")){
                out.println("<small alert alert-danger col-sm-4 style='color: red;'>"+ errores.get("lenguajes") + "</small>");
             }
             %>
    </div>

    <div class="row mb-3">
        <label class="col-form-label col-sm-2">Roles</label>
        <div class="form-check">
            <input type="checkbox" name="roles" value="ROL_ADMIN" class="form-check-input">
            <label class="form-check-label">Administrador</label>
        </div>
        <div class="form-check">
            <input type="checkbox" name="roles" value="ROL_USER" class="form-check-input">
            <label class="form-check-label">Usuario</label>
        </div>
        <div class="form-check">
            <input type="checkbox" name="roles" value="ROL_MODERADOR" class="form-check-input">
            <label class="form-check-label">Moderador</label>
        </div>
            <%
             if(errores != null && errores.containsKey("roles")){
                out.println("<small alert alert-danger col-sm-4 style='color: red;'>"+ errores.get("roles") + "</small>");
             }
             %>
    </div>

    <div class="row mb-3">
        <label class="col-form-label col-sm-2">Idiomas</label>
        <div class="form-check">
            <input type="radio" name="idioma" value="es"  class="form-check-input">
            <label class="form-check-label">Español</label>
        </div>
        <div class="form-check">
            <input type="radio" name="idioma" value="en"  class="form-check-input">
            <label class="form-check-label">Ingles</label>
        </div>
        <div class="form-check">
            <input type="radio" name="idioma" value="fr"  class="form-check-input">
            <label class="form-check-label">Frances</label>
        </div>
            <%
             if(errores != null && errores.containsKey("idioma")){
                out.println("<small alert alert-danger col-sm-4 style='color: red;'>"+ errores.get("idioma") + "</small>");
             }
             %>
    </div>
    
    <div class="row mb-3">
        <label for="habilitar" class="col-form-label col-sm-2">Habilitar</label>
        <div class="form-check">
            <input type="checkbox" name="habilitar" id="habilitar" checked   class="form-check-input">
        </div>
    </div>
    
    <div class="row mb-3">
        <input type="submit" value="Enviar" class="btn btn-primary">
    </div>

    <input type="hidden" name="secreto" value="12345">

</form>
</div>
</body>
</html>