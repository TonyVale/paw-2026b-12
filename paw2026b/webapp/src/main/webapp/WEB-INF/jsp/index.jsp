<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="ui" tagdir="/WEB-INF/tags" %>


<html>
    <!-- Librería de bootstrap !-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Testeo de componentes</title>
</head>

<body>
    <h2>Esta es una demo !!!</h2>
    <ui:payment    
    />
    <c:if test="${not empty user}">
        <p>Usuario <c:out value="${user.id}"/>: <c:out value="${user.username}"/></p>
    </c:if>
</body>
</html>
