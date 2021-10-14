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
public class Asistencia {
    private int codigo;
    private Trabajador trabajador;
    private Date horaentrada;
    private Date horasalida;

    public Asistencia() {
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

    public Date getHoraentrada() {
        return horaentrada;
    }

    public void setHoraentrada(Date horaentrada) {
        this.horaentrada = horaentrada;
    }

    public Date getHorasalida() {
        return horasalida;
    }

    public void setHorasalida(Date horasalida) {
        this.horasalida = horasalida;
    }

    @Override
    public String toString() {
        return "Asistencia{" + "codigo=" + codigo + ", trabajador=" + trabajador + ", horaentrada=" + horaentrada + ", horasalida=" + horasalida + '}';
    }
    
    
    
}
