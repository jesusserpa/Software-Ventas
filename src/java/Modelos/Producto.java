/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelos;

/**
 *
 * @author maria
 */
// Declaración de la clase "Producto"
public class Producto {
    
    // Declaración de atributos para almacenar información sobre el producto
    int codigo;           
    String nombreProducto; 
    String descripcion;    
    String unidad;         
    String precio;         

    // Constructor
    public Producto() {
    }

    // Constructor parametrizado que inicializa los atributos del producto
    public Producto(int codigo, String nombreProducto, String descripcion, String unidad, String precio) {
        this.codigo = codigo;
        this.nombreProducto = nombreProducto;
        this.descripcion = descripcion;
        this.unidad = unidad;
        this.precio = precio;
    }

    // GETTERS
    public int getCodigo() {
        return codigo;
    }

    public String getNombreProducto() {
        return nombreProducto;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public String getUnidad() {
        return unidad;
    }

    public String getPrecio() {
        return precio;
    }

    // SETTERS 
    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public void setUnidad(String unidad) {
        this.unidad = unidad;
    }

    public void setPrecio(String precio) {
        this.precio = precio;
    }
}

