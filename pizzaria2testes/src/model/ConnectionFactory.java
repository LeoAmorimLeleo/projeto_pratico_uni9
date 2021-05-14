package model;

import java.sql.*;

public class ConnectionFactory {

	public static Connection getConnection() throws Exception {
        try {
        	//com.mysql.cj.jdbc.Drive
        	Class.forName("com.mysql.jdbc.Driver");
        	Connection conn = null;
        	conn = DriverManager.getConnection("jdbc:mysql://projeto-uni9.cki0glwkmmjw.us-east-1.rds.amazonaws.com", "admin", "0Byak63qg%!jh");
            return conn;
        } catch (Exception e) {
        	e.printStackTrace();
        	throw new Exception();
        }
    }
}