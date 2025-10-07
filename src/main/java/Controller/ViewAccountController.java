package Controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

import Dao.ViewAccountDao;
import Model.ViewAccountModel;

public class ViewAccountController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");

        if (username == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        ViewAccountModel user = ViewAccountDao.getUserByUsername(username);
        request.setAttribute("user", user);
        request.getRequestDispatcher("viewaccount.jsp").forward(request, response);
    }
}
