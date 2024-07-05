<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta charset="ISO-8859-1">
    <title>Registrar producto en la Farmacia</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }
        h1 {
            color: #333;
            text-align: center;
            margin-top: 20px;
        }
        .form-container {
            width: 50%;
            margin: auto;
            padding: 20px;
            border: 1px solid #ccc;
            background-color: #fff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .form-container table {
            width: 100%;
            margin-top: 20px;
        }
        .form-container td {
            padding: 10px;
        }
        .form-container input[type="text"],
        .form-container input[type="number"],
        .form-container input[type="date"],
        .form-container textarea {
            width: 100%;
            padding: 8px;
            margin-top: 4px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .form-container input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            margin: 10px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-align: center;
        }
        .form-container input[type="submit"]:hover {
            background-color: #45a049;
        }
        .form-container td[colspan="2"] {
            text-align: center;
        }
    </style>
</head>
<body>
    <h1>Registrar Producto en la Farmacia</h1>
    <div class="form-container">
        <form action="ControladorProducto" method="post">
            <table>
                <tr>
                    <td>Nombre del Producto</td>
                    <td><input type="text" name="nombre" placeholder="Ingrese el nombre del producto" required></td>
                </tr>
                <tr>
                    <td>Precio de Venta</td>
                    <td><input type="number" step="0.01" name="precioventa" placeholder="Ingrese el precio de venta" required></td>
                </tr>
                <tr>
                    <td>Precio de Compra</td>
                    <td><input type="number" step="0.01" name="preciocompra" placeholder="Ingrese el precio de compra" required></td>
                </tr>
                <tr>
                    <td>Estado</td>
                    <td>
                        <select name="estado" required>
                            <option value="disponible">Disponible</option>
                            <option value="no_disponible">No Disponible</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Categoría</td>
                    <td><input type="text" name="categoria" placeholder="Ej: Medicamento, Suplemento, etc." required></td>
                </tr>
                <tr>
                    <td>Dosificación</td>
                    <td><input type="text" name="dosificacion" placeholder="Ej: 500mg, 20ml, etc." required></td>
                </tr>
                <tr>
                    <td>Fecha de Caducidad</td>
                    <td><input type="date" name="fechacad" required></td>
                </tr>
                <tr>
                    <td>Fabricante</td>
                    <td><input type="text" name="fabricante" placeholder="Ingrese el nombre del fabricante" required></td>
                </tr>
                <tr>
                    <td>Descripción</td>
                    <td><textarea name="descripcion" rows="4" placeholder="Describa el producto"></textarea></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Registrar Producto">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
