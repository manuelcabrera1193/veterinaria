package controller;

import java.io.IOException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.gatos;
import model.perros;
import model.varios;

/**
 * @author Jose
 */
@WebServlet(name = "procesa", urlPatterns = {"/procesa"})
public class procesa extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id=0;
        String producto="";
        Double Precio=0.0;
        gatos g = new gatos();
        String pag = request.getParameter("pagina");
        id = Integer.parseInt(request.getParameter("id"));
        if (pag.equals("agregar")||pag.equals("editar")) {
            Precio = Double.parseDouble(request.getParameter("Precio"));
            producto = request.getParameter("producto");
            //sinopsis = request.getParameter("sinopsis");
        }
        String pagina = pag + ".jsp";    
        if (pag.equals("edicion_venta_gatos") || pag.equals("edicion_venta_perros") || pag.equals("edicion_venta_varios")) {
            request.getRequestDispatcher(pagina).forward(request, response);
        } else if (pag.equals("agregar")) {
            g.agregargatos(id, producto, Precio);
            request.getRequestDispatcher("vistas/agregarg.jsp").forward(request, response);
        } else if (pag.equals("editar")) {
            g.editargatos(id, producto, Precio);
            request.getRequestDispatcher("edicion_venta_gatos.jsp").forward(request, response);
        } else if (pag.equals("eliminar")) {
            g.eliminargatos(id);
            request.getRequestDispatcher("edicion_venta_gatos.jsp").forward(request, response);
        }        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String pag = request.getParameter("pagina");
        String produc = request.getParameter("Productos");
        String pagina = pag + ".jsp";    
        if (!pag.equals("agregar")) {
            pagina += "?gato=" + produc;
        }
        if (pag.equals("agregar") || pag.equals("editar") || pag.equals("eliminar")) {
            request.getRequestDispatcher(pagina).forward(request, response);
        } 
    }


}
