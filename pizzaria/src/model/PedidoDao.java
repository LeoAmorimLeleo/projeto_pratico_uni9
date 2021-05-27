package model;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class PedidoDao {
	public void inserir(PedidoBean pedidoBean) throws Exception{
		Connection con =ConnectionFactory.getConnection();
        PreparedStatement ps = null;
        try {
            ps = con.prepareStatement("insert into TB_Cliente(nome,sobrenome,celular,email,senha,id) values(?, ?, ?, ?, ?)");            
            ps.setString(1, pedidoBean.getNome());
            ps.setString(2, pedidoBean.getSobrenome());
            ps.setString(3, pedidoBean.getCelular());
            ps.setString(4, pedidoBean.getEmail());
            ps.setString(5, pedidoBean.getSenha());
            
            ps.executeUpdate(); 
            
        } catch (Exception e) {
        	e.printStackTrace();
        	throw new Exception(e.toString());
        } finally {
        	con.close();
        }
	}
}
