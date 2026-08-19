<%@ tag pageEncoding="UTF-8" %>

<div class="card shadow-sm border-0 mx-auto" style="max-width: 550px;">
    <div class="card-body p-4">

        <!-- Header -->
        <div class="d-flex justify-content-between align-items-center mb-4">
            <div>
                <h4 class="mb-1">Método de pago</h4>
                <p class="text-muted mb-0">
                    Completá los datos de tu tarjeta
                </p>
            </div>

            <div class="fs-2">
                💳
            </div>
        </div>

        <!-- Amount -->
        <div class="bg-light rounded p-3 mb-4">
            <div class="d-flex justify-content-between align-items-center">
                <span class="text-muted">Total a pagar</span>
                <strong class="fs-4">$ 25.000,00</strong>
            </div>
        </div>

        <!-- Card holder -->
        <div class="mb-3">
            <label for="cardHolder" class="form-label">
                Titular de la tarjeta
            </label>

            <input
                type="text"
                class="form-control"
                id="cardHolder"
                placeholder="Nombre y apellido"
            >
        </div>

        <!-- Card number -->
        <div class="mb-3">
            <label for="cardNumber" class="form-label">
                Número de tarjeta
            </label>

            <div class="input-group">
                <span class="input-group-text">💳</span>

                <input
                    type="text"
                    class="form-control"
                    id="cardNumber"
                    placeholder="1234 5678 9012 3456"
                    maxlength="19"
                >
            </div>
        </div>

        <!-- Expiration + CVV -->
        <div class="row">

            <div class="col-md-6 mb-3">
                <label for="expiration" class="form-label">
                    Fecha de vencimiento
                </label>

                <input
                    type="text"
                    class="form-control"
                    id="expiration"
                    placeholder="MM / AA"
                    maxlength="5"
                >
            </div>

            <div class="col-md-6 mb-3">
                <label for="cvv" class="form-label">
                    CVV
                </label>

                <input
                    type="password"
                    class="form-control"
                    id="cvv"
                    placeholder="•••"
                    maxlength="4"
                >
            </div>

        </div>

        <!-- Terms -->
        <div class="form-check mb-4">
            <input
                class="form-check-input"
                type="checkbox"
                id="terms"
            >

            <label class="form-check-label" for="terms">
                Acepto los términos y condiciones
            </label>
        </div>

        <!-- Pay button -->
        <button
            type="button"
            class="btn btn-primary btn-lg w-100"
        >
            Pagar $ 25.000,00
        </button>

        <!-- Security message -->
        <div class="text-center mt-3">
            <small class="text-muted">
                🔒 Pago seguro
            </small>
        </div>

    </div>
</div>