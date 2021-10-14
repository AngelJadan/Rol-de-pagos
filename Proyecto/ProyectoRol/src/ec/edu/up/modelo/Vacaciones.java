/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.edu.up.modelo;

import java.util.Date;

/**
 *
 * @author Angel
 */
public class Vacaciones {
    
    private int codigo;
    private Trabajador trabajador;
    private Date fechainicio;    
    private Date fechafin;
    
    public Vacaciones(){
        
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public Trabajador getTrabajador() {
        return trabajador;
    }

    public void setTrabajador(Trabajador trabajador) {
        this.trabajador = trabajador;
    }

    public Date getFechainicio() {
        return fechainicio;
    }

    public void setFechainicio(Date fechainicio) {
        this.fechainicio = fechainicio;
    }

    public Date getFechafin() {
        return fechafin;
    }

    public void setFechafin(Date fechafin) {
        this.fechafin = fechafin;
    }

    @Override
    public String toString() {
        return "Vacaciones{" + "codigo=" + codigo + ", trabajador=" + trabajador + ", fechainicio=" + fechainicio + ", fechafin=" + fechafin + '}';
    }
    
}
