package Login;

import Conn.Conn;
import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        try{
            
            String email = request.getParameter("inputEMail");
            String senha = request.getParameter("inputSenha");

            HttpSession session = request.getSession();

            String sqlLogin = "SELECT * FROM cliente WHERE email_cliente = '" + email + "' AND senha_cliente = '" + senha + "'";

            Connection conexao = Conn.Conectar();
            Statement stLogin = conexao.createStatement();
            ResultSet rsLogin = stLogin.executeQuery(sqlLogin);

            if (rsLogin.next()){
                //criando uma sessao chamado logado
                session.setAttribute("erro",0);
                session.setAttribute("logado","TRUE");
                session.setAttribute("nome",rsLogin.getString("nome_cliente"));
                session.setAttribute("email",rsLogin.getString("email_cliente"));
                session.setAttribute("senha",rsLogin.getString("senha_cliente"));
                session.setAttribute("id",rsLogin.getInt("id_cliente"));
                response.sendRedirect("conta.jsp");
            }
            else{
                //criando uma sessao chamado erro
                session.setAttribute("erro",1);
                session.setAttribute("logado","FALSE");
                response.sendRedirect("login.jsp");
            }
        } catch(SQLException e){
            out.print("Erro na conexão: " + e);
        }
    }
}
