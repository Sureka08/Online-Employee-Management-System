package Controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*;
import Utils.SignupUtil;

public class ChangePasswordController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String currentPassword = request.getParameter("currentPassword");
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");

        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");

        if (username == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        if (!newPassword.equals(confirmPassword)) {
            request.setAttribute("message", "New passwords do not match.");
            request.getRequestDispatcher("changepassword.jsp").forward(request, response);
            return;
        }

        try (Connection conn = SignupUtil.getConnection()) {
            // Check current password
            PreparedStatement checkStmt = conn.prepareStatement("SELECT password FROM signupdb WHERE username=?");
            checkStmt.setString(1, username);
            ResultSet rs = checkStmt.executeQuery();

            if (rs.next()) {
                String dbPassword = rs.getString("password");
                if (!dbPassword.equals(currentPassword)) {
                    request.setAttribute("message", "Current password is incorrect.");
                    request.getRequestDispatcher("changepassword.jsp").forward(request, response);
                    return;
                }

                // Update password
                PreparedStatement updateStmt = conn.prepareStatement("UPDATE signupdb SET password=? WHERE username=?");
                updateStmt.setString(1, newPassword);
                updateStmt.setString(2, username);
                int rows = updateStmt.executeUpdate();

                if (rows > 0) {
                    request.setAttribute("message", "Password changed successfully.");
                    request.getRequestDispatcher("changepassword.jsp").forward(request, response);
                } else {
                    request.setAttribute("message", "Failed to change password.");
                    request.getRequestDispatcher("changepassword.jsp").forward(request, response);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("message", "Error: " + e.getMessage());
            request.getRequestDispatcher("changepassword.jsp").forward(request, response);
        }
    }
}
