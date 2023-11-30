<!-- Importación de la biblioteca JSTL para el uso de etiquetas JSP -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

        <title>Sistema de ventas</title>
        <!-- Estilos personalizados -->
        <style>
            @media print{
                .seccion1, .btn, .columna{
                    display:none;
                }
            }
        </style>
    </head>
    <body>
        <!-- Inicio del cuerpo de la página -->
        <div class="row">
            <!-- Columna 1: Datos del cliente y productos -->
            <div class="col-md-5 seccion1">
                <!-- Sección de Datos del Cliente -->
                <div class="card">
                    <h5 class="card-header">Datos cliente</h5>
                    <div class="card-body">
                        <form method="post" action="Controlador?menu=Ventas">
                            <div class="row">
                                <div class="col-md-4 d-flex">
                                    <!-- Campo de entrada para el documento del cliente -->
                                    <input type="number" name="documentocliente" class="form-control" placeholder="documento cliente" value="${cliente.getDocumento()}">
                                    <!-- Botón para buscar cliente -->
                                    <input type="submit" name="accion" value="BuscarCliente" class="btn btn-outline-dark">
                                </div>
                                <div class="col-md-8 d-flex">
                                    <!-- Campo de entrada para el nombre del cliente -->
                                    <input type="text" name="nombrecliente" class="form-control" placeholder="Nombre cliente" value="${cliente.getNombre()}">
                                </div>
                            </div>
                            <div class="row"></div>
                        </form>
                    </div>
                </div>
                <!-- Sección de Datos del Producto -->
                <div class="card">
                    <h5 class="card-header">Datos producto</h5>
                    <div class="card-body">
                        <form action="Controlador?menu=Ventas" method="post">
                            <div class="row">
                                <div class="col-md-4 d-flex form-group">
                                    <!-- Campo de entrada para el código del producto -->
                                    <input type="number" name="codigoproducto" class="form-control" placeholder="Codigo Producto" value="${productoseleccionado.getCodigo()}">
                                    <!-- Botón para buscar producto -->
                                    <input type="submit" name="accion" value="BuscarProducto" class="btn btn-outline-dark">
                                </div>
                                <div class="col-md-8 d-flex form-group">
                                    <!-- Campo de entrada para el nombre del producto -->
                                    <input type="text" name="nombreproducto" class="form-control" placeholder="Nombre Producto" value="${productoseleccionado.getNombreProducto()}">
                                </div>
                                <div class="col-md-4 d-flex form-group">
                                    <!-- Campo de entrada para el precio del producto -->
                                    <input type="text" name="precioproducto" class="form-control" placeholder="$ 0000.00" value="${productoseleccionado.getPrecio()}">
                                </div>
                                <div class="col-md-8 d-flex form-group">
                                    <!-- Campo de entrada para la cantidad del producto -->
                                    <input type="number" value="1" name="cantidadproducto" class="form-control" placeholder="Cantidad">
                                </div>
                            </div>
                            <!-- Botón para agregar el producto a la factura -->
                            <input type="submit" name="accion" value="AgregarProducto" class="btn btn-outline-primary col text-center">
                            <div class="row"></div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- Columna 2: Factura -->
            <div class="col-md-7">
                <div class="card">
                    <div class="card-header">
                        <div class="form-group row">
                            <!-- Campo de entrada para el número de factura -->
                            <label class="col-sm-2 col-form-label">Numero de factura</label>
                            <input class="form-control col-md-4" type="text" name="txtnumerofactura" value="${numerofactura}">
                        </div>
                    </div>
                    <div class="card-body">
                        <!-- Tabla para mostrar los elementos de la factura -->
                        <table class="table">
                            <thead class="thead-dark">
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Codigo</th>
                                    <th scope="col">Producto</th>
                                    <th scope="col">Precio</th>
                                    <th scope="col">Cantidad</th>
                                    <th scope="col">Total</th>
                                    <th scope="col" class="columna">Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- Bucle para mostrar elementos de la factura -->
                                <c:forEach var="lista" items="${listaventas}">
                                    <tr>
                                        <th scope="row" style="width: 30px;">${lista.getItem()}</th>
                                        <td style="width: 30px;">${lista.getIdProducto()}</td>
                                        <td style="width: 350px;">${lista.getDescripcionProducto()}</td>
                                        <td>$ ${lista.getPrecio()}</td>
                                        <td style="width: 30px;">${lista.getCantidad()}</td>
                                        <td>$ ${lista.getSubtotal()}</td>
                                        <td class="columna">
                                            <a class="btn btn-danger">Eliminar</a>
                                            <a class="btn btn-warning">Editar</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="card-footer d-flex">
                        <div class="col-md-8 text-center">
                            <!-- Botones para generar una venta o crear una nueva venta -->
                            <a class="btn btn-success" onclick="print()" href="Controlador?menu=Ventas&accion=GenerarVenta">Generar Venta</a>
                            <a class="btn btn-danger" href="Controlador?menu=Ventas&accion=NuevaVenta">Nueva Venta</a>
                        </div>
                        <div class="col-md-4">
                            <!-- Campo de entrada para mostrar el total a pagar -->
                            <input type="text" name="txttotalapagar" class="form-control" placeholder="$ 00.000.00" disabled="disabled" value="${totalapagar}">
                        </div>
                    </div>
                </div>
            </div>
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

