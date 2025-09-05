<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="includes/header.jsp" />
<h1>Thank you for filling out the survey!</h1>

<h2>Your Information:</h2>
<p>First Name:</b> ${survey.firstName}</p>
<p>Last Name:</b> ${survey.lastName}</p>
<p>Email:</b> ${survey.email}</p>
<p>Date of Birth:</b> ${survey.dob}</p>
<p>Heard From:</b> ${survey.hear}</p>

<p><b>Updates:</b> ${survey.update}</p>

<c:if test="${survey.update eq 'Yes'}">
    <p><b>Contact Via:</b> ${survey.contact}</p>
</c:if>


<button onclick="window.location.href='/'">Return</button>
</body>
</html>
