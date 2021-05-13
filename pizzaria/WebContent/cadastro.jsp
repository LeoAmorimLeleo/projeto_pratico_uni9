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
	
}
catch(Exception e){
	out.print("Erro" + e);
}



%>