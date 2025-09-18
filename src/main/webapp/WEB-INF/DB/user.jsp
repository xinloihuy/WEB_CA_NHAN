<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/includes/header.jsp" />

<div class="container" style="max-width: 50em">
    <h1>Update Users</h1>
    <p>NOTE: You can't update the email address</p>

    <form action="userAdmin" method="post">
        <input type="hidden" name="action" value="update_user">

        <div class="form-row">
            <label>Email:</label>
            <input type="text" name="email" value="${user.email}" required readonly>
        </div>

        <div class="form-row">
            <label>First Name:</label>
            <input type="text" name="firstName" value="${user.firstName}" required>
        </div>

        <div class="form-row">
            <label>Last Name:</label>
            <input type="text" name="lastName" value="${user.lastName}" required>
        </div>

        <div class="form-row submit-row">
            <label>&nbsp;</label>
            <input type="submit" value="Update" id="submit">
        </div>
    </form>
</div>

<c:import url="/includes/footer.jsp" />
