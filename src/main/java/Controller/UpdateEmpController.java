package Controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

import Dao.EditEmpDao;
import Model.AddEmpModel;

public class UpdateEmpController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        AddEmpModel emp = new AddEmpModel();
        emp.setId(Integer.parseInt(request.getParameter("id")));
        emp.setFirstName(request.getParameter("firstName"));
        emp.setLastName(request.getParameter("lastName"));
        emp.setGender(request.getParameter("gender"));
        emp.setDob(request.getParameter("dob"));
        emp.setNationality(request.getParameter("nationality"));
        emp.setEmail(request.getParameter("email"));
        emp.setMobile(request.getParameter("mobile"));
        emp.setAddress(request.getParameter("address"));

        EditEmpDao dao = new EditEmpDao();
        dao.updateEmployee(emp);

        response.sendRedirect("viewemp");
    }
}
