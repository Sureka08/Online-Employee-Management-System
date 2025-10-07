package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Model.LoginModel;
import Utils.SignupUtil;

public class LoginDAO {

    public boolean validate(LoginModel user) {
        boolean status = false;

        try {
            Connection conn = SignupUtil.getConnection();
            String sql = "SELECT * FROM signupdb WHERE username=? AND password=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getPassword());

            ResultSet rs = stmt.executeQuery();
            status = rs.next();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
}
