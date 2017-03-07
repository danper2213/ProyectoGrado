/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package modelo;

import conexionBD.ConexionBD;
import java.sql.ResultSet;

/**
 *
 * @author Andres Mauricio
 */
public class Servicios 
{
    private ConexionBD conexion;

    public Servicios() 
    {
        conexion = new ConexionBD();
    }
    
    public int registrarPropuesta( PropuestaGrado p ) 
    {
        String sql = "INSERT INTO propuesta( nombre, codigo, programa, semestre, tematica, modalidad, fecha_inicio , fecha_fin ) "
                   + "VALUES ('" + p.getNombre() + "', " + 
                                  p.getCodigo()+ ", " + 
                                  p.getPrograma() + ", " + 
                                  p.getSemestre() +  ",'" +
                                  p.getTematica() + "'," +
                                  p.getModalidad() + ",'" +
                                  p.getFecha_inicio() + "','" +
                                  p.getFecha_vencimiento() + "')"; 
                                          
        return  conexion.executeUpdateStatement( sql );
        
    }
     public int registrarTrabajo( TrabajoGrado t ) 
    {
        String sql = "INSERT INTO proyecto( titulo, planteamiento, director, jurado, fecha_inicio , fecha_fin ) "
                   + "VALUES ('" + t.getTitulo() + "', '" + 
                                  t.getPlanteamiento()+ " ', " + 
                                  t.getDirector()+ ", " + 
                                  t.getJurado()+  ",'" + 
                                  t.getFecha_inicio() + "','" +
                                  t.getFecha_fin()+ "')"; 
                                          
        return  conexion.executeUpdateStatement( sql );
        
    }
     
    public ResultSet listarPropuestas(){
        
        String sql = "SELECT * FROM propuesta";
        return conexion.executeQueryStatement(sql);
    } 
    
    public ResultSet listarPropuestaPorEstado(int pEstado){
        
        String sql = "SELECT * FROM propuesta WHERE estado =" + pEstado;
        return conexion.executeQueryStatement(sql);
    }
    
    
   
    
}
