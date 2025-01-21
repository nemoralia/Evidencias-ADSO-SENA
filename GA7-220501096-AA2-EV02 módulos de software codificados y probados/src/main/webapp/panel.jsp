<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Panel - NEMORALIA</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@picocss/pico@2/css/pico.min.css">
        <style>
            body {
                text-align: center;
                margin: 0 auto;
                max-width: 800px;
            }
        </style>
    </head>
    <body>
        <%
            if (session.getAttribute("usuario") == null) {
                response.sendRedirect("index.html");
                return;
            }
        %>
        <header>
            <h1>Bienvenido, <%= session.getAttribute("usuario") %>!</h1>
            <nav>
                <ul>
                    <li><a href="productos.jsp">Inicio</a></li>
                    <li><a href="pedidos.jsp">Login</a></li>
                    <li><a href="reportes.jsp">Carrito de compras</a></li>
                </ul>
            </nav>
        </header>
        <main>
            <p>Proximamente mas funcionalidades, atentamente el equipo de NEMORALIA.</p>
            <form action="logout" method="post">
                <button type="submit">Cerrar sesión</button>
            </form>
        </main>
    </body>
</html>
