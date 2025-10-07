package Dao;

import java.sql.Connection;


import java.sql.PreparedStatement;
import java.sql.SQLException;

import Model.AddEmpModel;
import Utils.AddEmpUtil;

public class AddEmpDao {

	public boolean add(AddEmpModel addemp) {
        boolean result = false;

        	try(Connection conn = AddEmpUtil.getConnection()) {
                if (conn == null) {
                    System.out.println("Database connection failed.");
                    return false;
                    
                }

                
                String sql="INSERT INTO employee (firstName , lastName , gender , dob , nationality , email , mobile , address) VALUES(?,?,?,?,?,?,?,?)";
                
                PreparedStatement ps = conn.prepareStatement(sql);
                
                ps.setString(1,addemp.getFirstName());
                ps.setString(2,addemp.getLastName());
                ps.setString(3,addemp.getGender());
                ps.setString(4,addemp.getDob());
                ps.setString(5,addemp.getNationality());
                ps.setString(6,addemp.getEmail());
                ps.setString(7,addemp.getMobile());
                ps.setString(8,addemp.getAddress());
                
                int rows=ps.executeUpdate();                
                result=rows > 0;
        	}
        	catch(SQLException e)
        	{
        		System.out.println("SQL error occurred");
        		e.printStackTrace();
        	}
        	catch(Exception e)
        	{
        		System.out.println("Gentral error occured:");
        		e.printStackTrace();
                
            }
        	
        return result;
	}


}


