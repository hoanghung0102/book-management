<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<div class="modal fade" id="modalNewBook" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <form id="ajaxNewBookForm" method="POST" action="${contextPath}/book/new">
        <jsp:include page="contendBookModal.jsp"/>
        <input type="hidden" id="createdAt" value="<%=java.lang.System.currentTimeMillis()%>"/>
    </form>
</div>