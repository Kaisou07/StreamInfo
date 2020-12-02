package Conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conn{
    public static Connection Conectar() throws SQLException {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost:3306/clark_stream?serverTimezone=GMT", "root", "");
        }
        catch(ClassNotFoundException e){
            System.out.print("Erro ao conectar com o Banco de dados: " + e);
        }
        return null;
    }
}
