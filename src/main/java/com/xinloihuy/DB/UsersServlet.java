package com.xinloihuy.DB;

import com.xinloihuy.model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet("/userAdmin")
public class UsersServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String url = "/WEB-INF/DB/UserAdmin.jsp";
        String action = request.getParameter("action");

        if (action == null) {
            action = "display_users";
        }
        if (action.equals("refresh")) {
            ArrayList<User> users = null;
            try {
                users = UserDB.selectUsers();
                request.setAttribute("users", users);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            request.getRequestDispatcher(url).forward(request, response);
        }

        try {
            if (action.equals("display_users")) {
                String email = request.getParameter("email");
                User user = UserDB.select(email);
                url = "/WEB-INF/DB/user.jsp";
                session.setAttribute("user", user);

            } else if (action.equals("delete_user")) {
                String email = request.getParameter("email");
                User user = UserDB.select(email);
                UserDB.delete(user);

                ArrayList<User> users = UserDB.selectUsers();
                request.setAttribute("users", users);

            } else if (action.equals("update_user")) {
                String firstName = request.getParameter("firstName");
                String lastName = request.getParameter("lastName");

                User user = (User) session.getAttribute("user");
                if (user != null) {
                    user.setFirstName(firstName);
                    user.setLastName(lastName);
                    UserDB.update(user);
                }


                ArrayList<User> users = UserDB.selectUsers();
                request.setAttribute("users", users);
            }

        } catch (SQLException e) {
            request.setAttribute("errorMessage", "Database error: " + e.getMessage());
        } catch (Exception e) {
            request.setAttribute("errorMessage", "Unexpected error: " + e.getMessage());
        }

        request.getRequestDispatcher(url).forward(request, response);
    }
    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
