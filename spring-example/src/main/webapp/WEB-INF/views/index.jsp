<%--
  Created by IntelliJ IDEA.
  User: volodya
  Date: 06.12.15
  Time: 20:15
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Spring MVC Example</title>
    <spring:url value="/resources/bootstrap/css/bootstrap.min.css"
                var="bootstrapCss"/>
    <link href="${bootstrapCss}" rel="stylesheet"/>
    <style>
        .row:not(:last-child) {
            border-bottom: 1px solid #ccc;
        }

        .col-xs-3:not(:last-child) {
            border-right: 1px solid #ccc;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="navbar navbar-inverse">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand"
                       href="javascript:window.location.reload();">Spring mvc
                        example</a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container ">
    <div class="row">
        <div class="col-xs-3">
        </div>
        <div class="col-xs-3"><img src="/resources/images/add199.png">
            <a href="/account"><h4>Add new account</h4></a>
        </div>
        <div class="col-xs-3"><img src="/resources/images/multiple25.png">
            <a href="/accounts"><h4>List accounts</h4></a></div>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<spring:url value="/resources/bootstrap/js/bootstrap.min.js" var="bootstrapJs"/>
<script src="${bootstrapJs}"></script>
</body>
</html>
