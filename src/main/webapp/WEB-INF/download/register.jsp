<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/includes/header.jsp" />

<form action="download" method="post">
    <input type="hidden" name="action" value="registerUser">

    <div class="form-row">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="${user.email}">
    </div>

    <div class="form-row">
        <label for="firstName">First Name:</label>
        <input type="text" id="firstName" name="firstName" value="${user.firstName}">
    </div>

    <div class="form-row">
        <label for="lastName">Last Name:</label>
        <input type="text" id="lastName" name="lastName" value="${user.lastName}">
    </div>

    <div class="form-row">
        <label>&nbsp;</label>
        <input type="submit" id="submit" value="Register">
    </div>
</form>


<c:import url="/includes/footer.jsp"/>
