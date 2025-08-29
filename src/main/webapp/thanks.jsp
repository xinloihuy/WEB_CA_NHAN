<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.example.tuan02.Survey" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="styles/main.css" type="text/css">
    <title>Survey Result</title>
</head>
<body>
<img src="static/img.png" alt="Murach Logo" style="width:120px; margin-bottom: 10px;">
<h1>Thank you for filling out the survey!</h1>

<%
    Survey s = (Survey) request.getAttribute("survey");
    if (s != null) {
%>
<h2>Your Information:</h2>
<p>First Name: <%= s.getFirstName() %></p>
<p>Last Name: <%= s.getLastName() %></p>
<p>Email: <%= s.getEmail() %></p>
<p>Date of Birth: <%= s.getDob() %></p>

<h2>How did you hear about us?</h2>
<p><%= s.getHear() %></p>

<h2>Announcements:</h2>
<p><%= (s.getAnnounce1() != null ? s.getAnnounce1() : "No") %></p>
<p><%= (s.getAnnounce2() != null ? s.getAnnounce2() : "No") %></p>

<h2>Preferred contact method:</h2>
<p><%= s.getContact() %></p>
<%
    }
%>

<button onclick="window.location.href='/'">Return</button>

</body>
</html>
