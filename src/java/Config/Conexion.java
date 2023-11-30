/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Config;

// Clase que gestiona la conexión a la base de datos.

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author SP UNIVERSO
 */

// Módulo que establece una conexión a la base de datos.

public class Conexion {
    
   Connection con;
    String url="jdbc:mysql://localhost:3306/mibdventas";
    String usuario = "root";
    String clave = "";
   
   public Connection Conexion(){
       
        try {
            
            // Cargar el controlador JDBC de MySQL
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Establece la conexión utilizando la URL, nombre de usuario y contraseña
            
            con = DriverManager.getConnection(url,usuario,clave);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        return con;
    }
 
}
