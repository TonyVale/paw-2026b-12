<%@ tag pageEncoding="UTF-8" %>

<nav class="navbar navbar-expand-lg bg-white border-bottom shadow-sm">
    <div class="container">

        <!-- Logo / Nombre -->
        <a class="navbar-brand fw-bold fs-4" href="#">
            ArtGallery
        </a>

        <!-- Botón para mobile -->
        <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarContent"
            aria-controls="navbarContent"
            aria-expanded="false"
            aria-label="Toggle navigation"
        >
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Contenido -->
        <div class="collapse navbar-collapse" id="navbarContent">

            <!-- Links -->
            <ul class="navbar-nav mx-auto mb-2 mb-lg-0">

                <li class="nav-item">
                    <a class="nav-link active" href="#">
                        Inicio
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="#">
                        Compras
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="#">
                        Ecargos
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="#">
                        Subastas
                    </a>
                </li>

            </ul>

            <!-- Acciones -->
            <div class="d-flex gap-2">

                <a href="#" class="btn btn-outline-dark">
                    Iniciar sesión
                </a>

                <a href="#" class="btn btn-dark">
                    Registrarse
                </a>

            </div>

        </div>

    </div>
</nav>