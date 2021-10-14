/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.edu.up.modelo;

/**
 *
 * @author Angel
 */
public class SalarioExtra {
    private int codigo;
    private Trabajador trabajador;
    private double decimotercero;    
    private double decimocuarto;
    private double utilidades;
    private double fondosR;

    public SalarioExtra() {
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

    public double getDecimotercero() {
        return decimotercero;
    }

    public void setDecimotercero(double decimotercero) {
        this.decimotercero = decimotercero;
    }

    public double getDecimocuarto() {
        return decimocuarto;
    }

    public void setDecimocuarto(double decimocuarto) {
        this.decimocuarto = decimocuarto;
    }

    public double getUtilidades() {
        return utilidades;
    }

    public void setUtilidades(double utilidades) {
        this.utilidades = utilidades;
    }

    public double getFondosR() {
        return fondosR;
    }

    public void setFondosR(double fondosR) {
        this.fondosR = fondosR;
    }

    @Override
    public String toString() {
        return "SalarioExtra{" + "codigo=" + codigo + ", trabajador=" + trabajador + ", decimotercero=" + decimotercero + ", decimocuarto=" + decimocuarto + ", utilidades=" + utilidades + ", fondosR=" + fondosR + '}';
    }
    
    
}
