package Dao;

import java.sql.*;

import Model.ViewAccountModel;
import Utils.SignupUtil;

public class ViewAccountDao {
	public static ViewAccountModel getUserByUsername(String username) {
		ViewAccountModel user = null;
        try (Connection conn = SignupUtil.getConnection()) {
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM signupdb WHERE username=?");
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                user = new ViewAccountModel();
                user.setFirstName(rs.getString("firstname"));
                user.setLastName(rs.getString("lastname"));
                user.setEmail(rs.getString("email"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }

}
