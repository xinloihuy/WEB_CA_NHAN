<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="styles/main.css" type="text/css">
    <title>Murach's Java Servlets and JSP</title>
</head>
<body>
<img src="img.png" alt="Murach Logo" style="width:120px; margin-bottom: 10px;">
<h1>Survey</h1>
<p>If you have a moment, we’d appreciate it if you would fill out this survey.</p>

<form action="${pageContext.request.contextPath}/survey" method="post">
    <input type="hidden" name="action" value="submit">

    <!-- Thông tin cá nhân -->
    <h2>Your information:</h2>
    <label>First Name:</label>
    <input type="text" name="firstName" required><br>

    <label>Last Name:</label>
    <input type="text" name="lastName" required><br>

    <label>Email:</label>
    <input type="email" name="email" required><br>

    <label>Date of Birth:</label>
    <input type="date" name="dob"><br><br>

    <!-- How did you hear about us -->
    <h2>How did you hear about us?</h2>
    <label><input type="radio" name="hear" value="search" checked> Search engine</label><br>
    <label><input type="radio" name="hear" value="word"> Word of mouth</label><br>
    <label><input type="radio" name="hear" value="social"> Social Media</label><br>
    <label><input type="radio" name="hear" value="other"> Other</label><br><br>

    <!-- Announcements -->
    <h2>Would you like to receive announcements about new CDs and special offers?</h2>
    <label><input type="checkbox" name="announce1" value="yes"> YES, I'd like that.</label><br>
    <label><input type="checkbox" name="announce2" value="email"> YES, please send me email announcements.</label><br><br>

    <label>Please contact me by:</label>
    <select name="contact">
        <option value="both">Email or postal mail</option>
        <option value="email">Email only</option>
        <option value="postal">Postal mail only</option>
    </select><br><br>

    <!-- Submit -->
    <input type="submit" value="Submit" id="submit">
</form>
</body>
</html>
