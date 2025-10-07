package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Model.LeaveModel;
import Utils.Leaveutil;

public class ViewLeaveDao {
	public List<LeaveModel> getAllLeave() {
        List<LeaveModel> list = new ArrayList<>();
        try {
            Connection con = Leaveutil.getConnection();
            String sql = "SELECT * FROM leaveapply";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                LeaveModel l = new LeaveModel();
                l.setId(rs.getInt("ID"));  
                l.setFirstName(rs.getString("firstName"));
                l.setLastName(rs.getString("lastName"));
                l.setPhone(rs.getString("phone"));
                l.setEmail(rs.getString("email"));
                l.setReason(rs.getString("reason"));
                l.setStartDate(rs.getString("startDate"));
                l.setEndDate(rs.getString("endDate"));
                list.add(l);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
	

}
