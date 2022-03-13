package es.pildoras.hibernatests;

import java.sql.Connection;
import java.sql.DriverManager;

public class JDBCTests {

	public static void main(String[] args) {

		String jdbcUrl = "jdbc:mysql://localhost:3306/hibernatetests?useSSL=false";
		String user = "root";
		String password = "";

		try {
			System.out.println("Trying to connect DB: " + jdbcUrl);

			Connection myConnection = DriverManager.getConnection(jdbcUrl, user, password);

			System.out.println("Successful conection!!");
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
