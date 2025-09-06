<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/includes/header.jsp" />

<h1>Cookies</h1>

<p>Here's a table with all of the cookies that this
    browser is sending to the current server.</p>

<table>
    <tr>
        <th>Name</th>
        <th>Value</th>
    </tr>
    <c:forEach var="c" items="${cookie}">
        <tr>
            <td><c:out value="${c.value.name}"/></td>
            <td><c:out value="${c.value.value}"/></td>
        </tr>
    </c:forEach>
</table>

<p><a href="download?action=viewAlbums">View list of albums</a></p>

<p><a href="download?action=deleteCookies">Delete all persistent cookies</a></p>

<c:import url="/includes/footer.jsp"/>