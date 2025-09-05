<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="includes/header.jsp" />
<div class="center-container">
<h1>Chọn Bài Tập</h1>

<form action="${pageContext.request.contextPath}/bai5ex1" method="post" style="margin-bottom: 10px">
    <button type="submit">Bài 5 EX1</button>
</form>

<form action="${pageContext.request.contextPath}/bai5ex2" method="post">
    <button type="submit">Bài 5 EX2</button>
</form>
</div>
<c:import url="/includes/footer.jsp" />
