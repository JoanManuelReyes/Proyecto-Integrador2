const urlParams = new URLSearchParams(window.location.search);
    if (urlParams.has('error')) {
        const errorMessage = urlParams.get('error');
        if (errorMessage === 'usuario_no_encontrado') {
            alert('Usuario no existe o datos incorrectos.');
        }
    }



document.addEventListener('DOMContentLoaded', function () {
    // Seleccionar el campo de usuario y contraseña
    const usernameInput = document.getElementById('username');
    const passwordInput = document.getElementById('password');
    
    // Función para permitir solo números y un máximo de 8 caracteres en el campo de usuario
    usernameInput.addEventListener('input', function () {
        this.value = this.value.replace(/[^0-9]/g, ''); // Eliminar cualquier cosa que no sea un número
        if (this.value.length > 8) {
            this.value = this.value.slice(0, 8); // Limitar a 8 dígitos
        }
    });

    // Función para limitar el campo de contraseña a un máximo de 8 caracteres
    passwordInput.addEventListener('input', function () {
        if (this.value.length > 8) {
            this.value = this.value.slice(0, 8); // Limitar a 8 caracteres
        }
    });
});
