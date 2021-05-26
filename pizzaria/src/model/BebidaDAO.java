/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class BebidaDAO extends ConnectionFactory{
    
    public BebidaDAO()throws Exception{}
    
    public  ArrayList<Bebida> getLista() throws Exception{
    	
    	Connection con = ConnectionFactory.getConnection();  
        Statement stm = con.createStatement();  
        
        String sql = "SELECT * FROM TB_Bebida"; 
        ResultSet rs = stm.executeQuery(sql); 
        
        ArrayList<Bebida> bebidas = new ArrayList<Bebida>(); 
        while(rs.next()){
            Bebida p = new Bebida();
            p.setId(rs.getInt("id")); 
            p.setNome(rs.getString("nome"));
            p.setDescricao(rs.getString("descricao"));             
            p.setValor(rs.getFloat("valor"));
            p.setVolume(rs.getString("volume"));
            p.setFoto(rs.getString("foto"));
            bebidas.add(p);
        }
        return bebidas;
    }    
}
