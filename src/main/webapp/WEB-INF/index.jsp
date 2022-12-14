<%--
  Created by IntelliJ IDEA.
  User: alanlytton
  Date: 12/14/22
  Time: 10:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css"/>
    <title>Omikuji</title>
</head>
<body>
<div class="container d-flex flex-column align-items-center">
    <h1 class="mb-3">Send an Omikuji</h1>
    <form action="/omikuji/process" method="post" class="border border-1 border-dark w-25 p-3">
        <div class="d-flex flex-column">
            <label for="number">Pick any number from 5 to 25</label>
            <span class="container mt-2">
                <select name="number" id="number">
                    <option value="" selected disabled>#</option>
                    <c:forEach var="num" begin="5" end="25">
                        <option value="<c:out value="${num}"/>"><c:out value="${num}"/></option>
                    </c:forEach>
                </select>
            </span>
            <label for="city" class="mt-2">Enter the name of any city.</label>
            <span class="container mt-1">
                <input type="text" name="city" id="city">
            </span>
            <label for="person" class="mt-2">Enter the name of any real person.</label>
            <span class="container mt-1">
                <input type="text" name="person" id="person">
            </span>
            <label for="hobby" class="mt-2">Enter professional endeavor or hobby.</label>
            <span class="container mt-1">
                <input type="text" name="hobby" id="hobby">
            </span>
            <label for="thing" class="mt-2">Enter any type of living thing.</label>
            <span class="container mt-1">
                <input type="text" name="thing" id="thing">
            </span>
            <label for="nice" class="mt-2">Say something nice to someone.</label>
            <span class="container mt-1">
                <textarea name="nice" id="nice"></textarea>
            </span>
            <p class="mt-3">Send and show a friend</p>
            <input type="submit" value="Submit" class="align-self-end btn btn-primary">
        </div>
    </form>
</div>

<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
