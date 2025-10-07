package Controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import Dao.LoginDAO;
import Model.LoginModel;

public class LoginController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        LoginModel user = new LoginModel(username, password);
        LoginDAO dao = new LoginDAO();

       
        if (dao.validate(user)) {
           
            HttpSession session = request.getSession();
            session.setAttribute("username", username);
            
            if (username.equals("admin") && password.equals("admin123"))
            {
                
                response.sendRedirect("admin.jsp");
            }
            else
            {
           
            response.sendRedirect("employee.jsp");
            }
        } else {
          
            request.setAttribute("errorMessage", "wrong username and password.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
            dispatcher.forward(request, response);
        }
    }
    
    
}
