<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 	CSS (w3css) de la Page -->
    <link rel="stylesheet" href="<c:url value="css/w3.css" />"/>

    <title>Cities Add/Modify JSP</title>

</head>
<body>
<div style="text-align: center" class="w3-container">
    <form name="cityForm" action="cityModify" method="POST">
        <table>
            <tr>
                <td>Id Ville:</td>
                <td><input type="number" name="id" readonly value="${city.id}"/></td>
                <td>Nom de la ville:</td>
                <td><input type="text" name="city" value="${city.city}"/></td>
                <td>Id Pays</td>
                <td><input type="number" name="id" value="${city.country_id}"/></td>
                <td>Image Ville</td>
                <td><input type="file" id="file" name="image" accept="image/*"><br><br>
            </tr>
            <th><input type="submit" value="Submit"/></th>
            <th><input type="reset" value="Clear"/></th>
        </table>
    </form>
</div>
</body>
</html>
