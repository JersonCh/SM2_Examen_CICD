import 'package:flutter_test/flutter_test.dart';
import 'package:app_perufest/utils/validators.dart';

void main() {
  group('Validators Tests', () {
    // Test 1: Validar Email
    test('validarEmail debe retornar true para emails válidos', () {
      expect(Validators.validarEmail('test@example.com'), true);
      expect(Validators.validarEmail('user@domain.org'), true);
    });

    test('validarEmail debe retornar false para emails inválidos', () {
      expect(Validators.validarEmail('testexample.com'), false);
      expect(Validators.validarEmail('test@examplecom'), false);
      expect(Validators.validarEmail('testexample'), false);
    });

    // Test 2: Seguridad Contraseña
    test('validarSeguridad debe retornar true para contraseñas seguras', () {
      expect(Validators.validarSeguridad('1234567'), true);
      expect(Validators.validarSeguridad('password123'), true);
    });

    test('validarSeguridad debe retornar false para contraseñas débiles', () {
      expect(Validators.validarSeguridad('123456'), false);
      expect(Validators.validarSeguridad('pass'), false);
    });

    // Test 3: Calculadora Descuento
    test('calcularDescuento debe calcular correctamente', () {
      expect(Validators.calcularDescuento(100, 10), 90.0);
      expect(Validators.calcularDescuento(200, 25), 150.0);
      expect(Validators.calcularDescuento(50, 50), 25.0);
    });

    // Test 4: Rango Válido
    test('validarRango debe retornar true para números en rango 1-10', () {
      expect(Validators.validarRango(1), true);
      expect(Validators.validarRango(5), true);
      expect(Validators.validarRango(10), true);
    });

    test('validarRango debe retornar false para números fuera de rango', () {
      expect(Validators.validarRango(0), false);
      expect(Validators.validarRango(11), false);
      expect(Validators.validarRango(-5), false);
    });

    // Test 5: Texto a Mayúsculas
    test('textoAMayusculas debe convertir texto correctamente', () {
      expect(Validators.textoAMayusculas('hola'), 'HOLA');
      expect(Validators.textoAMayusculas('PeruFest'), 'PERUFEST');
      expect(Validators.textoAMayusculas('TEST 123'), 'TEST 123');
    });
  });
}