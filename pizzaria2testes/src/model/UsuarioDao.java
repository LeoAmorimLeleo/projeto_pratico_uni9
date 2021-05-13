package model;

import java.sql.*;

public class UsuarioDao {

	public void inserirUsuario(UsuarioBean usuario) throws Exception{
		Connection con = null;
        PreparedStatement ps = null;
        try {
        	new ConnectionFactory();
			con = ConnectionFactory.getConnection();
            ps = con.prepareStatement("insert into TB_CLIENTE(nome,sobrenome,senha1,senha2,celular,email) values(?, ?, ?, ?, ?, ?)");
            ps.setString(1, usuario.getNome());
            ps.setString(2, usuario.getSobrenome());
            ps.setString(3, usuario.getSenha1());
            ps.setString(4, usuario.getSenha2());
            ps.setString(5, usuario.getCelular());
            ps.setString(6, usuario.getEmail());
            ps.executeUpdate();
            
        } catch (Exception e) {
        	e.printStackTrace();
        	throw new Exception();
        } finally {
        	con.close();
        }
	}
}

