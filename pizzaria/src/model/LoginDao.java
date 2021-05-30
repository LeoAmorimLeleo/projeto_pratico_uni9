package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {
	
	public String autenticar(String email, String senha) throws Exception {
		Connection con =ConnectionFactory.getConnection();
        PreparedStatement ps = null;
        try {
            ps = con.prepareStatement("select * from TB_Cliente where email=? and senha=?");            
            ps.setString(1, email);
            ps.setString(2, senha);            
            ResultSet rs = ps.executeQuery();
            
            if (rs.next()){            	
            	return "foii"; 
            }else{
            	return "Falha";
            }
            
        } catch (Exception e) {
        	e.printStackTrace();
        	throw new Exception(e.toString());
        } finally {
        	con.close();
        }
	}
}
