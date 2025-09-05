<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="includes/header.jsp" />
<div class="container">
<h1>Join our email list</h1>
<p>To join our email list, enter your name and email address below.</p>

<form action="${pageContext.request.contextPath}/emailList" method="post">
    <input type="hidden" name="action" value="add">

    <div class="form-row">
        <label>Email:</label>
        <input type="email" name="email" required>
    </div>

    <div class="form-row">
        <label>First Name:</label>
        <input type="text" name="firstName" required>
    </div>

    <div class="form-row">
        <label>Last Name:</label>
        <input type="text" name="lastName" required>
    </div>

    <div class="form-row">
        <label>&nbsp;</label>
        <input type="submit" value="Join Now" id="submit">
    </div>
</form>
</div>
<c:import url="/includes/footer.jsp" />
