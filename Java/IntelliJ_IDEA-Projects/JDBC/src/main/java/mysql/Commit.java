package mysql;

import java.sql.*;

public class Commit {

    public static void main(String[] args) {
        try (Connection connection = DriverManager
                .getConnection("jdbc:mysql://localhost:3306/db_example?useSSL=false&serverTimezone=UTC",
                        "root", "AyV5z@^9sE");

             Statement query = connection.createStatement()) {

            query.execute("INSERT INTO customer (name, lastName) VALUES (\"Bryan\", \"Andagoya\");");

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }

    }

}
