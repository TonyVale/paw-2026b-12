<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<body>
<h2>Perfil de <c:out value="${user.username}"/></h2>

<ul>
    <li>id: <c:out value="${user.id}"/></li>
    <li>email: <c:out value="${user.email}"/></li>
</ul>
</body>
</html>
