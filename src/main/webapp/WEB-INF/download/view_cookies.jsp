<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/includes/header.jsp" />
<div class="center-container">
    <h1>Cookies</h1>

    <p>
        Here's a table with all of the cookies that this browser is sending
        to the current server.
    </p>

    <table>
        <colgroup>
            <col style="width:30%">
            <col style="width:70%">
        </colgroup>
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

    <div class="actions">
        <form action="download" method="get">
            <input type="hidden" name="action" value="viewAlbums">
            <button type="submit">🎵 View list of albums</button>
        </form>

        <form action="download" method="get">
            <input type="hidden" name="action" value="deleteCookies">
            <button type="submit">🗑 Delete all persistent cookies</button>
        </form>
    </div>
</div>

<c:import url="/includes/footer.jsp"/>