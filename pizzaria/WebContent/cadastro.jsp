<%@page contentType="text/html" pageEncoding="UTF-8"
import= "java.sql.*"
import= "model.ConnectionFactory"
%>
<%@page language="java" import="model.ConnectionFactory" %>
<%

String nome = request.getParameter("nome");
String sobrenome = request.getParameter("sobrenome");	 
String senha1 = request.getParameter("senha1");
String senha2 = request.getParameter("senha2");
String celular = request.getParameter("celular");
String email  = request.getParameter("email");

try{
	Connection con = new ConnectionFactory();
	con.ConectaMySql();
	
	String sql = "insert into TB_Cliente(nome) value(?)";

	PreparedStatement stmt = con.prepareStatement(sql);
	stmt.setString(1, nome);
	stmt.execute();
	stmt.close();
	con.close();

}
catch(Exception e){
	out.print("Erro" + e);
}



%>