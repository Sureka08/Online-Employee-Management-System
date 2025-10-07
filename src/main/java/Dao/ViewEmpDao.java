package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Model.AddEmpModel;
import Utils.AddEmpUtil;

public class ViewEmpDao {
	public List<AddEmpModel> getAllEmployees() {
	    List<AddEmpModel> list = new ArrayList<>();

	    try {
	        Connection con = AddEmpUtil.getConnection();
	        String sql = "SELECT * FROM employee";
	        PreparedStatement ps = con.prepareStatement(sql);
	        ResultSet rs = ps.executeQuery();

	        while (rs.next()) {
	            AddEmpModel emp = new AddEmpModel();
	            emp.setId(rs.getInt("id")); // DB column name should be "id"

	            emp.setFirstName(rs.getString("firstname"));
	            emp.setLastName(rs.getString("lastname"));
	            emp.setGender(rs.getString("gender"));
	            emp.setDob(rs.getString("dob"));
	            emp.setNationality(rs.getString("nationality"));
	            emp.setEmail(rs.getString("email"));
	            emp.setMobile(rs.getString("mobile"));
	            emp.setAddress(rs.getString("address"));
	            
	            list.add(emp);
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return list;
	}

	}


