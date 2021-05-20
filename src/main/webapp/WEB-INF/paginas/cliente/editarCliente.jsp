
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/5e408c4869.js" crossorigin="anonymous"></script>
        <title>Editar Clientes</title>
    </head>


    <body>
        <!--Cabecera-->
        <jsp:include page="/WEB-INF/paginas/comunes/cabecero.jsp"></jsp:include>

            <form action="${pageContext.request.contextPath}/ServletControlador?accion=modificar&idCliente=${cliente.idCliente}"
              method="POST" class="was-validated">




            <!--botones de naveg-->
            <jsp:include page="/WEB-INF/paginas/comunes/botonesNavegacionEdicion.jsp"></jsp:include>
                <section id="details">
                    <div class="container">
                        <div class="row">
                            <div class="col">
                                <div class="card">
                                    <div class="card-header">
                                        <h4>
                                            Editar Cliente 
                                        </h4>

                                    </div>
                                    <div class="card-body">
                                        <div class="form-group">
                                            <label form="nombre">Nombre</label>
                                            <input type="text" class="form-control" name="nombre" required value="${cliente.nombre}">
                                        </div>
                                        <div class="form-group">
                                            <label form="apellido">Apellido</label>
                                            <input type="text" class="form-control" name="apellido" required value="${cliente.apellido}">
                                        </div>
                                        <div class="form-group">
                                            <label form="email">email</label>
                                            <input type="email" class="form-control" name="email" required value="${cliente.email}">
                                        </div>
                                        <div class="form-group">
                                            <label form="telefono">Telefono</label>
                                            <input type="tel" class="form-control" name="telefono" required value="${cliente.telefono}">
                                        </div>
                                        <div class="form-group">
                                            <label form="saldo">Saldo</label>
                                            <input type="number" class="form-control" name="saldo" required value="${cliente.saldo}" step="any">
                                        </div>

                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </section>

            </form>
            <!--footer-->
        <jsp:include page="/WEB-INF/paginas/comunes/piePagina.jsp"></jsp:include> 



        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
    </body>
</html>
