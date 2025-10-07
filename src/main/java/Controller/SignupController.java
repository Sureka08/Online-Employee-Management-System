package Controller;

import jakarta.servlet.*;


import jakarta.servlet.http.*;
import java.io.IOException;

import Dao.SignupDao;
import Model.SignupModel;

public class SignupController extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        SignupModel user = new SignupModel();
        user.setFirstName(req.getParameter("firstname"));
        user.setLastName(req.getParameter("lastname"));
        user.setEmail(req.getParameter("email"));
        user.setUsername(req.getParameter("username"));
        user.setPassword(req.getParameter("password"));

        SignupDao dao = new SignupDao();
        if (dao.registerUser(user)) {
            res.sendRedirect("login.jsp");
        } else {
            res.getWriter().print("register unsuccessful");
        }
    }
}
