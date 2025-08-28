package org.example.tuan02;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/survey")
public class SurveyServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Lấy dữ liệu từ form
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String dob = request.getParameter("dob");
        String hear = request.getParameter("hear");
        String announce1 = request.getParameter("announce1");
        String announce2 = request.getParameter("announce2");
        String contact = request.getParameter("contact");

        // Gắn vào bean
        Survey survey = new Survey();
        survey.setFirstName(firstName);
        survey.setLastName(lastName);
        survey.setEmail(email);
        survey.setDob(dob);
        survey.setHear(hear);
        survey.setAnnounce1(announce1);
        survey.setAnnounce2(announce2);
        survey.setContact(contact);

        // Đưa bean lên request scope
        request.setAttribute("survey", survey);

        // Chuyển hướng sang trang thanks.jsp
        request.getRequestDispatcher("/thanks.jsp").forward(request, response);
    }
}
