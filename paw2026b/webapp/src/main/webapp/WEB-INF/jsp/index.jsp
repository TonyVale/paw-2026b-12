<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<body>
<h2>Hello ${greeting}!</h2>

<c:if test="${not empty user}">
    <p>Usuario <c:out value="${user.id}"/>: <c:out value="${user.username}"/></p>
</c:if>
</body>
</html>
