<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/includes/header.jsp" />

<div class="container">
    <h1>Thanks for joining our email list</h1>
    <p>Here is the information that you entered:</p>

    <div class="info">
        <p><label>Email:</label> <span>${user.email}</span></p>
        <p><label>First Name:</label> <span>${user.firstName}</span></p>
        <p><label>Last Name:</label> <span>${user.lastName}</span></p>
    </div>

    <p>
        To enter another email address, click on the Back button in your browser
        or the Return button shown below.
    </p>

    <form action="/index.jsp" method="post">
        <input type="hidden" name="action" value="return">
        <button type="submit">Return</button>
    </form>
</div>

<c:import url="/includes/footer.jsp" />
