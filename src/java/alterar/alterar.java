package alterar;

import Conn.Conn;
import java.io.*;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class alterar extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter out = response.getWriter();
        try {
            String id = request.getParameter("txtID");
            String nome = request.getParameter("txtNome");
            String email = request.getParameter("txtEmail");

            if ((request.getParameter("txtSenha").isEmpty())) {
                String sqlUpdate = "UPDATE cliente SET nome_cliente = '" + nome + "' ,email_cliente = '" + email + "' WHERE id_cliente = " + id;
                Connection con = Conn.Conectar();
                Statement stUpdate = con.prepareStatement(sqlUpdate);
                stUpdate.execute(sqlUpdate);
            } else {
                String senha = request.getParameter("txtSenha");
                String sqlUpdate = "UPDATE cliente SET nome_cliente = '" + nome + "' ,email_cliente = '" + email + "', senha_cliente = '" + senha + "' WHERE id_cliente = " + id;
                Connection con = Conn.Conectar();
                Statement stUpdate = con.prepareStatement(sqlUpdate);
                stUpdate.execute(sqlUpdate);
                response.sendRedirect("login.jsp");       
            }

        } catch (SQLException ex) {
            Logger.getLogger(alterar.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
