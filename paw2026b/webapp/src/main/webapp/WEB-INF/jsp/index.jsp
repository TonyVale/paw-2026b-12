<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="ui" tagdir="/WEB-INF/tags" %>


<html>
<head>
    <!-- Librería de bootstrap !-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Testeo de componentes</title>
</head>

<body>
    <ui:navbar/>
    <div class="container py-5">
        <div class="row d-flex justify-content-center ">
            <div class="col-md-4 justify-content-center ">
                <h1 class="text-center card-title fw-semibold text-center">Esta es una demo</h2>
            </div>
        </div>
        <div class="row d-flex  justify-content-center ">
            <div class="col-md-4">
                <ui:artcard
                    name="La noche estrellada"
                    image="https://cdn.mediatheque.epmoo.fr/link/3c9igq/qgk1buttmqvvleo.jpg"
                    artist="Vincent van Gogh"
                    price="250000"
                />
            </div>

            <div class="col-md-4">
                <ui:artcard
                    name="Composición VIII"
                    image="https://cms.guggenheim-bilbao.eus/uploads/2020/09/composition-8.jpg"
                    artist="Wassily Kandinsky"
                    price="180000"
                />
            </div>
        </div>

        <div class="row d-flex  justify-content-center ">
            <div class="col-md-4">
            <ui:payment    
                amount="100"
                currency="ARS"
            />
            </div> 
        </div>
        
    </div>

    <c:if test="${not empty user}">
        <p>Usuario <c:out value="${user.id}"/>: <c:out value="${user.username}"/></p>
    </c:if>
</body>
</html>
