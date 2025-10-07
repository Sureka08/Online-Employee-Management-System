package Controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

import Dao.EditEmpDao;
import Model.AddEmpModel;

public class EditEmpController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        EditEmpDao dao = new EditEmpDao();
        AddEmpModel emp = dao.getEmployeeById(id);

        request.setAttribute("emp", emp);
        RequestDispatcher rd = request.getRequestDispatcher("edit.jsp");
        rd.forward(request, response);
    }
}
