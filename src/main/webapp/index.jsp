<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Farmacia Salud</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f9f4;
            color: #333;
        }

        header {
            background-color: #00695c;
            color: white;
            padding: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
        }

        h1 {
            margin: 0;
            font-size: 2.5em;
            font-weight: normal;
        }

        .login-btn {
            background-color: #388e3c;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 1em;
            cursor: pointer;
            border-radius: 5px;
            text-decoration: none;
        }

        .login-btn:hover {
            background-color: #2e7d32;
        }

        main {
            padding: 20px;
            text-align: center;
        }

        .intro {
            margin-top: 50px;
        }

        .intro h2 {
            color: #388e3c;
            font-size: 2em;
        }

        .intro p {
            color: #666;
            font-size: 1.2em;
        }

        .link-list {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            margin-top: 30px;
            gap: 20px;
        }

        .card {
            background-color: white;
            border: 2px solid #007BFF;
            border-radius: 10px;
            padding: 20px;
            width: 250px;
            text-align: center;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }

        .card img {
            max-width: 100px;
            margin-bottom: 15px;
        }

        .card a {
            color: #007BFF;
            text-decoration: none;
            font-size: 1.2em;
            display: block;
            margin-top: 10px;
        }

        .card p {
            color: #555;
            font-size: 1em;
            margin-top: 10px;
        }

        footer {
            background-color: #00695c;
            color: white;
            text-align: center;
            padding: 10px 0;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            header {
                flex-direction: column;
                align-items: center;
            }

            .login-btn {
                margin-top: 10px;
            }

            .link-list {
                flex-direction: column;
                align-items: center;
            }

            .card {
                width: 90%;
            }
        }
        .title-link {
    text-decoration: none;
    color: inherit;
}

.title-link:hover {
    text-decoration: underline; /* Opcional: Agrega subrayado al pasar el cursor */
}
    </style>
</head>
<body>
    <header>
        <h1><a href="index.jsp" class="title-link">Farmacia Santa Natura</a></h1>
        <a href="FormLogin.jsp" class="login-btn">Iniciar sesión</a>
    </header>

    <main>
        <section class="intro">
            <h2>Bienvenidos a Farmacia Salud</h2>
            <p>Tu fuente de confianza para todos tus medicamentos y productos de bienestar.</p>
        </section>

        <section class="link-list">
            <div class="card">
                  
                <img src="imagenes/productos.jpg" alt="Productos">
                <h3>Productos</h3>
                <p>Explora nuestra variedad de productos farmacéuticos y de bienestar.</p>
                <a href="ControladorProducto?accion=Listar">Mostrar listado de Productos</a>
            </div>
            <div class="card">
                <img src="imagenes/clientes.jpg" alt="Clientes">
                <h3>Clientes</h3>
                <p>Consulta nuestra base de datos de clientes y sus detalles.</p>
                <a href="ControladorCliente?accion=Listar">Mostrar listado de Clientes</a>
            </div>
            <div class="card">
                <img src="imagenes/empleados.jpg" alt="Empleados">
                <h3>Empleados</h3>
                <p>Revisa el listado completo de nuestros empleados y su información.</p>
                <a href="ControladorEmpleado?accion=Listar">Mostrar listado de Empleados</a>
            </div>
        </section>
    </main>

    <footer>
        <p>&copy; 2024 Farmacia Salud. Todos los derechos reservados.</p>
    </footer>
</body>
</html>

