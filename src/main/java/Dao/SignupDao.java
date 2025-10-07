package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Model.SignupModel;
import Utils.SignupUtil;

public class SignupDao {

    public boolean registerUser(SignupModel user) {
        boolean success = false;

        try (Connection conn = SignupUtil.getConnection()) {
            if (conn == null) {
                System.out.println("Database connection failed.");
                return false;
            }

            System.out.println("✅ Connected to DB");

            String sql = "INSERT INTO signupdb (firstname, lastname, email, username, password) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, user.getFirstName());
            ps.setString(2, user.getLastName());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getUsername());
            ps.setString(5, user.getPassword());

            int rows = ps.executeUpdate();
            System.out.println("Rows inserted: " + rows);
            success = rows > 0;

        } catch (SQLException e) {
            System.out.println("SQL error occurred:");
            e.printStackTrace();
        } catch (Exception e) {
            System.out.println("General error occurred:");
            e.printStackTrace();
        }

        return success;
    }
}
