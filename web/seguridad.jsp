<%-- 
    Document   : seguridad
    Created on : 29/11/2022, 05:08:46 AM
    Author     : JOSÉ
--%>
<%
    try {
        HttpSession sesion = request.getSession();
        String log = "0";
        log = sesion.getAttribute("logueado").toString();
        if (!log.equals("1")||log.isEmpty()) {
            request.getRequestDispatcher("noautorizado.jsp").forward(request, response);
        }
    } catch (Exception e) {
        request.getRequestDispatcher("noautorizado.jsp").forward(request, response);
    }


%>
