package Controller;

import java.io.IOException;

import Dao.Leavedao;
import Model.LeaveModel;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class UpdateLeaveController  extends HttpServlet {
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
	    		throws ServletException, IOException {
	    	LeaveModel leave = new LeaveModel();
	        leave.setId(Integer.parseInt(request.getParameter("id")));
	        leave.setPhone(request.getParameter("phone"));
	        leave.setReason(request.getParameter("reason"));
	        leave.setStartDate(request.getParameter("startDate"));
	        leave.setEndDate(request.getParameter("endDate"));

	        try {
	            new Leavedao().updateLeave(leave);
	            response.sendRedirect("Leavelist.jsp");
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
	}



