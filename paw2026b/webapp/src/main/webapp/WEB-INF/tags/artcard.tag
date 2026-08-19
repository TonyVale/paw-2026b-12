<%@ tag pageEncoding="UTF-8" %>

<%@ attribute name="name" required="true" %>
<%@ attribute name="image" required="true" %>
<%@ attribute name="artist" required="true" %>
<%@ attribute name="price" required="true" %>

<div class="card h-100 shadow-sm border-0">

    <!-- Imagen de la obra -->
    <img
        src="${image}"
        class="card-img-top"
        alt="${name}"
        style="height: 350px; object-fit: cover;"
    >

    <div class="card-body d-flex flex-column">

        <!-- Nombre -->
        <h5 class="card-title mb-1">
            ${name}
        </h5>

        <!-- Artista -->
        <p class="card-text text-muted mb-3">
            Por ${artist}
        </p>

        <!-- Precio -->
        <div class="mb-3">
            <span class="fs-5 fw-bold">
                $${price}
            </span>
        </div>

        <!-- Comprar -->
        <button
            type="button"
            class="btn btn-primary w-100 mt-auto"
        >
            Comprar
        </button>

    </div>

</div>