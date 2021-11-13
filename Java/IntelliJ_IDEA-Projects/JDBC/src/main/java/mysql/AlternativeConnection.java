package mysql;

import java.sql.*;

public class AlternativeConnection {

    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/desarrollo_itsqmet?useSSL=false&serverTimezone=UTC";
        Connection connection = DriverManager.getConnection(url, "root", "AyV5z@^9sE");
        Statement query = connection.createStatement();
        ResultSet results = query.executeQuery("SELECT * FROM persona");

        while (results.next()) {
            System.out.println("\nId: " + results.getInt(1));
            System.out.println("Name: " + results.getString(2));
            System.out.println("Lastname: " + results.getString(3));
            System.out.println("Age: " + results.getInt(4));
            System.out.println("Phone: " + results.getInt(5));
            System.out.println("Email: " + results.getString(6));
        }
    }
}
