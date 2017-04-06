<%--
  Created by IntelliJ IDEA.
  User: Pavel Ruban
  Date: 15.03.2017
  Time: 20:19
  New Game Form
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<html>
<head>
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>7 Wonders</title>
</head>
<body>
<table border=1 cellpadding=5>
    <tr>
        <th>Имя игрока</th>
        <th>Создатель</th>
    </tr>
    <c:forEach items="${players}" var="player">
        <tr>
            <td>${player.name}</td>
            <td>${player.isAdmin}</td>
        </tr>
    </c:forEach>
</table>
<form:form method="post" action="newgame/leave">
    <input type="submit" value="Выход"/>
</form:form>
</body>
</html>
