<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="includes/header.jsp" />
<div class="container">
<h1>Survey</h1>
<p>If you have a moment, we’d appreciate it if you would fill out this survey.</p>

<form action="${pageContext.request.contextPath}/survey" method="post">
    <input type="hidden" name="action" value="submit">

    <!-- Thông tin cá nhân -->
    <h2>Your information:</h2>
    <div class="form-row">
        <label>First Name:</label>
        <input type="text" name="firstName" required>
    </div>

    <div class="form-row">
        <label>Last Name:</label>
        <input type="text" name="lastName" required>
    </div>

    <div class="form-row">
        <label>Email:</label>
        <input type="email" name="email" required>
    </div>

    <div class="form-row">
        <label>Date of Birth:</label>
        <input type="date" name="dob" required>
    </div>


    <!-- How did you hear about us -->
    <h2>How did you hear about us?</h2>
    <label><input type="radio" name="hear" value="search" checked> Search engine</label><br>
    <label><input type="radio" name="hear" value="word"> Word of mouth</label><br>
    <label><input type="radio" name="hear" value="social"> Social Media</label><br>
    <label><input type="radio" name="hear" value="other"> Other</label><br><br>

    <!-- Announcements -->
    <h2>Would you like to receive announcements about new CDs and special offers?</h2>
    <label><input type="checkbox" name="update" value="Yes"> YES, I'd like that.</label><br>

    <label>Please contact me by:</label>
    <select name="contact" >
        <option value="both email and postal">Email or postal mail</option>
        <option value="email">Email only</option>
        <option value="postal">Postal mail only</option>
    </select><br><br>

    <!-- Submit -->
    <input type="submit" value="Submit" id="submit">
</form>
</div>

<c:import url="/includes/footer.jsp" />