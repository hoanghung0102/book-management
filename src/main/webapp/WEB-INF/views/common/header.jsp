<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <script src="${contextPath}/webjars/handlebars/4.0.2/handlebars.js"></script>
</head>

<body>
<div class="header">
    <!-- this is header -->
    <nav class="navbar navbar-inverse">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="/">Home</a>
            </div>
            <c:if test="${pageContext.request.userPrincipal.name != null}">
                <form id="logoutForm" method="POST" action="${contextPath}/logout">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                </form>

                <div style="display: flex">
                    <h4 style="margin-right: 5px">Welcome ${pageContext.request.userPrincipal.name} | </h4>
                    <h4 class="text-right" style="margin-left: auto">
                        <a href="#" onclick="document.forms['logoutForm'].submit()">Logout</a>
                    </h4>
                </div>
            </c:if>
        </div>
    </nav>
</div>
</body>
</html>