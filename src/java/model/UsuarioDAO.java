/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author JOSÉ
 */
public class UsuarioDAO implements Validar{
    Connection con;
    conexion cn=new conexion();
    PreparedStatement ps;
    ResultSet rs;

    
    @Override
    public int validar(Usuario user) {
        int r=0;
        String sql="Select * from Usuario where usuario_user=? and usuario_password=?";
        try{
            con = cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.setString(1, user.getUsuario());
            ps.setString(2, user.getPassword());
            rs = ps.executeQuery();
            while(rs.next()){
                r=r+1;
                user.setUsuario(rs.getString("usuario_user"));
                user.setPassword(rs.getString("usuario_password"));
            }
            if(r==1){
                return 1;
            }else{
                return 0;
            }
        } catch (Exception e){
            return 0;
        }
    }
    
}
