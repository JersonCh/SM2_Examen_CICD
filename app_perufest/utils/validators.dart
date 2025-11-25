class Validators {
  // 1. Validar Email
  static bool validarEmail(String email) {
    return email.contains('@') && email.contains('.');
  }

  // 2. Seguridad Contraseña
  static bool validarSeguridad(String password) {
    return password.length > 6;
  }

  // 3. Calculadora Descuento
  static double calcularDescuento(double precio, double porcentajeDescuento) {
    return precio - (precio * porcentajeDescuento / 100);
  }

  // 4. Rango Válido
  static bool validarRango(int numero) {
    return numero >= 1 && numero <= 10;
  }

  // 5. Texto a Mayúsculas
  static String textoAMayusculas(String texto) {
    return texto.toUpperCase();
  }
}