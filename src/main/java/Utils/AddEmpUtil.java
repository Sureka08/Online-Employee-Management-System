package Utils;

import java.sql.Connection;
import java.sql.DriverManager;

public class AddEmpUtil {
	public static Connection getConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");


    String URL = "jdbc:mysql://127.0.0.1:3306/employee";
    String USER = "root";
    String PASS = "";

    return DriverManager.getConnection(URL, USER, PASS);
   

}
}
