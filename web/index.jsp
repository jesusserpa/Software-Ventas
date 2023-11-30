<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

        <!-- Título de la página -->
        <title>Software Ventas</title>
    </head>
    <body>
        <div class="container center-block" >
            <!-- Contenedor centrado en la página -->
            <div class="row justify-content-center">
                <div class="card" style="width: 18rem;">                   
                    <img src="1.png" class="card-img-top" alt="..." style="border-radius: 250px">
                    <!-- Imagen en la parte superior de la tarjeta -->
                    <div class="card-body">
                        <!-- Cuerpo de la tarjeta -->
                        <form method="POST" action="Validar">
                            <!-- Formulario que envía datos al servidor -->
                            <div class="form-group">
                                <label>No de Documento</label>
                                <!-- Etiqueta para el número de documento -->
                                <input type="text" class="form-control" name="txtusuario">
                                <!-- Campo de entrada para el número de documento -->
                                <small id="emailHelp" class="form-text text-muted">Ingrese su documento sin espacios ni puntos</small>
                                <!-- Texto de ayuda -->
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Contraseña</label>
                                <!-- Etiqueta para la contraseña -->
                                <input type="password" class="form-control" id="exampleInputPassword1" name="txtpassword">
                                <!-- Campo de entrada para la contraseña -->
                            </div>
                            <div class="form-group form-check">
                                <!-- Grupo de casilla de verificación -->
                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                <!-- Casilla de verificación -->
                                <label class="form-check-label" for="exampleCheck1">Permanecer loggeado</label>
                                <!-- Etiqueta para la casilla de verificación -->
                            </div>
                            <button type="submit" class="btn btn-primary" name="accion" value="Ingresar">Ingresar</button>
                            <!-- Botón para enviar el formulario -->
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>
