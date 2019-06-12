<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<div class="modal fade" id="modalEditBook" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <form id="ajaxEditBookForm" method="POST" action="${contextPath}/book/edit">
        <jsp:include page="contendBookModal.jsp"/>
        <input type="hidden" id="bookId"/>
        <input type="hidden" id="createdAt"/>
        <input type="hidden" id="updatedAt" value="<%=java.lang.System.currentTimeMillis()%>"/>
    </form>
</div>