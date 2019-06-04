<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>View book</title>

    <link href="${contextPath}/webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/css/style.css" rel="stylesheet">

    <script src="${contextPath}/webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>

<body>

<jsp:include page="../common/header.jsp"/>

<div class="container" style="width: 500px; padding-top: 10px">

    <h2 class="form-signin-heading" style="text-align: center">Book Detail</h2>
    <hr>

    <div class="form-group">
        <span style="width: 25%; display: inline-block"><strong>Title</strong></span>
        <span>${book.title}</span>
    </div>

    <div class="form-group">
        <span style="width: 25%; display: inline-block"><strong>Author</strong></span>
        <span>${book.author}</span>
    </div>

    <div class="form-group">
        <span style="width: 25%; display: inline-block"><strong>Description</strong></span>
        <span>${book.description}</span>
    </div>

    <hr>

</div>

<jsp:include page="../common/footer.jsp"/>
</body>
</html>