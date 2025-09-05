<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/includes/header.jsp" />

<div class="container">
    <h1>Thank you for filling out the survey!</h1>

    <div class="info">
        <h2>Your Information</h2>
        <p><b>First Name:</b> ${survey.firstName}</p>
        <p><b>Last Name:</b> ${survey.lastName}</p>
        <p><b>Email:</b> ${survey.email}</p>
        <p><b>Date of Birth:</b> ${survey.dob}</p>
        <p><b>Heard From:</b> ${survey.hear}</p>
        <p><b>Updates:</b> ${survey.update}</p>

        <c:if test="${survey.update eq 'Yes'}">
            <p><b>Contact Via:</b> ${survey.contact}</p>
        </c:if>
    </div>

    <form action="/index.jsp" method="post">
        <input type="hidden" name="action" value="return">
        <button type="submit">Return</button>
    </form>
</div>

<c:import url="/includes/footer.jsp" />
