package Controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

import Dao.Leavedao;
import Model.LeaveModel;

public class LeaveController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	LeaveModel leave = new LeaveModel();
        leave.setFirstName(request.getParameter("firstName"));
        leave.setLastName(request.getParameter("lastName"));
        leave.setEmail(request.getParameter("email"));
        leave.setPhone(request.getParameter("phone"));
        leave.setReason(request.getParameter("reason"));
        leave.setStartDate(request.getParameter("startDate"));
        leave.setEndDate(request.getParameter("endDate"));

        try {
            new Leavedao().insertLeave(leave);
            response.sendRedirect("Leavelist.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
