package Controller;

import java.io.IOException;

import Dao.Leavedao;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class DeleteLeaveController  extends HttpServlet {
	    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
	    		throws ServletException, IOException {
	        int id = Integer.parseInt(request.getParameter("id"));
	        try {
	            new Leavedao().deleteLeave(id);
	            response.sendRedirect("Leavelist.jsp");
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
	

}
