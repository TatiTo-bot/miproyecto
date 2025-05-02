<%-- 
    Document   : consulta
    Created on : 2/05/2025, 7:34:23 a. m.
    Author     : Personal
--%>

<%@page import="java.util.List"%>
<%@page import="com.miproyecto.modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
        <title>Consulta de Usuarios</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 20px;
                line-height: 1.6;
            }
            h1, h2 {
                color: #333;
            }
            .container {
                max-width: 800px;
                margin: 0 auto;
            }
            .form-group {
                margin-bottom: 15px;
            }
            .form-group label {
                display: block; 
                margin-bottom: 5px; 
                font-weight: bold;
            }
            .form-group input {
                width: 70%;
                padding: 8px;
                box-sizing: border-box;
                border: 1px solid #ddd; 
                border-radius: 4px;
            }
            btn {
                padding: 8px 15px;
                background-color: #4CAF50;
                color: white;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }
            btn:hover {
                background-color: #45a049;
            }
            .menu {
                margin: 20px 0;
            }
            .menu a {
                color: #4CAF50;
                text-decoration: none;
            }
            .menu a:hover {
                text-decoration: underline;
            }
            table {
                width: 100%;
                border-collapse: collapse;
                margin: 20px 0;
            }
            table, th, td {
                border:1px solid #ddd;
            }
            th, td {
                padding: 8px;
                text-align: left;
            }
            th {
                background-color: #f2f2f2;
            }
            .results {
                margin: 20px;
                padding: 15px;
                border: 1px solid #ddd;
                border-radius: 4px;
            }
            .not-found {
                color: #721c24;
                background-color: #f8d7da;
                padding: 10px;
                border-radius: 4px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Consulta de Usuario</h1>
            
            <form action="consulta" method="GET">
                <div class="form-group">
                <label for="email">Buscar usuario por email:</label>
                <input type="email" id="email" name="email" required>
                <button type="submit" class="btn">Buscar</button>
            </div>
        </form>
        <% if (request.getAttribute("busquedaRealizada")!=null) { %>
            <div class="results">
                <h2>Resultado de la búsqueda</h2>
            
                <% if (request.getAttribute("usuarioBuscado") != null) {%>
                    <% Usuario usuario = (Usuario) request.getAttribute("usuarioBuscado"); %>
                    <table>
                        <tr>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Email</th>
                        </tr>
                        <tr>
                            <td><%= usuario.getNombre() %></td>
                            <td><%= usuario.getApellido() %></td>
                            <td><%= usuario.getEmail() %></td>
                        </tr>
                    </table>
                <% } else { %>
                <div class="not-found">
                    No se encontró ningún usuario con el email especificado.
                </div>
            <% } %>
        </div>
        <% } %>
        
        <h2>Lista de Usuarios Registardos</h2>
        <%
            List<Usuario> listaUsuarios = (List<Usuario>) session.getAttribute(""listaUsuarios);
            if (listaUsuarios != null && !listaUsuarios.isEmpity()){
            %>
            <table>
                <tr>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Email</th>
                </tr>
                <% for (Usuario usuario : listaUsuarios) {%>
                <tr>
                    <td><%= usuario.getNombre() %></td>
                    <td><%= usuario.getApellido() %></td>
                    <td><%= usuario.getEmail() %></td>
                </tr>
                <% } %>
            </table>
            <% } else { %>
            <p> No hay usuarios registrados en el sistema.</p>
            <% } %>
            
            <div class="menu">
                <a href="index.jsp">Volver a Inicio</a>
                <a href="registro">Registrar Usuario</a>
            </div>
        </div>
    </body>
</html>
