<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/includes/header.jsp" />

<h1>Downloads</h1>

<h2>86 (the band) - True Life Songs and Pictures</h2>

<table>
    <tr>
        <th>Song title</th>
        <th>Audio Format</th>
    </tr>
    <tr>
        <td>You Are a Star</td>
        <td><a href="/musicStore/sound/${productCode}/home.mp3">MP3</a></td>
    </tr>
    <tr>
        <td>Don't Make No Difference</td>
        <td><a href="/musicStore/sound/${productCode}/home.mp3">MP3</a></td>
    </tr>
</table>

<p><a href="?action=viewAlbums">View list of albums</a></p>

<p><a href="?action=viewCookies">View all cookies</a></p>

<c:import url="/includes/footer.jsp"/>