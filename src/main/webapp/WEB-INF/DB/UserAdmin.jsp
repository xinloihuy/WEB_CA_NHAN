<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="/includes/header.jsp" />

<div class="container" style="width: 170em">
    <h1>Users</h1>
    <p>Here is the list of registered users:</p>

    <table>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th colspan="2">Actions</th>
        </tr>
        <c:forEach var="user" items="${users}">
            <tr>
                <td>${user.firstName}</td>
                <td>${user.lastName}</td>
                <td>${user.email}</td>
                <td><a href="userAdmin?action=display_users&amp;email=${user.email}">Update</a></td>
                <td><a href="userAdmin?action=delete_user&amp;email=${user.email}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>

    <p><a href="userAdmin?action=refresh">Refresh</a></p>
    <p style="color:red;">${errorMessage}</p>
</div>

<c:import url="/includes/footer.jsp" />
