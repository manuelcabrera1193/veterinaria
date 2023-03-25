/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Interfaces;
import model.gatos;
import java.util.List;
/**
 *
 * @author JOSÉ
 */
public interface CRUD {
    public List listar();
    public gatos list(int id);
    public boolean add(gatos g);
    public boolean edit(gatos g);
    public boolean eliminar(int id);
}
