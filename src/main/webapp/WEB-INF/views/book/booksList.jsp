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
    <script type="text/javascript"  src="${contextPath}/webjars/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript"  src="${contextPath}/webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../resources/js/handlerModal.js"></script>
</head>
<body>

<jsp:include page="../dialogmodal/newBookModal.jsp" />
<jsp:include page="../dialogmodal/editBookModal.jsp" />
<jsp:include page="../template/rowTemplate.jsp"/>

<div class="container">
    <jsp:include page="../common/header.jsp"/>

    <div class="list-content container book-list-content">
        <h4 class="text-right"><a href="#modalNewBook" class="btn btn-outline-info" onclick="openModal(event, false);" style="min-width: 70px">Create Book</a></h4>
        <div class="row" style="background-color:#ccced2; border:1px solid green; padding:10px; margin: 20px 0">
            <div class="col-md-3 text-left"><strong>Title</strong></div>
            <div class="col-md-3 text-left"><strong>Author</strong></div>
            <div class="col-md-3 text-left"><strong>Description</strong></div>
            <div class="col-md-3 text-left"></div>
        </div>

        <c:forEach var="book" items="${books}">
            <div id="book-index-${book.id}" class="row content" style=" padding:10px; margin: 0 15px">
                <div class="col-md-3 text-left">
                    <a href="view?id=${book.id}">${book.title}</a></div>
                <div class="col-md-3 text-left">${book.author}</div>
                <div class="col-md-3 text-left">${book.description}</div>
                <div class="col-md-3 text-left">
                    <a data-toggle="modal" data-id="${book.id}" data-title="${book.title}" data-author="${book.author}" data-description="${book.description}"
                       data-createdAt="${book.createdAt}" class="btn btn-outline-info" href="#modalEditBook" onclick="openModal(event, true);" style="min-width: 70px">Edit</a>
                    <a class="btn btn-outline-danger" style="min-width: 70px" onclick="deleteBook(${book.id});">Delete</a>
                </div>
            </div>
        </c:forEach>
    </div>

    <jsp:include page="../common/footer.jsp"/>
</div>
</body>
</html>