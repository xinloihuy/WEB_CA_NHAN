package com.xinloihuy.email;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/bai5ex2/test")
public class TestServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("method", "GET");
        request.getRequestDispatcher("/WEB-INF/test.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("method", "POST");
        request.getRequestDispatcher("/WEB-INF/test.jsp").forward(request, response);
    }
}
