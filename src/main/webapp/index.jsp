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
            text-align: center;
            display: flex;
            justify-content: space-between;
            align-items: center;
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
        }

        .intro {
            text-align: center;
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
        }
    </style>
</head>
<body>
    <header>
        <h1>Farmacia Santa Natura</h1>
        <a href="FormLogin.jsp" class="login-btn">Iniciar sesión</a>
    </header>

    <main>
        <section class="intro">
            <h2>Bienvenidos a Farmacia Salud</h2>
            <p>Tu fuente de confianza para todos tus medicamentos y productos de bienestar.</p>
        </section>
    </main>

    <footer>
        <p>&copy; 2024 Farmacia Salud. Todos los derechos reservados.</p>
    </footer>
</body>
</html>

