package Utils;

import java.sql.Connection;
import java.sql.DriverManager;


public class SignupUtil {
    public static Connection getConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");

        String url = "jdbc:mysql://127.0.0.1:3306/employee";
        String user = "root";
        String pass = "";  // Use "" if there's no password

        return DriverManager.getConnection(url, user, pass);
    }
}
