package ListarFilmes;

import Conn.Conn;
import Model.Dados;
import java.sql.*;
import java.util.ArrayList;

import javax.servlet.http.*;

public class ListarFilmes extends HttpServlet {

    public ArrayList<Dados> listarfilme(){
        
        ArrayList<Dados> ConteudoFilme = new ArrayList<Dados>();
        try{
            String sqlListarFilmes = "SELECT * FROM filme";
            Connection conn = Conn.Conectar();
            Statement stListarFilmes = conn.createStatement();
            ResultSet rsListarFilmes = stListarFilmes.executeQuery(sqlListarFilmes);
            
            while(rsListarFilmes.next()){
                Dados dados = new Dados();
                dados.setId_filme(rsListarFilmes.getInt("id_filme"));
                dados.setImg_filme(rsListarFilmes.getString("img_filme"));
                dados.setNome_filme(rsListarFilmes.getString("nome_filme"));
                dados.setPreco_filme(rsListarFilmes.getFloat("preco_filme"));
                dados.setFilme_desc(rsListarFilmes.getString("filme_desc"));
                
                ConteudoFilme.add(dados);
            }
        }catch(Exception e){
            System.out.print("ListarFilme::ERRO");
            System.out.print(e.getMessage());
        }
        return ConteudoFilme;
    }
}
