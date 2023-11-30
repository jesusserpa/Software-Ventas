<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <title>Software Ventas</title>
    </head>
    <body>
        <!-- Cuerpo de la página web -->

        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <!-- Barra de navegación -->
            <div style="width: 8rem">
                <img src="1.png" class="card-img-top" alt="..." style="border-radius: 250px;">
                <!-- Inserta una imagen como logotipo -->
            </div>

            <div class="collapse navbar-collapse" id="navbarSupportedContent" style="margin-left: 20px">
                <!-- Elementos de la barra de navegación -->
                <ul class="navbar-nav mr-auto">
                    <!-- Lista de elementos del menú -->
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Inicio <span class="sr-only">(current)</span></a>
                        <!-- Elemento de menú "Inicio" -->
                    </li>

                    <!-- Más elementos de menú con enlaces a diferentes secciones -->
                    <li class="nav-item active">
                        <a class="nav-link" href="Controlador?menu=Productos&accion=Listar" target="miContenedor">Productos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Controlador?menu=Empleados&accion=Listar" target="miContenedor">Empleados</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="Controlador?menu=Clientes" target="miContenedor">Clientes</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="Controlador?menu=Ventas&accion=default" target="miContenedor">Ventas</a>
                    </li>
                </ul>

                <div class="btn-group style="margin-left: 20 rem">
                    <!-- Botones y menú desplegable -->
                    <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">${usuario.getNombre()}</button>
                    <!-- Botón de usuario con nombre -->

                    <div class="dropdown-menu" style="left: -82px" ">
                        <!-- Menú desplegable con opciones -->
                        <a class="dropdown-item" href="#"><i class="fas fa-user"></i></a>
                        <!-- Ícono de usuario -->
                        <a class="dropdown-item" href="#">${usuario.getDocumento()}</a>
                        <!-- Información del usuario -->
                        <a class="dropdown-item" href="#">${usuario.getCorreo()}</a>
                        <div class="dropdown-divider"></div>

                        <form class="dropdown-item" method="POST" action="Validar">
                            <button class="btn btn-danger center-block" type="submit" name="accion" value="Salir">Cerrar Sesión</button>
                        </form>
                        <!-- Formulario para cerrar sesión del usuario -->
                    </div>
                </div>
            </div>
        </nav>

        <div class="m-3" style="height:900px;">
            <!-- Contenedor principal con altura fija -->
            <iframe name="miContenedor" style="height:100%; width:100%;" frameBorder="1"></iframe>
            <!-- Iframe para cargar contenido dinámico -->
        </div>



        <!-- Optional JavaScript; choose one of the two! -->

        <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

        <!-- Option 2: jQuery, Popper.js, and Bootstrap JS
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
        -->
    </body>
</html>