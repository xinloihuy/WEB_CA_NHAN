<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="/includes/header.jsp" />
<h1>The SQL Gateway</h1>
<p>Enter an SQL statement and click the Execute button.</p>
<p><b>SQL statement:</b></p>
<form action="gateway" method="post">
    <textarea name="sqlStatement" cols="60" rows="8">${sqlStatement}</textarea>
    <input type="submit" value="Execute">
</form>

<p><b>SQL result:</b></p>
${sqlResult}

<c:import url="/includes/footer.jsp" />
