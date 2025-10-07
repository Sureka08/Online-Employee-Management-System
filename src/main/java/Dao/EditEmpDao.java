package Dao;

import java.sql.*;

import Model.AddEmpModel;
import Utils.AddEmpUtil;

public class EditEmpDao {
    public AddEmpModel getEmployeeById(int id) {
        AddEmpModel emp = new AddEmpModel();
        try {
            Connection con = AddEmpUtil.getConnection();
            String sql = "SELECT * FROM employee WHERE id = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                emp.setId(rs.getInt("id"));
                emp.setFirstName(rs.getString("firstname"));
                emp.setLastName(rs.getString("lastname"));
                emp.setGender(rs.getString("gender"));
                emp.setDob(rs.getString("dob"));
                emp.setNationality(rs.getString("nationality"));
                emp.setEmail(rs.getString("email"));
                emp.setMobile(rs.getString("mobile"));
                emp.setAddress(rs.getString("address"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return emp;
    }
    public void updateEmployee(AddEmpModel emp) {
        try {
            Connection con = AddEmpUtil.getConnection();
            String sql = "UPDATE employee SET firstname=?, lastname=?, gender=?, dob=?, nationality=?, email=?, mobile=?, address=? WHERE id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, emp.getFirstName());
            ps.setString(2, emp.getLastName());
            ps.setString(3, emp.getGender());
            ps.setString(4, emp.getDob());
            ps.setString(5, emp.getNationality());
            ps.setString(6, emp.getEmail());
            ps.setString(7, emp.getMobile());
            ps.setString(8, emp.getAddress());
            ps.setInt(9, emp.getId());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
