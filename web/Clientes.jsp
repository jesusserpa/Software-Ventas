<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="es">
    <head>
        <!-- Cabecera de la página -->
        <meta charset="utf-8">  <!-- Configura la codificación de caracteres -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">  <!-- Configura la vista en dispositivos móviles -->

        <!-- Enlaces a hojas de estilo Bootstrap -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-...">  <!-- Carga CSS de Bootstrap -->

        <title>SP Universo</title>  <!-- Título de la página -->
    </head>
    <body>
        <!-- Cuerpo de la página -->
        <div class="row">
            <div class="card col-md-4">
                <div class="card-body">
                    <!-- Panel de Clientes -->
                    <h5 class="card-title">Clientes</h5>
                    <h6 class="card-subtitle mb-2 text-muted">En este panel podrás gestionar los datos de los usuarios empleados del sistema</h6>
                    <div>
                        <!-- Formulario para agregar o actualizar información del cliente -->
                        <form action="Controlador?menu=Empleados" method="POST">
                            <!-- Campos del formulario -->
                            <div class="form-group">
                                <label>Documento</label>
                                <input type="number" class="form-control" name="txtdocumento" value="${usuarioSeleccionado.getDocumento()}">
                                <small class="form-text text-muted">Ingrese El No de documento sin espacios ni caracteres especiales</small>
                            </div>
                            <div class="form-group">
                                <label>Nombre</label>
                                <input type="text" class="form-control" name="txtnombre" value="${usuarioSeleccionado.getNombre()}">
                            </div>
                            <div class="form-group">
                                <label>Correo</label>
                                <input type="text" class="form-control" name="txtcorreo" value="${usuarioSeleccionado.getCorreo()}">
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="text" class="form-control" name="txtpassword" value="${usuarioSeleccionado.getPassword()}">
                            </div>
                            <div class="form-group">
                                <label>Rol</label>
                                <select class="form-control form-control-sm" name="txtrol">
                                    <option>Empleado</option>
                                    <option>Cliente</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Estado</label>
                                <select class="form-control form-control-sm" name="txtestado">
                                    <option>Activo</option>
                                    <option>Inactivo</option>
                                </select>
                            </div>

                            <!-- Botones para agregar o actualizar información -->
                            <input type="submit" class="btn btn-primary" name="accion" value="Agregar">
                            <input type="submit" class="btn btn-success" name="accion" value="Actualizar">
                        </form>
                    </div>
                </div>
            </div>

            <div class="col-md-8">
                <!-- Tabla para mostrar información de los clientes -->
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">id</th>
                            <th scope="col">Documento</th>
                            <th scope="col">Nombres</th>
                            <th scope="col">Correo</th>
                            <th scope="col">Contraseña</th>
                            <th scope="col">Rol</th>
                            <th scope="col">Estado</th>
                            <th scope="col">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Bucle para iterar sobre la lista de usuarios -->
                        <c:forEach var="usuario" items="${usuarios}">
                            <tr>
                                <!-- Muestra los datos del usuario en la tabla -->
                                <th scope="row">${usuario.getId()}</th>
                                <td>${usuario.getDocumento()}</td>
                                <td>${usuario.getNombre()}</td>
                                <td>${usuario.getCorreo()}</td>
                                <td>${usuario.getPassword()}</td>
                                <td>${usuario.getRol()}</td>
                                <td>${usuario.getEstado()}</td>
                                <td>
                                    <!-- Enlaces para editar o eliminar un usuario -->
                                    <a class="btn btn-warning" href="Controlador?menu=Empleados&accion=Cargar&id=${usuario.getId()}">Editar</a>
                                    <a class="btn btn-danger" href="Controlador?menu=Empleados&accion=Eliminar&id=${usuario.getId()}">Eliminar</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Scripts de JavaScript para Bootstrap -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-..."></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-..."></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-..."></script>
    </body>
</html>
