package Controller;

import java.io.IOException;

import Dao.DeleteEmpDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



public class DeleteEmpController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
    		throws ServletException, IOException {
    	
        int id = Integer.parseInt(request.getParameter("id"));
        DeleteEmpDao dao = new DeleteEmpDao();
        dao.deleteEmployee(id);

        response.sendRedirect("viewemp");
    }
}


