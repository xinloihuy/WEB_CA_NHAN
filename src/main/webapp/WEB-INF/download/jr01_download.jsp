<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/includes/header.jsp" />

<h1>Downloads</h1>

<h2>Joe Rut - Genuine Wood Grained Finish</h2>

<table>
    <tr>
        <th>Song title</th>
        <th>Audio Format</th>
    </tr>
    <tr>
        <td>Filter</td>
        <td><a href="/musicStore/sound/${productCode}/field_of_hopes.mp3">MP3</a></td>
    </tr>
    <tr>
        <td>So Long Lazy Ray</td>
        <td><a href="/musicStore/sound/${productCode}/field_of_hopes.mp3">MP3</a></td>
    </tr>
</table>

<p><a href="?action=viewAlbums">View list of albums</a></p>

<p><a href="?action=viewCookies">View all cookies</a></p>

<c:import url="/includes/footer.jsp"/>