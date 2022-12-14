<%--
  Created by IntelliJ IDEA.
  User: alanlytton
  Date: 12/14/22
  Time: 11:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css"/>
    <title>Omikuji | Show</title>
</head>
<body>
    <div class="container d-flex flex-column align-items-center">
        <h1 class="mb-3">Here is your Omikuji!</h1>
        <div class="border border-2 border-dark w-25 p-2 bg-primary mb-5">
            <p class="text-white">
                In <c:out value="${number}"/> years,
                you will live in <c:out value="${city}"/>
                with <c:out value="${person}"/>
                as your roommate, <c:out value="${hobby}"/>
                for a living.
                The next time you see a <c:out value="${thing}"/>,
                you will have good luck.
                Also, <c:out value="${nice}"/>
            </p>
        </div>
        <a href="/omikuji" class="align-self-center">Go Back</a>
    </div>

    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
