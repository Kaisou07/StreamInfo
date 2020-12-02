package desc_filme;
import Conn.Conn;
import Model.Dados;
import java.io.*;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class desc_filme extends HttpServlet {

    public ArrayList<Dados> listar(Integer id){
        
        ArrayList<Dados> Conteudo = new ArrayList<Dados>();
        
        try{
            String sqllistaFilme = "SELECT * FROM filme WHERE id_filme =" + id;
            Connection conn = Conn.Conectar();
            Statement stlistaFilme = conn.createStatement();
            ResultSet rslistaFilme = stlistaFilme.executeQuery(sqllistaFilme);
            
            if(rslistaFilme.next()){
                   Dados dados = new Dados();
                dados.setId_filme(rslistaFilme.getInt("id_filme"));
                dados.setImg_filme(rslistaFilme.getString("img_filme"));
                dados.setNome_filme(rslistaFilme.getString("nome_filme"));
                dados.setPreco_filme(rslistaFilme.getFloat("preco_filme"));
                dados.setFilme_desc(rslistaFilme.getString("filme_desc"));
                
                Conteudo.add(dados);
            }
            rslistaFilme.close();
            conn.close();
            
            return Conteudo;
        }
        catch(Exception e){
            System.out.print("Erro ao encontrar filme: ");
            System.out.print(e.getMessage());
        }
        return null;
    }

}
