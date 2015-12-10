<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  account: volodya
  Date: 07.12.15
  Time: 13:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Spring MVC Example</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <spring:url value="/resources/bootstrap/css/bootstrap.min.css"
                var="bootstrapCss"/>
    <link href="${bootstrapCss}" rel="stylesheet"/>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="navbar navbar-inverse">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand"
                       href="/home">Spring mvc
                        example</a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container">

    <h3>All accounts</h3>

    <table class="table table-striped">
        <thead>
        <tr>
            <th>#ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Action</th>
        </tr>
        </thead>
        <c:forEach var="account" items="${accounts}">
            <tr>
                <td>
                        ${account.id}
                </td>
                <td>${account.name}</td>
                <td>${account.email}</td>

                <td>
                    <spring:url value="/account/delete/${account.id}"
                                var="deleteUrl"/>
                    <spring:url value="/account/update/${account.id}"
                                var="updateUrl"/>
                    <div class="row">
                        <div class="col-xs-3">
                            <form:form method="GET" action="${updateUrl}">
                                <input type="submit" value="Update"
                                       class="btn btn-primary"/>
                            </form:form>
                        </div>
                        <div class="col-xs-3">
                            <form:form method="POST" action="${deleteUrl}">
                                <input type="submit" value="Delete"
                                       class="btn btn-danger"/>
                            </form:form>
                        </div>
                    </div>
                </td>
            </tr>
        </c:forEach>
    </table>

</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<spring:url value="/resources/bootstrap/js/bootstrap.min.js" var="bootstrapJs"/>
<script src="${bootstrapJs}"></script>
</body>
</html>
