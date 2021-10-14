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
public class HorasExtras {
    private int codigo;
    private Trabajador trabajador;
    private Date horainicio;
    private Date horasalida;

    public HorasExtras() {
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

    public Date getHorainicio() {
        return horainicio;
    }

    public void setHorainicio(Date horainicio) {
        this.horainicio = horainicio;
    }

    public Date getHorasalida() {
        return horasalida;
    }

    public void setHorasalida(Date horasalida) {
        this.horasalida = horasalida;
    }

    @Override
    public String toString() {
        return "HorasExtras{" + "codigo=" + codigo + ", trabajador=" + trabajador + ", horainicio=" + horainicio + ", horasalida=" + horasalida + '}';
    }
        
    
}
