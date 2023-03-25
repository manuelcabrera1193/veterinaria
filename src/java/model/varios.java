package model;

import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.LinkedList;

/**
 * @author Jose
 */
public class varios {
    private int varios_id;
    private String itemv_nombre;
    private Double tiemv_precio;
    //private int pelicula_anio;
    
    public varios() {        
    }
    
    public List<varios> listavarioss() {
        try {
            Connection cnx;
            conexion c = new conexion();
            cnx = c.conecta();
            
            String query = "Select * from itemvarios";
            
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(query);
            
            LinkedList<varios> lista;
            lista = new LinkedList<>();            
            
            while(resultado.next()) {
                varios p = new varios();
                p.varios_id = resultado.getInt("varios_id");
                p.itemv_nombre = resultado.getString("itemv_nombre");
                p.tiemv_precio = resultado.getDouble("tiemv_precio");
                //p.pelicula_anio = resultado.getInt("pelicula_anio");
                lista.add(p);
            }
            cnx.close();
            
            return lista;

        } catch(SQLException e) {
            e.getMessage();
        }
        
        return null;  
    }

    public void agregarvarios(int id, String nombre, Double precio) {
        try {
            Connection cnx;
            conexion c = new conexion();
            cnx = c.conecta();
            
            String query = "insert into itemvarios values(?,?,?)";
            
            PreparedStatement sentencia = cnx.prepareStatement(query);
            sentencia.setInt(1, id);
            sentencia.setString(2, nombre);
            sentencia.setDouble(3, precio);
            sentencia.executeUpdate();
            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            e.getMessage();
        }      
    }

    public void setVarios_id(int varios_id) {
        this.varios_id = varios_id;
    }

    public void setItemv_nombre(String itemv_nombre) {
        this.itemv_nombre = itemv_nombre;
    }

    public void setTiemv_precio(Double tiemv_precio) {
        this.tiemv_precio = tiemv_precio;
    }
    
    public void muestravarios(int id) {
        try {
            Connection cnx;
            conexion c = new conexion();
            cnx = c.conecta();
            
            String query = "Select * from itemvarios where varios_id=" + id + ";";
            
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(query);
            
            while(resultado.next()) {
                this.varios_id = resultado.getInt("varios_id");
                this.itemv_nombre = resultado.getString("itemv_nombre");
                this.tiemv_precio = resultado.getDouble("tiemv_precio");
            }
            cnx.close();            
        } catch(SQLException e) {
            e.getMessage();
                    
        }
    }
    
    public void editarvarios(int id, String nombre, Double precio) {
        try {
            Connection cnx;
            conexion c = new conexion();
            cnx = c.conecta();
            
            String query = "update itemvarios set itemv_nombre=?, tiemv_precio=? ";
            query += " where varios_id=?";
            
            PreparedStatement sentencia = cnx.prepareStatement(query);
            sentencia.setString(1, nombre);
            sentencia.setDouble(2, precio);
            sentencia.setInt(3, id);            
            sentencia.executeUpdate();
            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            e.getMessage();
        }      
    }

    public void eliminarvarios(int id) {
        try {
            Connection cnx;
            conexion c = new conexion();
            cnx = c.conecta();
            
            String query = "delete from itemvarios where varios_id=?";
            
            PreparedStatement sentencia = cnx.prepareStatement(query);
            sentencia.setInt(1, id);            
            sentencia.executeUpdate();
            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            e.getMessage();
        }      
    }
    

    
    public int getvarios_id() {
        return varios_id;
    }

    public String getvarios_nombre() {
        return itemv_nombre;
    }

    public Double getvarios_precio() {
        return tiemv_precio;
    }

    
}

