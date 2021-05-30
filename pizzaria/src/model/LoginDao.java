package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class LoginDao {
	
	public UsuarioBean autenticar(String email, String senha) throws Exception {
		Connection con =ConnectionFactory.getConnection();
        PreparedStatement ps = null;
        try {
            ps = con.prepareStatement("select * from TB_Cliente where email=? and senha=?");            
            ps.setString(1, email);
            ps.setString(2, senha);            
            ResultSet rs = ps.executeQuery();
            

            UsuarioBean usuario = new UsuarioBean(); 
            while(rs.next()){
            	usuario.setId(rs.getInt("id"));
            	usuario.setNome(rs.getString("nome"));              
            }
            return usuario;           
            
           /* if (rs.next()){            	
            	return "foii"; 
            }else{
            	return "Falha";
            }
            */
            
        } catch (Exception e) {
        	e.printStackTrace();
        	throw new Exception(e.toString());
        } finally {
        	con.close();
        }
	}
}
