
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Formulario de usuarios</title>
</head>
<body>
<h3>Formulario de usuarios</h3>
<form action="/webapp-form/registro" method="post">
    <div>
        <label for="username">Usuario</label>
        <div><input type="text" name="username" id="username"></div>
    </div>
    <div>
        <label for="password">Contraseña</label>
        <div><input type="password" name="password" id="password"></div>
    </div>
    <div>
        <label for="email">Email</label>
        <div><input type="text" name="email" id="email"></div>
    </div>

    <div>
        <label for="pais">Pais</label>
        <div>
            <select name="pais" id="pais">
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
    </div>

    <div>
        <label for="lenguajes">Lenguajes de Programacion</label>
        <div>
            <select name="lenguajes" id="lenguajes" multiple>
            <option value="java">Java SE</option>
            <option value="jakartaee">Jakarta EE9</option>
            <option value="spring">SpringBoot</option>
            <option value="js">JavaScript</option>
            <option value="angular">Angular</option>
            <option value="react">React</option>
            </select>
        </div>
    </div>

    <div>
        <label>Roles</label>
        <div>
            <input type="checkbox" name="roles" value="ROL_ADMIN">
            <label>Administrador</label>
        </div>
        <div>
            <input type="checkbox" name="roles" value="ROL_USER">
            <label>Usuario</label>
        </div>
        <div>
            <input type="checkbox" name="roles" value="ROL_MODERADOR">
            <label>Moderador</label>
        </div>
    </div>

    <div>
        <label>Idiomas</label>
        <div>
            <input type="radio" name="idioma" value="es">
            <label>Español</label>
        </div>        <div>
            <input type="radio" name="idioma" value="en">
            <label>Ingles</label>
        </div>        <div>
            <input type="radio" name="idioma" value="fr">
            <label>Frances</label>
        </div>
    </div>
    
    <div>
        <label for="habilitar">Habilitar</label>
        <div>
            <input type="checkbox" name="habilitar" id="habilitar" checked>
        </div>
    </div>
    
    <div>
        <input type="submit" value="Enviar">
    </div>

    <input type="hidden" name="secreto" value="12345">

</form>
</body>
</html>