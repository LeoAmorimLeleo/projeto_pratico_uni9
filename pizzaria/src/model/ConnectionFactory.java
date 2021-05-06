package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConnectionFactory {
      
    Connection con;
    String url="jdbc:mysql://projeto-uni9.cki0glwkmmjw.us-east-1.rds.amazonaws.com";
    String user="admin";
    String pass="0Byak63qg%!jh";
    public Connection ConectaMySql(String banco) throws SQLException {
        try{
            Class.forName("com.mysql.jdbc.Driver");            
            try{
               con=DriverManager.getConnection(url,user,pass);   
            } catch (SQLException ex) {
                System.out.println("Caminho, senha ou usuarios incorrestos");
            }
                       
        } catch (ClassNotFoundException ex){
            System.out.printf("Driver não encontrado");
        }
        return con;
    }
    
}