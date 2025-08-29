<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="styles/main.css" type="text/css">
    <title>Bài Tập</title>
</head>
<body>
<img src="static/img.png" alt="Murach Logo" style="width:120px; margin-bottom: 10px;">
<h1>Chọn Bài Tập</h1>

<!-- Bài 5 ex1 -->
<form action="${pageContext.request.contextPath}/bai5ex1" method="get" style="margin-bottom: 10px">
    <button type="submit">Bài 5 EX1</button>
</form>

<!-- Bài 5 ex2 -->
<form action="${pageContext.request.contextPath}/bai5ex2" method="get">
    <button type="submit">Bài 5 EX2</button>
</form>

</body>
</html>
