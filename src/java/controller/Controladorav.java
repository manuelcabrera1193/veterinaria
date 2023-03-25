package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.ServletContainerInitializer;
import model.varios;

/**
 *
 * @author JOSÉ
 */
public class Controladorav extends HttpServlet {
    String listar="vistas/listarv.jsp";
    String add="vistas/agregarv.jsp";
    String inicio="edicion_venta_varios.jsp";
    String edit="vistas/editarv.jsp";
    String ventas="ventavarios.jsp";
    varios v=new varios();
   
    /* <a href="vistas/listarg.jsp"></a>*/
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controladorg</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controladorg at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso="";
        String accion=request.getParameter("accion");
        if(accion.equalsIgnoreCase("listar")){
            acceso=inicio;
        }
        else if(accion.equalsIgnoreCase("add")){
            acceso=add;
        }
        else if(accion.equalsIgnoreCase("Agregar")){
            int id= Integer.parseInt(request.getParameter("id"));
            String nombre = request.getParameter("txtprod");
            Double precio = Double.parseDouble(request.getParameter("precio"));
            v.setVarios_id(id);
            v.setItemv_nombre(nombre);
            v.setTiemv_precio(precio);
            v.agregarvarios(id, nombre, precio);
            acceso=inicio;
        }else if(accion.equalsIgnoreCase("editar")){
            request.setAttribute("idv", request.getParameter("idd"));
            acceso=edit;
        }else if(accion.equalsIgnoreCase("Actualizar")){
            int id= Integer.parseInt(request.getParameter("txtid"));
            String nombre = request.getParameter("txtprod");
            Double precio = Double.parseDouble(request.getParameter("precio"));
            v.setVarios_id(id);
            v.setItemv_nombre(nombre);
            v.setTiemv_precio(precio);
            v.editarvarios(id, nombre, precio);
            acceso=inicio;
        }else if (accion.equalsIgnoreCase("Eliminar")){
            int id= Integer.parseInt(request.getParameter("id"));
            v.setVarios_id(id);
            v.eliminarvarios(id);
            acceso=inicio;
        }else if (accion.equalsIgnoreCase("Eliminar2")){
            int id= Integer.parseInt(request.getParameter("id"));
             v.setVarios_id(id);
            v.eliminarvarios(id);
            acceso=ventas;
        }
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
