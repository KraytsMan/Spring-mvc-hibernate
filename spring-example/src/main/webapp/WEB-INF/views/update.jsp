<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: volodya
  Date: 07.12.15
  Time: 13:07
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns:th="http://www.thymeleaf.org">
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
<div class="container ">
    <h2>Update account data</h2>

    <c:url var="saveUrl" value="/account"/>
    <form:form modelAttribute="account" method="POST" action="${saveUrl}">
        <form:hidden path="id"/>
        <div class="form-group">
            <form:label path="name" for="name">Name:</form:label>
            <form:input path="name" cssClass="form-control" id="name"/>
        </div>
        <div class="form-group">
            <form:label path="email" for="email">Email:</form:label>
            <form:input path="email" cssClass="form-control" id="email"/>
        </div>

        <div class="form-group">
            <form:label path="password" for="password">Password:</form:label>
            <form:input path="password" cssClass="form-control" id="password"/>
        </div>
        <input type="submit" value="Save" class="btn btn-default"/>
    </form:form>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<spring:url value="/resources/bootstrap/js/bootstrap.min.js" var="bootstrapJs"/>
<script src="${bootstrapJs}"></script>
</body>
</html>
