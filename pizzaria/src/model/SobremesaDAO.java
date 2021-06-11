package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class SobremesaDAO extends ConnectionFactory{
	
    public SobremesaDAO()throws Exception{}
    
    public  ArrayList<Sobremesa> getLista() throws Exception{
    	
    	Connection con = ConnectionFactory.getConnection();  
        Statement stm = con.createStatement();  
        
        String sql = "SELECT * FROM TB_Sobremesa"; 
        ResultSet rs = stm.executeQuery(sql); 
        
        ArrayList<Sobremesa> sobremesa = new ArrayList<Sobremesa>(); 
        while(rs.next()){
            Sobremesa p = new Sobremesa();
            p.setId(rs.getInt("id")); 
            p.setNome(rs.getString("nome"));
            p.setDescricao(rs.getString("descricao"));             
            p.setValor(rs.getFloat("valor"));
            p.setTipo(rs.getString("tipo"));
            p.setFoto(rs.getString("foto"));
            sobremesa.add(p);
        }
        return sobremesa;
    }   
    
}
