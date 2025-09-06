package com.xinloihuy.email;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.xinloihuy.model.User;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

@WebServlet(name = "emailList",value = "/emailList")
public class EmailListServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String url = "/index.jsp";
        User user= new User();
        request.setAttribute("url",url);
        if (action == null) {
            action = "reset";
            url = "/index.jsp";
        }
        else if (action.equals("add")) {
            String email = request.getParameter("email");
            String firstname = request.getParameter("firstName");
            String lastname = request.getParameter("lastName");
            user.setEmail(email);
            user.setFirstName(firstname);
            user.setLastName(lastname);
            request.setAttribute("user",user);
            url = "/WEB-INF/email/thanks_mails.jsp";
        }

        Date currentDate = new Date();
        request.setAttribute("currentDate", currentDate);

        HttpSession session = request.getSession();
        ArrayList<User> users = (ArrayList<User>) session.getAttribute("users");
        if (users == null) {
            users = new ArrayList<>();
        }

        // kiểm tra trùng lặp theo email
        boolean exists = false;
        for (User u : users) {
            if (u.getEmail().equalsIgnoreCase(user.getEmail())) {
                exists = true;
                break;
            }
        }

        if (!exists) {
            users.add(user);
        }
        session.setAttribute("users", users);

        getServletContext().getRequestDispatcher(url).forward(request,response);
    }

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }


}