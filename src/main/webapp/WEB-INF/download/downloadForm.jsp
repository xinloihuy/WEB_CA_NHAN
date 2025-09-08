<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/includes/header.jsp" />
<h1>List of Albums</h1>

<p>
    Welcome back <c:if test="${not empty cookie.firstNameCookie.value}">, ${cookie.firstNameCookie.value}</c:if>
</p>

<table>
    <tr>
        <th>Album</th>
    </tr>
    <tr>
        <td>
            <a href="download?action=checkUser&amp;productCode=8601">
                86 (the band) - True Life Songs and Pictures
            </a>
        </td>
    </tr>
    <tr>
        <td>
            <a href="download?action=checkUser&amp;productCode=pf01">
                Paddlefoot - The First CD
            </a>
        </td>
    </tr>
    <tr>
        <td>
            <a href="download?action=checkUser&amp;productCode=pf02">
                Paddlefoot - The Second CD
            </a>
        </td>
    </tr>
    <tr>
        <td>
            <a href="download?action=checkUser&amp;productCode=jr01">
                Joe Rut - Genuine Wood Grained Finish
            </a>
        </td>
    </tr>
</table>


<c:import url="/includes/footer.jsp"/>