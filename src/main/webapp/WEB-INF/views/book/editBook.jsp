<%@ page import="java.sql.Timestamp" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Book Update</title>

    <link href="${contextPath}/webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/css/style.css" rel="stylesheet">

    <script src="${contextPath}/webjars/jquery/1.9.1/jquery.min.js"></script>
    <script src="${contextPath}/webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>

<body>

<div class="container">
    <jsp:include page="../common/header.jsp"/>

    <form:form method="POST" modelAttribute="bookForm" class="form-signin" action="edit" style="margin:5% 35%">
        <h2 class="form-signin-heading" style="text-align: center">Book Modification</h2>
        <hr>

        <spring:bind path="title">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="title" class="form-control" placeholder="Title" autofocus="true"/>
                <form:errors path="title"/>
            </div>
        </spring:bind>

        <spring:bind path="author">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="author" class="form-control" placeholder="Author" autofocus="true"/>
                <form:errors path="author"/>
            </div>
        </spring:bind>

        <div class="form-group">
            <form:textarea type="text" path="description" class="form-control" placeholder="Description" autofocus="true"/>
        </div>

        <form:input type="hidden" path="updatedAt" value="<%=new Timestamp(System.currentTimeMillis())%>"/>
        <form:input type="hidden" path="createdAt"/>
        <form:input type="hidden" path="id"/>

        <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
    </form:form>

    <jsp:include page="../common/footer.jsp"/>
</div>
</body>
</html>