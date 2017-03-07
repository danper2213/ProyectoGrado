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
 * @author Daniel Perez
 */
public class TrabajoGrado {
    
    private String titulo;
    private String planteamiento;
    private int director;
    private int jurado;
    private Date fecha_inicio;
    private Date fecha_fin;
    

    public TrabajoGrado(String titulo, String planteamiento, int director, int jurado) {
        this.titulo = titulo;
        this.planteamiento = planteamiento;
        this.director = director;
        this.jurado = jurado;
        this.fecha_inicio = new Date(System.currentTimeMillis());
        this.fecha_fin = new Date(System.currentTimeMillis() + TimeUnit.DAYS.toMillis(365));
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getPlanteamiento() {
        return planteamiento;
    }

    public void setPlanteamiento(String planteamiento) {
        this.planteamiento = planteamiento;
    }

    public int getDirector() {
        return director;
    }

    public void setDirector(int director) {
        this.director = director;
    }

    public int getJurado() {
        return jurado;
    }

    public void setJurado(int jurado) {
        this.jurado = jurado;
    }

    public Date getFecha_inicio() {
        return fecha_inicio;
    }

    public void setFecha_inicio(Date fecha_inicio) {
        this.fecha_inicio = fecha_inicio;
    }

    public Date getFecha_fin() {
        return fecha_fin;
    }

    public void setFecha_fin(Date fecha_fin) {
        this.fecha_fin = fecha_fin;
    }
    
    
    
    
    
}
