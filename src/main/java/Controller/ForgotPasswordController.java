package Controller;

import jakarta.servlet.*;

import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*;

import Utils.SignupUtil;

public class ForgotPasswordController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        HttpSession session = request.getSession();

        try (Connection conn = SignupUtil.getConnection()) {
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM signupdb WHERE username=?");
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                session.setAttribute("username", username);
                response.sendRedirect("reset_password.jsp");
            } else {
                request.setAttribute("errorMessage", "Username not found.");
                request.getRequestDispatcher("forgot.jsp").forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}
