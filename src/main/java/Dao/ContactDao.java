package Dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Model.ContactModel;
import Utils.ContactUtils;


public class ContactDao {
	private Connection con;

    public ContactDao(Connection con) {
        this.con = con;
    }
    
    public void saveContact(ContactModel c) {
        try {
            Connection con = ContactUtils.getConnection();
            String sql = "INSERT INTO contactus (firstName, lastName, phone, dob, address, email) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, c.getFirstName());
            ps.setString(2, c.getLastName());
            ps.setString(3, c.getPhone());
            ps.setString(4, c.getDob());
            ps.setString(5, c.getAddress());
            ps.setString(6, c.getEmail());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public List<ContactModel> getAllContacts() {
        List<ContactModel> list = new ArrayList<>();
        String sql = "SELECT * FROM contactus";
        try (PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
            	ContactModel c = new ContactModel();
                c.setFirstName(rs.getString("firstname"));
                c.setLastName(rs.getString("lastname"));
                c.setPhone(rs.getString("phone"));
                c.setDob(rs.getString("dob"));
                c.setAddress(rs.getString("address"));
                c.setEmail(rs.getString("email"));
                list.add(c);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
