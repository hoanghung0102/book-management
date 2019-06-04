<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Admin Page</title>
</head>
<%@ page import="java.util.Date" %>
<body>
<div class="container">

    <div class="starter-template">
        <h1>403 - Access is denied</h1>
        <div>
            <span>
                Hi <strong>${pageContext.request.userPrincipal.name}</strong>. You do not have permission to access this page.
            </span>
        </div>
        <div style="margin-top: 15px">
            <strong>Current Time is</strong>: <%=new Date() %>
        </div>
    </div>

</div>
</body>
</html>
