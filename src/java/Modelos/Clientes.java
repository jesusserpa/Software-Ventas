/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelos;

/**
 *
 * @author SP UNIVERSO
 */
// Declaración de la clase "Clientes"
public class Clientes {
    
    // Declaración de atributos de la clase
    int id;
    int documento;
    String nombre, correo, estado, password, rol;

    // Constructor predeterminado
    public Clientes() {
    }

    // Constructor parametrizado que inicializa los atributos de la clase
    public Clientes(int id, int documento, String nombre, String correo, String estado, String password, String rol) {
        this.id = id;
        this.documento = documento;
        this.nombre = nombre;
        this.correo = correo;
        this.estado = estado;
        this.password = password;
        this.rol = rol;
    }

    // GETTERS
    public int getId() {
        return id;
    }

    public int getDocumento() {
        return documento;
    }

    public String getNombre() {
        return nombre;
    }

    public String getCorreo() {
        return correo;
    }

    public String getEstado() {
        return estado;
    }

    public String getPassword() {
        return password;
    }

    public String getRol() {
        return rol;
    }

    // SETTERS
    public void setId(int id) {
        this.id = id;
    }

    public void setDocumento(int documento) {
        this.documento = documento;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }
}

