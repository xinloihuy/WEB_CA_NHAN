<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/includes/header.jsp" />

<div class="container">
    <h1>Thanks for joining our email list</h1>

    <div class="info">
        <h2>Here is the information that you entered:</h2>
        <p><label>Email:</label> <span>${requestScope.user.email}</span></p>
        <p><label>First Name:</label> <span>${requestScope.user.firstName}</span></p>
        <p><label>Last Name:</label> <span>${requestScope.user.lastName}</span></p>
    </div>

    <div class="info">
        <h2>Extra Information: </h2>
        <p><label>Current Year:</label> <span>${requestScope.currentDate}</span></p>
        <c:if test="${not empty sessionScope.users}" >
            <p><label>First User Email:</label> <span>${sessionScope.users[0].email}</span></p>
            <c:if test="${sessionScope.users.size() > 1 and sessionScope.users[1].email ne sessionScope.users[0].email}">
                <p><label>Second User Email:</label> <span>${sessionScope.users[1].email}</span></p>
            </c:if>
        </c:if>


        <p><label>Customer Service Email:</label> <span>${initParam.custServEmail}</span></p>
    </div>

    <p>
        To enter another email address, click on the Back button in your browser
        or the Return button shown below.
    </p>

    <form action="emailForm" method="post">
        <input type="hidden" name="action" value="return">
        <button type="submit">Return</button>
    </form>
</div>

<c:import url="/includes/footer.jsp" />
