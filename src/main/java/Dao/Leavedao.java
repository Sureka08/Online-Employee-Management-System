package Dao;

import java.sql.*;
import Model.LeaveModel;
import Utils.Leaveutil;

public class Leavedao {

    public void insertLeave(LeaveModel leave) throws Exception {
        Connection conn = Leaveutil.getConnection();
        String sql = "INSERT INTO leaveapply (firstName, lastName, email, phone, reason, startDate, endDate) VALUES (?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, leave.getFirstName());
        ps.setString(2, leave.getLastName());
        ps.setString(3, leave.getEmail());
        ps.setString(4, leave.getPhone());
        ps.setString(5, leave.getReason());
        ps.setString(6, leave.getStartDate());
        ps.setString(7, leave.getEndDate());
        ps.executeUpdate();
        conn.close();
    }

   

    public LeaveModel getLeaveById(int id) throws Exception {
    	LeaveModel leave = new LeaveModel();
        Connection conn = Leaveutil.getConnection();
        PreparedStatement ps = conn.prepareStatement("SELECT * FROM leaveapply WHERE id=?");
        ps.setInt(1, id);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            leave.setId(rs.getInt("id"));
            leave.setFirstName(rs.getString("firstName"));
            leave.setLastName(rs.getString("lastName"));
            leave.setEmail(rs.getString("email"));
            leave.setPhone(rs.getString("phone"));
            leave.setReason(rs.getString("reason"));
            leave.setStartDate(rs.getString("startDate"));
            leave.setEndDate(rs.getString("endDate"));
        }
        conn.close();
        return leave;
    }

    public void updateLeave(LeaveModel leave) throws Exception {
        Connection conn = Leaveutil.getConnection();
        String sql = "UPDATE leaveapply SET phone=?, reason=?, startDate=?, endDate=? WHERE id=?";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, leave.getPhone());
        ps.setString(2, leave.getReason());
        ps.setString(3, leave.getStartDate());
        ps.setString(4, leave.getEndDate());
        ps.setInt(5, leave.getId());
        ps.executeUpdate();
        conn.close();
    }

    public void deleteLeave(int id) throws Exception {
        Connection conn = Leaveutil.getConnection();
        PreparedStatement ps = conn.prepareStatement("DELETE FROM leaveapply WHERE id=?");
        ps.setInt(1, id);
        ps.executeUpdate();
        conn.close();
    }
}
