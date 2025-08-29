package org.example.tuan02;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/bai5ex2/test")
public class TestServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Thiết lập kiểu nội dung trả về là HTML
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<link rel=\"stylesheet\" href='" + request.getContextPath() + "/styles/main.css' type='text/css'>");
            out.println("<title>Servlet TestServlet</title>");
            out.println("</head>");

            out.println("<body>");
            out.println("<img src='" + request.getContextPath() + "/static/img.png' alt='Murach Logo' style='width:120px; margin-bottom: 10px;'>");
            out.println("<h1>TestServlet POST</h1>");
            out.println("</body>");
            out.println("</html>");
        }
        finally {
            out.close();
        }

    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<link rel=\"stylesheet\" href='" + request.getContextPath() + "/styles/main.css' type='text/css'>");
            out.println("<title>Servlet TestServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<img src='" + request.getContextPath() + "/static/img.png' alt='Murach Logo' style='width:120px; margin-bottom: 10px;'>");
            out.println("<h1>TestServlet GET</h1>");
            out.println("</body>");
            out.println("</html>");
        }
        finally {
            out.close();
        }
    }
}
