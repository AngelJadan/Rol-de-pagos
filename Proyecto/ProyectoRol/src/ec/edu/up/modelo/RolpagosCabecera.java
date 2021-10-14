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
public class RolpagosCabecera {
    
    private int codigo;
    private Trabajador trabajador;
    private double seguro;
    private double subtotal;
    private double total;
    
    public RolpagosCabecera(){
        
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

    public double getSeguro() {
        return seguro;
    }

    public void setSeguro(double seguro) {
        this.seguro = seguro;
    }

    public double getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(double subtotal) {
        this.subtotal = subtotal;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "Rolpagos{" + "codigo=" + codigo + ", trabajador=" + trabajador + ", seguro=" + seguro + ", subtotal=" + subtotal + ", total=" + total + '}';
    }
    
    
}
