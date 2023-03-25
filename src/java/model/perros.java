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
public class perros {
    private int perros_id;
    private String itemp_nombre;
    private Double tiemp_precio;
    //private int pelicula_anio;
    
    public perros() {        
    }
    
    public List<perros> listaperross() {
        try {
            Connection cnx;
            conexion c = new conexion();
            cnx = c.conecta();
            
            String query = "Select * from itemperros";
            
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(query);
            
            LinkedList<perros> lista;
            lista = new LinkedList<>();            
            
            while(resultado.next()) {
                perros p = new perros();
                p.perros_id = resultado.getInt("perros_id");
                p.itemp_nombre = resultado.getString("itemp_nombre");
                p.tiemp_precio = resultado.getDouble("tiemp_precio");
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

    public void agregarperros(int id, String nombre, Double precio) {
        try {
            Connection cnx;
            conexion c = new conexion();
            cnx = c.conecta();
            
            String query = "insert into itemperros values(?,?,?)";
            
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
    
    public void muestraperros(int id) {
        try {
            Connection cnx;
            conexion c = new conexion();
            cnx = c.conecta();
            
            String query = "Select * from itemperros where perros_id=" + id + ";";
            
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(query);
            
            while(resultado.next()) {
                this.perros_id = resultado.getInt("perros_id");
                this.itemp_nombre = resultado.getString("itemp_nombre");
                this.tiemp_precio = resultado.getDouble("tiemp_precio");
            }
            cnx.close();            
        } catch(SQLException e) {
            e.getMessage();
                    
        }
    }

    public void setPerros_id(int perros_id) {
        this.perros_id = perros_id;
    }

    public void setItemp_nombre(String itemp_nombre) {
        this.itemp_nombre = itemp_nombre;
    }

    public void setTiemp_precio(Double tiemp_precio) {
        this.tiemp_precio = tiemp_precio;
    }
    
    public void editarperros(int id, String nombre, Double precio) {
        try {
            Connection cnx;
            conexion c = new conexion();
            cnx = c.conecta();
            
            String query = "update itemperros set itemp_nombre=?, tiemp_precio=? ";
            query += " where perros_id=?";
            
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

    public void eliminarperros(int id) {
        try {
            Connection cnx;
            conexion c = new conexion();
            cnx = c.conecta();
            
            String query = "delete from itemperros where perros_id=?";
            
            PreparedStatement sentencia = cnx.prepareStatement(query);
            sentencia.setInt(1, id);            
            sentencia.executeUpdate();
            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            e.getMessage();
        }      
    }
    

    
    public int getperros_id() {
        return perros_id;
    }

    public String getperros_nombre() {
        return itemp_nombre;
    }

    public Double getperros_precio() {
        return tiemp_precio;
    }

    
}

