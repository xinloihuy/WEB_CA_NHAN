<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="includes/header.jsp" />
<div class="center-container">
<h1>Chọn Bài Tập</h1>

<form action="downloadForm" method="post" style="margin-bottom: 10px">
    <button type="submit">Bài Tập Download</button>
</form>

<form action="loadProducts" method="get">
    <button type="submit">Bài Tập Cart</button>
</form>
</div>
<c:import url="/includes/footer.jsp" />
