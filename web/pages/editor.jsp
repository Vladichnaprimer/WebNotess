<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
    <title>Editor</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/bootstrap-theme.css" rel="stylesheet" media="screen"/>
    <%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />--%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/prettify.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstraphtml5.css"/>


</head>

<body>

<nav class="navbar navbar-default navbar-static-top">
    <div class="nav navbar-nav">
        <a class="navbar-brand" href="#">WebNote</a>
    </div>
    <security:authorize access="isAuthenticated()">
    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="btn-large"><a href="${pageContext.request.contextPath}/pages/profile.jsp">Profile<span
                        class="sr-only">(current)</span></a></li>
                <li class="btn-large"><a href="${pageContext.request.contextPath}/pages/createNote.jsp">Create<span
                        class="sr-only">(current)</span></a></li>
            </ul>
            <ul class="nav navbar-nav">
                <li class="btn-large"><a href="${pageContext.request.contextPath}/index.htm">Logout <span
                        class="sr-only">(current)</span></a></li>
            </ul>
        </div>
    </div>
    </security:authorize>
</nav>

<div class="container">
    <form action="${pageContext.request.contextPath}/editNote.htm" method="post" role="form" class="form-inline">
        <input type="hidden" name="id" value="${editNote.id}"/>
        <input type="hidden" name="userId.id" value="${editNote.userId.id}"/>

        <div class="hero-unit" style="margin-top:60px">
            <h1 style="font-size:58px">
                <small>Edit your notes</small>
            </h1>
            <hr/>
            <label>Title</label> <br/>
            <input class="textarea form-control"  name="title"  value="${editNote.title}" placeholder="Title ..."
                      style="height: 30px; width: 200px" />  <br/><br/>
            <label>Text</label><br/>
            <textarea class="textarea form-control" name="text" placeholder="Enter text ..."
                      style="width: 600px; height: 200px">${editNote.text}</textarea>
        </div>

        <br/>
        <button style="width: 15% " type="submit" class="btn btn-success">Save</button>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

    </form>

    <form action="${pageContext.request.contextPath}/delete.htm" method="post" role="form" class="form-inline">
        <input type="hidden" name="id" value="${editNote.id}"/>
        <button style="width: 15% " type="submit" class="btn btn-success">Delete</button>

        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    </form>
    <br/>


</div>

</body>
</html>