<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inventario SnowBox</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.2/font/bootstrap-icons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="..\..\CSS\Inventario\inventario.css">
    <link rel="icon" href="..\..\src\images\logo.ico">
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light custom-navbar">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <img src="..\..\src\images\logo.jpg" alt="Logo SnowBox" class="logo-img">
            </a>
            <span class="navbar-text text-white">
                Administrador
            </span>
        </div>
    </nav>

    <div class="container-fluid mt-0">
        <div class="row">
            <!-- Sidebar -->
            <div class="col-md-2 custom-sidebar">
                <div class="nav flex-column">
                    <a href="#" class="nav-link"><i class="bi bi-box-seam"></i> Inventario</a>
                    <a href="#" class="nav-link"><i class="bi bi-truck"></i> Seguimiento</a>
                    <a href="#" class="nav-link"><i class="bi bi-card-list"></i> Pedidos</a>
                    <a href="#" class="nav-link"><i class="bi bi-gear"></i> Configuración</a>
                </div>
            </div>

            <!-- Main Content -->
            <div class="col-md-10">
                <!-- Registro Form -->
                <div class="row">
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Registro:</h5>
                                <form action="#" method="post">
                                    <div class="mb-3">
                                        <input type="text" class="form-control" placeholder="Código">
                                    </div>
                                    <div class="mb-3">
                                        <input type="text" class="form-control" placeholder="Producto">
                                    </div>
                                    <div class="mb-3">
                                        <input type="text" class="form-control" placeholder="Descripción">
                                    </div>
                                    <div class="mb-3">
                                        <input type="number" class="form-control" placeholder="Stock Inicial">
                                    </div>
                                    <div class="mb-3">
                                        <input type="number" class="form-control" placeholder="Salidas">
                                    </div>
                                    <button type="submit" class="btn btn-success">Registrar</button>
                                    <button type="button" class="btn btn-warning">Modificar</button>
                                </form>
                            </div>
                        </div>
                    </div>

                    <!-- Restock -->
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Restock</h5>
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Código</th>
                                            <th>Producto</th>
                                            <th>Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>C0010</td>
                                            <td>Tablet Samsung</td>
                                            <td>3</td>
                                        </tr>
                                        <tr>
                                            <td>C0015</td>
                                            <td>Celular Samsung</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>C0018</td>
                                            <td>Silla Gamer</td>
                                            <td>2</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Tabla de Inventario -->
                <div class="row mt-4">
                    <div class="col-md-12">
                        <table class="table table-striped">
                            <thead class="table-warning">
                                <tr>
                                    <th scope="col">Código</th>
                                    <th scope="col">Producto</th>
                                    <th scope="col">Descripción</th>
                                    <th scope="col">Stock Inicial</th>
                                    <th scope="col">Salidas</th>
                                    <th scope="col">Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>C0001</td>
                                    <td>Audífonos</td>
                                    <td>Samsung, inalámbricos</td>
                                    <td>100</td>
                                    <td>50</td>
                                    <td>50</td>
                                </tr>
                                <tr>
                                    <td>C0002</td>
                                    <td>Cargador</td>
                                    <td>Samsung, inalámbricos</td>
                                    <td>150</td>
                                    <td>65</td>
                                    <td>85</td>
                                </tr>
                                <tr>
                                    <td>C0003</td>
                                    <td>Batería portátil</td>
                                    <td>Samsung, inalámbricos</td>
                                    <td>85</td>
                                    <td>30</td>
                                    <td>55</td>
                                </tr>
                                <tr>
                                    <td>C0004</td>
                                    <td>Parlantes</td>
                                    <td>Samsung, inalámbricos</td>
                                    <td>150</td>
                                    <td>65</td>
                                    <td>85</td>
                                </tr>
                                <tr>
                                    <td>C0005</td>
                                    <td>Cámaras</td>
                                    <td>Samsung, inalámbricos</td>
                                    <td>150</td>
                                    <td>65</td>
                                    <td>85</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
