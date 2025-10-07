package Controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import Dao.ContactDao;
import Model.ContactModel;
import Utils.EmailUtil;
import Utils.ContactUtils;

public class ContactController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

    	ContactModel c = new ContactModel();
        c.setFirstName(request.getParameter("firstName"));
        c.setLastName(request.getParameter("lastName"));
        c.setPhone(request.getParameter("phone"));
        c.setDob(request.getParameter("dob"));
        c.setAddress(request.getParameter("address"));
        c.setEmail(request.getParameter("email"));

        // Save to DB
        ContactDao dao = null;
		try {
			dao = new ContactDao(ContactUtils.getConnection());
		} catch (Exception e) {
			// Auto-generated catch block
			e.printStackTrace();
		}  
        dao.saveContact(c); //abstraction
 
        // Email to only surekasiva11@gmail.com
        String subject = "New Contact Form Submission";
        String message = "First Name: " + c.getFirstName() + "\n"
                       + "Last Name: " + c.getLastName() + "\n"
                       + "Phone: " + c.getPhone() + "\n"
                       + "DOB: " + c.getDob() + "\n"
                       + "Address: " + c.getAddress() + "\n"
                       + "Email: " + c.getEmail();

        EmailUtil.sendEmail("surekasiva11@gmail.com", subject, message);

        response.sendRedirect("index1.jsp");  // Optionally redirect with success message
    }
}
