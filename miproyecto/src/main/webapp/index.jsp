<%-- 
    Document   : index
    Created on : 2/05/2025, 7:31:48 a. m.
    Author     : Personal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
        <title>Sistema de Registro de Usuarios</title>
        <style>
            body{ 
                font-family: Arial, 
                sans-serif; 
                margin: 0; 
                padding: 20px; 
                line-height: 1.6;}
            h1 {
                color: #333;}
            .container{
                max-width: 800px;
                margin: 0 auto;
            }
            .menu {
                display: flex;
                gap: 20px;
                margin: 20px 0;
            }
            .menu a {
                padding: 10px 15px; 
                background-color: #4CAF50;
                color: white;
                text-decoration: none;
                border-radius: 4px;
            }
            .menua a:hover {
                background-color: #45a049;
            }
        </style>
    </head>
    <body>
        <div class=""container>
        <h1>Biemvenido al Sistema de Registro de Usuarios</h1>
        <p>Este sistema permite registrar nuevos usuarios y consultar la información de usuarios registrados.</p>
        <div class="menu">
            <a href="registro">Registrar Usuario</a>
            <a href="consulta">Consultar Usuario</a>
        </div>
        <hr>
        <h2>Información del Sistema</h2>
        <p>
            Este sistema es un ejemplo simple que muestra cómo utilizar:
        <ul>
            <li>Servlets para procesar formularios</li>
            <li>JSP para renderizar páginas dinámicas</li>
            <li>Métodos HTTP GET y POST</li>
            <li>Sesiones para almacenar datos</li>
        </ul>
        </p>
        <div/>
    </body>
</html>
