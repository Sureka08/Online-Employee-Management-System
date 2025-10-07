package Dao;

import java.sql.Connection;

import java.sql.PreparedStatement;

import Utils.AddEmpUtil;

public class DeleteEmpDao {
    public void deleteEmployee(int id) {
        try {
            Connection con = AddEmpUtil.getConnection();
            String sql = "DELETE FROM employee WHERE id = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}


