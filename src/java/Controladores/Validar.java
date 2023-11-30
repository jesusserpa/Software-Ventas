/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
// Importaciones necesarias para el servlet
package Controladores;
import Modelos.Usuario;
import Modelos.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// Declaración de la clase "Validar" que extiende HttpServlet
@WebServlet(name = "Validar", urlPatterns = {"/Validar"})
public class Validar extends HttpServlet {

    // Declaración de objetos Usuario y UsuarioDAO
    Usuario usuario = new Usuario();
    UsuarioDAO usuarioDAO = new UsuarioDAO();

    // Método para procesar solicitudes HTTP
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            // Genera una página HTML básica
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Validar</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Validar at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // Manejo de solicitudes HTTP GET
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    // Manejo de solicitudes HTTP POST
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Obtiene el parámetro "accion" del formulario
        String accion = request.getParameter("accion");
        
        // Si la acción es "Ingresar", realiza lo siguiente
        if (accion.equalsIgnoreCase("Ingresar")) {
            // Obtiene el valor de los campos de usuario y contraseña
            int documento = Integer.parseInt(request.getParameter("txtusuario"));
            String pass = request.getParameter("txtpassword");
            
            // Llama al método "Validar" de la clase UsuarioDAO para verificar las credenciales
            usuario = usuarioDAO.Validar(documento, pass);
            System.out.print("dato" + usuario.getNombre());
            
            // Si se encontró un usuario válido, redirecciona a una página de inicio
            if (usuario.getNombre() != null) {
                System.out.print("dato1" + usuario.getNombre());
                request.setAttribute("usuario", usuario);
                request.getRequestDispatcher("Controlador?menu=Principal").forward(request, response);
            } else {
                // Si no se encontró un usuario válido, redirecciona a la página de inicio de sesión ("index.jsp")
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        } else {
            // Si la acción no es "Ingresar", redirecciona a la página de inicio de sesión ("index.jsp")
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
