/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.miproyecto.servlets;

import com.miproyecto.modelo.Usuario;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Personal
 */
@WebServlet(name = "RegistroServlet", urlPatterns = {"/registro"})
public class RegistroServlet  extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        Usuario nuevoUsuario = new Usuario(nombre, apellido, email, password);
        
        HttpSession session = request.getSession();
        
        List<Usuario> listaUsuarios = (List<Usuario>) session.getAttribute("ListaUsuarios");
        if (listaUsuarios == null){
            listaUsuarios = new ArrayList<>();
            session.setAttribute("listaUsuarios", listaUsuarios);
        }
        
        listaUsuarios.add(nuevoUsuario);
        
        request.setAttribute("mensaje", "¡Usuario registrado con éxito!");
        
        request.getRequestDispatcher("/registro.jsp").forward(request, response);
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.getRequestDispatcher("/registro.jsp").forward(request, response);
    }
}
