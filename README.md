# 🚀 SM2_Examen_CICD - PeruFest

[![CI/CD Pipeline](https://github.com/JersonCh/SM2_Examen_CICD/actions/workflows/ci-pipeline.yml/badge.svg)](https://github.com/JersonCh/SM2_Examen_CICD/actions/workflows/ci-pipeline.yml)

**Examen Unidad 3 - Implementación de Pipeline CI/CD con GitHub Actions**

## 📋 Descripción del Proyecto

**PeruFest** es una aplicación móvil Flutter para la gestión y visualización de eventos culturales en el Parque Perú-Tacna. Este repositorio implementa un pipeline completo de Integración y Entrega Continua (CI/CD).

## 🎯 Objetivos del Examen

✅ **1. Tests Unitarios**: Verificar lógica de negocio  
✅ **2. Linting**: Auditar calidad del código  
✅ **3. Build Automatizado**: Generar APK listo para distribuir  

## 🚀 Pipeline CI/CD

El pipeline se ejecuta automáticamente en cada push o pull request a `main`:

### 🔄 Flujo del Pipeline

```
Push/PR → Tests (🧪) → Linting (🔍) → Build APK (🚀) → Artefacto (📦)
```

### 📊 Componentes

| Job | Descripción | Duración ~|
|-----|-------------|-----------|
| 🧪 **Tests** | Ejecuta 8 tests unitarios | 2-3 min |
| 🔍 **Lint** | Análisis de calidad de código | 1-2 min |
| 🚀 **Build** | Compila APK release | 5-8 min |
| 📋 **Summary** | Resumen de resultados | <1 min |

## 🧪 Tests Unitarios Implementados

Se implementaron 5 funciones con sus respectivos tests en `lib/utils/validators.dart`:

1. ✅ **Validar Email** - Verifica formato de email
2. ✅ **Seguridad Contraseña** - Valida longitud mínima
3. ✅ **Calculadora Descuento** - Calcula precio con descuento
4. ✅ **Rango Válido** - Verifica número en rango 1-10
5. ✅ **Texto a Mayúsculas** - Convierte texto a uppercase

```bash
# Ejecutar tests localmente
cd app_perufest
flutter test test/utils/validators_test.dart
```

## 📂 Estructura del Proyecto

```
SM2_Examen_CICD/
├── .github/
│   └── workflows/
│       └── ci_cd.yml              # ⭐ Configuración del pipeline
├── app_perufest/
│   ├── lib/
│   │   ├── models/                # Modelos de datos
│   │   ├── services/              # Servicios (Firebase, API)
│   │   ├── viewmodels/            # Lógica de negocio
│   │   ├── views/                 # Interfaces de usuario
│   │   ├── widgets/               # Componentes reutilizables
│   │   └── utils/
│   │       └── validators.dart    # ⭐ Funciones de validación
│   └── test/
│       └── utils/
│           └── validators_test.dart  # ⭐ Tests unitarios
├── PIPELINE_CICD.md              # Documentación del pipeline
├── verificar_pipeline.ps1        # Script de verificación local
└── README.md                     # Este archivo
```

## 🛠️ Stack Tecnológico

- **Frontend**: Flutter 3.24.0
- **Backend**: Firebase (Auth + Firestore)
- **CI/CD**: GitHub Actions
- **Testing**: flutter_test
- **Linting**: flutter analyze

## 🚦 Cómo Usar

### 1️⃣ Clonar el Repositorio

```bash
git clone https://github.com/JersonCh/SM2_Examen_CICD.git
cd SM2_Examen_CICD
```

### 2️⃣ Instalar Dependencias

```bash
cd app_perufest
flutter pub get
```

### 3️⃣ Ejecutar Tests

```bash
flutter test
```

### 4️⃣ Verificar antes de Push (Opcional)

```powershell
# Ejecutar script de verificación
.\verificar_pipeline.ps1
```

### 5️⃣ Push a GitHub para Activar Pipeline

```bash
git add .
git commit -m "feat: Mi cambio"
git push origin main
```

## 📊 Ver Resultados del Pipeline

1. Ve a [GitHub Actions](https://github.com/JersonCh/SM2_Examen_CICD/actions)
2. Selecciona la ejecución del pipeline
3. Descarga el APK desde **Artifacts**

## 📦 Artefactos Generados

Después de cada build exitoso:
- 📱 **APK Android** (app-release.apk)
- ⏱️ Disponible por **7 días**
- 📥 Descargable desde GitHub Actions

## 🎓 Información Académica

- **Curso**: SM2 - Arquitectura de Software Móvil
- **Tema**: Pipeline CI/CD con GitHub Actions
- **Unidad**: 3
- **Institución**: [Tu institución]
- **Alumno**: [Tu nombre]

## 📚 Documentación Adicional

- 📖 [Documentación del Pipeline](PIPELINE_CICD.md) - Guía detallada
- 🔧 [Flutter Docs](https://docs.flutter.dev/)
- 🚀 [GitHub Actions](https://docs.github.com/en/actions)

## ✅ Checklist del Examen

- [x] ✅ Crear 5 funciones de utilidad
- [x] ✅ Implementar tests unitarios (8 tests)
- [x] ✅ Configurar GitHub Actions
- [x] ✅ Job de Tests
- [x] ✅ Job de Linting
- [x] ✅ Job de Build APK
- [x] ✅ Generar artefactos
- [x] ✅ Documentación completa

## 📞 Contacto

- **GitHub**: [@JersonCh](https://github.com/JersonCh)
- **Repositorio**: [SM2_Examen_CICD](https://github.com/JersonCh/SM2_Examen_CICD)

---

⭐ **Star** este repo si te fue útil | 📝 **Fork** para tu propio proyecto
