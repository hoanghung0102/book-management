<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Create an account</title>
    <link href="${contextPath}/webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/css/style.css" rel="stylesheet">
    <script src="${contextPath}/webjars/jquery/1.9.1/jquery.min.js"></script>
    <script src="${contextPath}/webjars/resources/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <jsp:include page="../common/header.jsp"/>

    <div class="list-content container">
        <h4 class="text-right"><a href="create">Create Book</a></h4>
        <div class="row" style="background-color:#ccced2; border:1px solid green; padding:10px; margin: 20px 0">
            <div class="col-md-3 text-left"><strong>Title</strong></div>
            <div class="col-md-3 text-left"><strong>Author</strong></div>
            <div class="col-md-3 text-left"><strong>Description</strong></div>
            <div class="col-md-3 text-left"></div>
        </div>

        <c:forEach var="book" items="${books}">
            <div class="row content" style=" padding:10px; margin: 0 15px">
                <div class="col-md-3 text-left">
                    <a href="view?id=${book.id}">${book.title}</a></div>
                <div class="col-md-3 text-left">${book.author}</div>
                <div class="col-md-3 text-left">${book.description}</div>
                <div class="col-md-3 text-left">
                    <a href="edit?id=${book.id}" class="btn btn-outline-info" style="min-width: 70px">Edit</a>
                    <a href="delete?id=${book.id}" class="btn btn-outline-danger" style="min-width: 70px">Delete</a>
                </div>
            </div>
        </c:forEach>
        </div>

    <jsp:include page="../common/footer.jsp"/>
</div>
</body>
</html>