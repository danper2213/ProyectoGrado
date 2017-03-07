/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package modelo;

import java.sql.Date;
import java.util.concurrent.TimeUnit;

/**
 *
 * @author Andres Mauricio
 */
public class PropuestaGrado 
{
    private int codigo;
    private String nombre;
    private int programa;
    private int semestre;    
    private String tematica;
    private int modalidad;
    private Date fecha_inicio;
    private Date fecha_vencimiento;
    
    
    public PropuestaGrado( String nombre, int codigo, int programa, int semestre, String tematica, int modalidad) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.programa = programa;
        this.semestre = semestre;
        this.tematica = tematica;
        this.modalidad = modalidad;
        this.fecha_inicio = new Date(System.currentTimeMillis());
        this.fecha_vencimiento = new Date(System.currentTimeMillis() + TimeUnit.DAYS.toMillis(365));
    }
    
    public String getTematica() {
        return tematica;
    }

    public void setTematica(String tematica) {
        this.tematica = tematica;
    }

    public int getModalidad() {
        return modalidad;
    }

    public void setModalidad(int modalidad) {
        this.modalidad = modalidad;
    }

    public Date getFecha_inicio() {
        return fecha_inicio;
    }

    public void setFecha_inicio(Date fecha_inicio) {
        this.fecha_inicio = fecha_inicio;
    }

    public Date getFecha_vencimiento() {
        return fecha_vencimiento;
    }

    public void setFecha_vencimiento(Date fecha_vencimiento) {
        this.fecha_vencimiento = fecha_vencimiento;
    }      
    
    public int getCodigo() {
        return codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public int getPrograma() {
        return programa;
    }
    
    public int getSemestre() {
        return semestre;
    }
}
