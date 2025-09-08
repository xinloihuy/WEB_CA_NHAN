<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/includes/header.jsp" />

<div class="center-container">
    <h1>Cookies</h1>

    <p>All persistent cookies have been removed from this browser.</p>

    <div class="actions">
        <form action="" method="get">
            <input type="hidden" name="action" value="viewAlbums">
            <button type="submit">🎵 View list of albums</button>
        </form>

        <form action="" method="get">
            <input type="hidden" name="action" value="viewCookies">
            <button type="submit">🍪 View all cookies</button>
        </form>
    </div>
</div>


<c:import url="/includes/footer.jsp"/>