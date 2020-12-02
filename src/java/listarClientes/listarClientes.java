package listarClientes;

import Conn.Conn;
import Model.Dados;
import java.sql.*;
import java.util.ArrayList;

import javax.servlet.http.*;

public class listarClientes extends HttpServlet {

    public ArrayList<Dados> listar(){
        
        ArrayList<Dados> Conteudo = new ArrayList<Dados>();
        try{
            String sqlListarClientes = "SELECT * FROM cliente";
            Connection conn = Conn.Conectar();
            Statement stListarClientes = conn.createStatement();
            ResultSet rsListarClientes = stListarClientes.executeQuery(sqlListarClientes);
            
            while(rsListarClientes.next()){
                Dados dados = new Dados();
                //dados.setId_cliente(rsListarClientes.getInt("id_cliente"));
                dados.setNome_cliente(rsListarClientes.getString("nome_cliente"));
                dados.setEmail_cliente(rsListarClientes.getString("email_cliente"));
                
                Conteudo.add(dados);
            }
        }catch(Exception e){
            System.out.print("ListarCliente::ERRO");
            System.out.print(e.getMessage());
        }
        return Conteudo;
    }
}
