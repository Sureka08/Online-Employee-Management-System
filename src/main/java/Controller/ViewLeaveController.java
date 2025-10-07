package Controller;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.util.List;

import Dao.ViewLeaveDao;
import Model.LeaveModel;

public class ViewLeaveController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

    	ViewLeaveDao dao = new ViewLeaveDao();
    	List<LeaveModel> leaveList = dao.getAllLeave();


        request.setAttribute("leaveList", leaveList);
        RequestDispatcher rd = request.getRequestDispatcher("viewleave.jsp");
        rd.forward(request, response);
    }
}
