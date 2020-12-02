
package cadastro;

import Conn.Conn;
import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;


public class cadastro extends HttpServlet {

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        try{
            String nome = request.getParameter("nome");
            String email = request.getParameter("email");
            String senha = request.getParameter("senha");
            
            String sqlInsert = "INSERT INTO cliente (nome_cliente, email_cliente, senha_cliente) VALUES ('" + nome + "','" + email + "','" + senha + "')";
        
            Connection con = Conn.Conectar();
            Statement stInsert = con.prepareStatement(sqlInsert);
            stInsert.execute(sqlInsert);
            
            response.sendRedirect("login.jsp");
        } catch(SQLException e){
            out.print("Erro ao inserir os dados no banco" + e);
                    
        }
       
    }
}
