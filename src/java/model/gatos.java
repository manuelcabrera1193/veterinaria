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
public class gatos {
    private int gatos_id;
    private String itemg_nombre;
    private Double tiemg_precio;
    //private int pelicula_anio;

    public void setGatos_id(int gatos_id) {
        this.gatos_id = gatos_id;
    }

    public void setItemg_nombre(String itemg_nombre) {
        this.itemg_nombre = itemg_nombre;
    }

    public void setTiemg_precio(Double tiemg_precio) {
        this.tiemg_precio = tiemg_precio;
    }
    
    public gatos() {        
    }
    
    public List<gatos> listagatoss() {
        try {
            Connection cnx;
            conexion c = new conexion();
            cnx = c.conecta();
            
            String query = "Select * from itemgatos";
            
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(query);
            
            LinkedList<gatos> lista;
            lista = new LinkedList<>();            
            
            while(resultado.next()) {
                gatos p = new gatos();
                p.gatos_id = resultado.getInt("gatos_id");
                p.itemg_nombre = resultado.getString("itemg_nombre");
                p.tiemg_precio = resultado.getDouble("tiemg_precio");
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

    public void agregargatos(int id, String nombre, Double precio) {
        try {
            Connection cnx;
            conexion c = new conexion();
            cnx = c.conecta();
            
            String query = "insert into itemgatos values(?,?,?)";
            
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
    
    public void muestragatos(int id) {
        try {
            Connection cnx;
            conexion c = new conexion();
            cnx = c.conecta();
            
            String query = "Select * from itemgatos where gatos_id=" + id + ";";
            
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(query);
            
            while(resultado.next()) {
                this.gatos_id = resultado.getInt("gatos_id");
                this.itemg_nombre = resultado.getString("itemg_nombre");
                this.tiemg_precio = resultado.getDouble("tiemg_precio");
            }
            cnx.close();            
        } catch(SQLException e) {
            e.getMessage();
                    
        }
    }
    
    public void editargatos(int id, String nombre, Double precio) {
        try {
            Connection cnx;
            conexion c = new conexion();
            cnx = c.conecta();
            
            String query = "update itemgatos set itemg_nombre=?, tiemg_precio=? ";
            query += " where gatos_id=?";
            
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

    public void eliminargatos(int id) {
        String query = "delete from itemgatos where gatos_id="+id;
        try {
            Connection cnx;
            conexion c = new conexion();
            cnx = c.getConnection();
            PreparedStatement sentencia = cnx.prepareStatement(query);
            sentencia.executeUpdate();
           
        } catch (SQLException e) {
            e.getMessage();
        }      
    }
    

    
    public int getgatos_id() {
        return gatos_id;
    }

    public String getgatos_nombre() {
        return itemg_nombre;
    }

    public Double getgatos_precio() {
        return tiemg_precio;
    }

    
}