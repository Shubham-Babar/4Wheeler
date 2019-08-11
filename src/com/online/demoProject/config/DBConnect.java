package com.demoProject.config;


	import java.sql.Connection;
	import java.sql.DriverManager;

	public class DBConnect {

	public static final String username="root";
	public static final String url="jdbc:mysql://localhost:3306/shubhamShop";
	public static final String pass="root";

	public static Connection getConnect() {
	Connection con=null;
	try {

	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection(url,username,pass);
	}catch (Exception e) {
	e.printStackTrace();
	}
	return con;
	}
	
}
