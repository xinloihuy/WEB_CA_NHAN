<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/includes/header.jsp" />

<h1>CD list</h1>
<table>
    <tr>
        <th>Description</th>
        <th class="right">Price</th>
        <th>&nbsp;</th>
    </tr>
    <c:forEach var="c" items="${products}">
        <tr>
            <td><c:out value="${c.description}"/> </td>
            <td class="right"><c:out value="${c.priceCurrencyFormat}"/></td>
            <td>
                <form action="cart" method="post">
                    <input type="hidden" name="productCode" value="${c.code}">
                    <input type="submit" value="Add To Cart">
                </form>
            </td>
        </tr>
    </c:forEach>
</table>

<c:import url="/includes/footer.jsp"/>