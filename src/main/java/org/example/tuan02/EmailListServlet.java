package org.example.tuan02;

import jakarta.persistence.metamodel.SetAttribute;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "emailList",value = "/emailList")
public class EmailListServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String url = "/index.jsp";
        request.setAttribute("url",url);
        if (action == null) {
            action = "reset";
            url = "/index.jsp";
        }
        else if (action.equals("add")) {
            String email = request.getParameter("email");
            String firstname = request.getParameter("firstName");
            String lastname = request.getParameter("lastName");
            User user = new User(firstname,lastname,email);
            request.setAttribute("user",user);
            url = "/thanks_mails.jsp";
        }

        getServletContext().getRequestDispatcher(url).forward(request,response);
    }

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String url = "index.jsp";
        getServletContext().getRequestDispatcher(url).forward(request,response);
    }


}