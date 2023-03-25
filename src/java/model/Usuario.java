
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.LinkedList;
import java.util.List;

/**
 * @author Jose
 */
public class Usuario {
    String usuario;
    String password;

    public Usuario() {
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public void setPassword(String password) {
        this.password = password;
    } 
    
    public int autoriza(String usr, String psw) {
        try {
            Connection cnx;
            conexion c = new conexion();
            cnx = c.conecta();
            
            String query = "Select * from usuario where usuario_user='";
            query += usr + "' and usuario_password='";
            query += psw + "';";
            
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(query);
            
            LinkedList<Usuario> lista;
            lista = new LinkedList<>();
            Usuario u = new Usuario();
            
            while(resultado.next()) {
                u.usuario = resultado.getString("usuario_user");
                u.password = resultado.getString("usuario_password");
                lista.add(u);
            }
            
            
            
            cnx.close();
            
            if (lista.size()==1) {
                return 1;
            } else {
                return 0;
            }
            
        } catch(SQLException e) {
            e.getMessage();
        }
        
        return 0;             
    }

    
    public List<Usuario> listaUsuario() {
        try {
            Connection cnx;
            conexion c = new conexion();
            cnx = c.conecta();
            
            String query = "Select * from Usuario";
            
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(query);
            
            LinkedList<Usuario> lista;
            lista = new LinkedList<>();            
            
            while(resultado.next()) {
                Usuario p = new Usuario();
                p.usuario = resultado.getString("usuario_user");
                p.password = resultado.getString("usuario_password");
                lista.add(p);
            }
            cnx.close();
            
            return lista;

        } catch(SQLException e) {
            e.getMessage();
        }
        
        return null;  
    }

   
       
 
    
    public String getUsuario() {
        return usuario;
    }

    public String getPassword() {
        return password;
    }

  




    
} 
