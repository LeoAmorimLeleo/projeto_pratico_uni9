package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class PizzaDAO extends ConnectionFactory{
	
    public PizzaDAO()throws Exception{}
    
    public  ArrayList<Pizza> getLista() throws Exception{
    	
    	Connection con = ConnectionFactory.getConnection();  
        Statement stm = con.createStatement();  
        
        String sql = "SELECT * FROM TB_Pizza"; 
        ResultSet rs = stm.executeQuery(sql); 
        
        ArrayList<Pizza> pizza = new ArrayList<Pizza>(); 
        while(rs.next()){
            Pizza p = new Pizza();
            p.setId(rs.getInt("id")); 
            p.setSabor(rs.getString("sabor"));
            p.setDescricao(rs.getString("descricao"));             
            p.setTamanho(rs.getString("tamanho"));
            p.setValor(rs.getFloat("valor"));
            p.setTipo(rs.getString("tipo"));
            p.setFoto(rs.getString("foto"));
            pizza.add(p);
        }
        return pizza;
    }    

	

}
