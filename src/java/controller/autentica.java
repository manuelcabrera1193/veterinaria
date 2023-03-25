/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Usuario;
/**
/**
 *
 * @author JOSÉ
 */
@WebServlet(name = "autentica", urlPatterns = {"/autentica"})
public class autentica extends HttpServlet {    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //try{
        String usr = request.getParameter("usuario");
        String psw = request.getParameter("password");
        
        
        /*Usuario us = new Usuario();
        int log = us.autoriza(usr, psw);
        if (log==1) {
            HttpSession sesion = request.getSession();
            sesion.setAttribute("logueado", "1");
            request.getRequestDispatcher("indexIntranet.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("indexIntranet.jsp?nolog=1").forward(request, response);
        } */
        /*}catch(Exception e){
            e.getMessage();
        }*/
        
        
        
    }
}



 