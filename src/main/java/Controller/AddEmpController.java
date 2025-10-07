package Controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import Dao.AddEmpDao;
import Model.AddEmpModel;

public class AddEmpController extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse res)
    		throws ServletException, IOException {
		
		AddEmpModel addemp = new AddEmpModel();
		addemp.setFirstName(req.getParameter("firstName"));
		addemp.setLastName(req.getParameter("lastName"));
		addemp.setGender(req.getParameter("gender"));
		addemp.setDob(req.getParameter("dob"));
		addemp.setNationality(req.getParameter("nationality"));
		addemp.setEmail(req.getParameter("email"));
		addemp.setMobile(req.getParameter("mobile"));
		addemp.setAddress(req.getParameter("address"));
		
		AddEmpDao dao =new AddEmpDao();
		if(dao.add(addemp))
		{
			res.sendRedirect("viewemp");
		}
		else
		{
			res.getWriter().print("error");
		}

	}

}
