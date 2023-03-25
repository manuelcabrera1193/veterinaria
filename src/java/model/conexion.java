
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * @author Juan
 */
public class conexion {
    private Connection cnx;
    Connection con;
    
    public Connection conecta() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String user = "root";
            String password = "admin";
            String url = "jdbc:mysql://localhost:3306/veterinaria";
            cnx = DriverManager.getConnection(url, user, password);
            return cnx;
        } catch(SQLException | ClassNotFoundException e) {
            e.getMessage();
        }
        return null;
    }
    
    public int pruebaConexion() {
        Connection c = conecta();
        if (c!=null) {
            return 1;
        } else {
            return 0;
        }
    }
    
    public Connection getConnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/veterinaria","root","12345678");
        }catch (Exception e){
            
        }
        return con;
    }
    
}
