<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <link rel="stylesheet" href="../css-new/style.css">
    <!-- Boxiocns CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link rel="shortcut icon" href="../iconos/sushi.png" type="image/x-icon">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css-new/body.css">
    <link rel="stylesheet" href="../css-new/style.css">
</head>
<body>
    <div class="sidebar open">
        <div class="logo-details">
        <img src="../iconos/sushi.png" alt="" class="bx ms-4">
        <span class="logo_name">MikaySushi</span>
        </div>
        <ul class="nav-links">
            <li>
                <a href="/Administracion/4dm1n.php">
                <i class='bx bx-grid-alt' ></i>
                <span class="link_name">Dashboard</span>
                </a>
                <ul class="sub-menu blank">
                <li><a class="link_name" href="/Administracion/4dm1n.php">Dashboard</a></li>
                </ul>
            </li>
            <li>
                <div class="iocn-link">
                <a href="/Administracion/categoria-listar.php">
                    <i class='bx bx-collection' ></i>
                    <span class="link_name">Categorias</span>
                </a>
                <i class='bx bxs-chevron-down arrow' ></i>
                </div>
                <ul class="sub-menu">
                <li><a class="link_name" href="/Administracion/categoria-listar.php">Categorias</a></li>
                <li><a href="/Administracion/categoria-crear.php">Crear</a></li>
                <li><a href="/Administracion/categoria-actuali.php">Actualizar</a></li>
                <li><a href="/Administracion/categoria-borrar.php">Borrar</a></li>
                </ul>
            </li>
            <li>
                <div class="iocn-link">
                <a href="/Administracion/productos-listar.php">
                    <i class='bx bx-book-alt' ></i>
                    <span class="link_name">Productos</span>
                </a>
                <i class='bx bxs-chevron-down arrow' ></i>
                </div>
                <ul class="sub-menu">
                <li><a class="link_name" href="/Administracion/productos-listar.php">Productos</a></li>
                <li><a href="/Administracion/productos-crear.php">Crear</a></li>
                <li><a href="/Administracion/productos-actuali.php">Actualizar</a></li>
                <li><a href="/Administracion/productos-borrar.php">Borrarar</a></li>
                </ul>
            </li>
            <li>
                <a href="#">
                <i class='bx bx-pie-chart-alt-2' ></i>
                <span class="link_name">Analytics</span>
                </a>
                <ul class="sub-menu blank">
                <li><a class="link_name" href="#">Analytics</a></li>
                </ul>
            </li>
            <li>
                <div class="iocn-link">
                <a href="/Administracion/repartidor-listar.php">
                    <i class='bx bx-car' ></i>
                    <span class="link_name">Repartidores</span>
                </a>
                <i class='bx bxs-chevron-down arrow' ></i>
                </div>
                <ul class="sub-menu">
                <li><a class="link_name" href="/Administracion/repartidor-listar.php">Repartidores</a></li>
                <li><a href="/Administracion/repartidor-crear.php">Ingresar</a></li>
                <li><a href="/Administracion/repartidor-actuali.php">Actualizar</a></li>
                <li><a href="/Administracion/repartidor-borrar.php">Borrarar</a></li>
                </ul>
            </li>
            <li>
                <a href="../Control/conexion.php">
                <i class='bx bx-plug' ></i>
                <span class="link_name">Conexion</span>
                </a>
                <ul class="sub-menu blank">
                <li><a class="link_name" href="../Control/conexion.php">Conexion</a></li>
                </ul>
            </li>
            <li>
            <div class="profile-details">
            <div class="profile-content">
                <img src="../iconos/user.png" alt="profileImg">
            </div>
            <div class="name-job">
                <div class="profile_name">Admin</div>
                <div class="job">Administrador</div>
            </div>
            <a href="../Control/mikai-4dm1n.php">
            <i class='bx bx-log-out' ></i></a>
            </div>
            </li>
        </ul>
    </div>
    <section class="home-section">
        <div class="home-content bg-dark bg-opacity-50">
        <i class='bx bx-menu' ></i>
        <h3 class="text-dark">Crear categoria nueva</h3>
        </div>
        <div class="container">
            <div class="row">
                <div class="col"></div>
                <div class="col">
                    <?php 
                        include("../Control/conexion.php");
                        if (isset($_POST['insert_repartidor'])){
                            if($_POST['id_repartidor'] != '' && $_POST['nombre_repartidor'] != '' && $_POST['vehiculo_repartidor'] != '' && $_POST['telefono_repartidor'] != '' ){
                                $id = $_POST['id_repartidor'];
                                $nombre = $_POST['nombre_repartidor'];
                                $vehiculo = $_POST['vehiculo_repartidor'];
                                $telefono= $_POST['telefono_repartidor'];
                                $sql = "CALL CREAR_REPARTIDOR ($id,'$nombre','$vehiculo', $telefono)";
                                if ($conn->query($sql) === TRUE) {
                                    ?> <h3 class="mt-3 text-center bg-success">Repartidor ingresado exitosamente</h3> <?php
                                } else {
                                    ?> <h3 class="mt-3 text-center bg-danger">Ocurrio un error</h3> <?php
                                }
                                $conn->close();
                            }else{?>
                                <h3 class="mt-3 text-center bg-warning">Por favor ingrese todos los datos</h3> <?php
                            }
                        }
                    ?>
                    <form method="post">
                        <div class="row"></div>
                            <div class="col mx-auto mt-5 text-center">
                                <h5 class="mb-5">Ingrese los datos del repartidor</h5>
                                <div class="form-floating mb-3 mt-2">
                                    <input type="number" name="id_repartidor" class="form-control" id="floatingInput" placeholder="Identificador">
                                    <label for="floatingInput">Identificador</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input type="text" name="nombre_repartidor" class="form-control" id="floatingPassword" placeholder="Nombre">
                                    <label for="floatingPassword">Nombre</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input type="text" name="vehiculo_repartidor" class="form-control" id="floatingPassword" placeholder="Vehiculo">
                                    <label for="floatingPassword">Vehiculo</label>
                                </div>
                                <div class="form-floating">
                                    <input type="number" name="telefono_repartidor" class="form-control" id="floatingPassword" placeholder="Telefono">
                                    <label for="floatingPassword">Telefono</label>
                                </div>
                                <button type="submit" name="insert_repartidor" class="mt-5 btn btn-dark bg-warning shadow text-dark">Ingresar repartidor</button>
                            </div>
                            <div class="col"></div>
                        </div>
                    </form>
                <div class="col"></div>
            </div>
        </div>
    </section>
    <script src="../js/script.js"></script>
</body>
</html>