<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>User Login</title>

    <link href="${contextPath}/webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/css/style.css" rel="stylesheet">

    <script src="${contextPath}/webjars/jquery/1.9.1/jquery.min.js"></script>
    <script src="${contextPath}/webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>

<body>

<div class="container">
    <form method="POST" action="login" class="form-signin" style="margin:15% 35%">
        <h2 class="form-heading" style="text-align: center">Please Sign In</h2>

        <span>${error}</span>

        <div class="form-group ${error != null ? 'has-error' : ''}">
            <input name="username" type="text" class="form-control" placeholder="Username" autofocus="true"/>
        </div>

        <div class="form-group ${error != null ? 'has-error' : ''}">
            <input name="password" type="password" class="form-control" placeholder="Password"/>
        </div>

        <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
        <h5 class="text-center"><a href="user/register">Create an account</a></h5>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form>
</div>

</body>
</html>