package com.xinloihuy.survey;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import com.xinloihuy.model.Survey;

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
        String update = request.getParameter("update");
        String contact = request.getParameter("contact");

        if (update == null) {
            update = "No";
        }
        else {
            update = "Yes";
        }

        // Gắn vào bean
        Survey survey = new Survey();
        survey.setFirstName(firstName);
        survey.setLastName(lastName);
        survey.setEmail(email);
        survey.setDob(dob);
        survey.setHear(hear);
        survey.setUpdate(update.trim());
        survey.setContact(contact);
        
        // Đưa bean lên request scope
        request.setAttribute("survey", survey);

        // Chuyển hướng sang trang thanks_survey.jsp
        request.getRequestDispatcher("/WEB-INF/survey/thanks_survey.jsp").forward(request, response);
    }
    
    @Override
    protected  void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
