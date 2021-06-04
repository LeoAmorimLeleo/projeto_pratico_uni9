package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class LoginDao {
	
	public UsuarioBean autenticar(String email) throws Exception {
		Connection con =ConnectionFactory.getConnection();
        PreparedStatement ps = null;
        try {
            ps = con.prepareStatement("select * from TB_Cliente where email=?");            
            ps.setString(1, email);         
            ResultSet rs = ps.executeQuery();

            UsuarioBean usuario = new UsuarioBean(); 
         
	       	if(rs.next()){
	       	   do{
	       		   usuario.setId(rs.getInt("id"));
	       		   usuario.setNome(rs.getString("nome"));
	       		   usuario.setSenha(rs.getString("senha"));  
	       	   }while(rs.next());
	       	}else{
	       		throw new Exception("E-mail não cadastrado");
	       	}	   
	       	
            return usuario;               
        } catch (Exception e) {
        	e.printStackTrace();
        	throw new Exception(e.toString());
        } finally {
        	con.close();
        }
	}
}
