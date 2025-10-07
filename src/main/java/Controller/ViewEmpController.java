package Controller;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.util.List;

import Dao.ViewEmpDao;
import Model.AddEmpModel;

public class ViewEmpController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {


    	ViewEmpDao dao = new ViewEmpDao();
        List<AddEmpModel> empList = dao.getAllEmployees(); // DAO 

        request.setAttribute("empList", empList); // pass to JSP
        RequestDispatcher rd = request.getRequestDispatcher("viewemp.jsp");
        rd.forward(request, response);
    }
}
