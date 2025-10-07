package Controller;

import jakarta.servlet.*;

import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*;

import Utils.SignupUtil;

public class ResetPasswordController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword"); // get confirm password

        // Check if passwords match
        if (!newPassword.equals(confirmPassword)) {
            request.setAttribute("error", "Passwords do not match.");
            request.getRequestDispatcher("resetpassword.jsp").forward(request, response);
            return;
        }

        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");

        if (username == null) {
            response.sendRedirect("forgot.jsp");
            return;
        }

        try (Connection conn = SignupUtil.getConnection()) {
            PreparedStatement ps = conn.prepareStatement("UPDATE signupdb SET password=? WHERE username=?");
            ps.setString(1, newPassword);
            ps.setString(2, username);

            int rows = ps.executeUpdate();
            if (rows > 0) {
                session.invalidate(); // clear session
                response.sendRedirect("login.jsp");
            } else {
                response.getWriter().println("Failed to reset password.");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}
