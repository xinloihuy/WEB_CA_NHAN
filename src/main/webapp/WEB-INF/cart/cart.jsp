<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/includes/header.jsp"/>
<h1>Your Cart</h1>

<table>
    <tr>
        <th>Quantity</th>
        <th>Description</th>
        <th>Price</th>
        <th>Amount</th>
        <th>Action</th>
    </tr>

    <c:forEach var="item" items="${cart.items}">
        <tr>
            <td>
                <form action="" method="post">
                    <input type="hidden" name="productCode"
                           value="<c:out value='${item.product.code}'/>">
                    <input type="text" name="quantity"
                           value="<c:out value='${item.quantity}'/>" size="3">
                    <input type="submit" value="Update">
                </form>
            </td>
            <td><c:out value='${item.product.description}'/></td>
            <td><c:out value="${item.product.priceCurrencyFormat}"/></td>
            <td><c:out value="${item.totalCurrencyFormat}"/></td>
            <td>
                <form action="" method="post">
                    <input type="hidden" name="productCode"
                           value="<c:out value='${item.product.code}'/>">
                    <input type="hidden" name="quantity" value="0">
                    <input type="submit" value="Remove">
                </form>
            </td>
        </tr>
    </c:forEach>
</table>

<p style="text-align:center;">
    <b>To change the quantity</b>, enter the new quantity and click Update.
</p>

<div class="actions">
    <form action="" method="post">
        <input type="hidden" name="action" value="shop">
        <input type="submit" value="Continue Shopping">
    </form>

    <form action="" method="post">
        <input type="hidden" name="action" value="checkout">
        <input type="submit" value="Checkout">
    </form>
</div>

<c:import url="/includes/footer.jsp"></c:import>