<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>

<body>
<div class="footer">
    <!-- this is footer -->

    <div class="container">
        <!-- this is footer -->
        &#169 2019 hoanghung0102.com
        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <span>| Logged user: ${pageContext.request.userPrincipal.name}</span>
        </c:if>
    </div>
</div>
</body>
</html>
