package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import error.MessageError;

public class EnderecoDao {
	
	public void inserir(EnderecoBean enderecoBean) throws Exception{
		Connection con =ConnectionFactory.getConnection();
        PreparedStatement ps = null;
        try {
            ps = con.prepareStatement("insert into TB_Endereco(id_cliente,bairro,rua,numero,complemento,cep,cidade,estado) values(?, ?, ?, ?, ?, ?, ?, ?)");            
            ps.setInt(1, enderecoBean.getId_cliente());
            ps.setString(2, enderecoBean.getBairro());
            ps.setString(3, enderecoBean.getRua());
            ps.setString(4, enderecoBean.getNumero());
            ps.setString(5, enderecoBean.getComplemento());
            ps.setString(6, enderecoBean.getCep());
            ps.setString(7, enderecoBean.getCidade());
            ps.setString(8, enderecoBean.getEstado());
            
            ps.executeUpdate(); 
            
        } catch (Exception e) {
        	String messageError = MessageError.get(e);
        	throw new Exception(messageError);
        } finally {
        	con.close();
        }
	}
	
	 public ArrayList<EnderecoBean> get() throws Exception{
	    	
	    	Connection con = ConnectionFactory.getConnection();  
	        Statement stm = con.createStatement();  
	        
	        String sql = "SELECT * FROM TB_Endereco"; 
	        ResultSet rs = stm.executeQuery(sql); 
	        
	        ArrayList<EnderecoBean> enderecos = new ArrayList<EnderecoBean>(); 
	        while(rs.next()){
	            EnderecoBean endereco = new EnderecoBean();
	            endereco.setId(rs.getInt("id")); 
	            endereco.setId_cliente(rs.getInt("id_cliente"));
	            endereco.setBairro(rs.getString("bairro"));
	            endereco.setRua(rs.getString("rua"));             
	            endereco.setNumero(rs.getString("numero"));
	            endereco.setComplemento(rs.getString("complemento"));
	            endereco.setCep(rs.getString("cep"));
	            endereco.setCidade(rs.getString("cidade"));
	            endereco.setEstado(rs.getString("estado"));
	            enderecos.add(endereco);
	        }
	        return enderecos;
	    }    
}
