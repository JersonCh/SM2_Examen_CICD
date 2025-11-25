# 🚀 INSTRUCCIONES PARA ACTIVAR EL PIPELINE

## ✅ Estado Actual
- ✅ Tests unitarios: 8/8 PASANDO
- ✅ Código compilando correctamente
- ✅ Pipeline configurado en `.github/workflows/ci_cd.yml`
- ✅ Documentación completa

## 📋 Pasos para Activar el Pipeline

### OPCIÓN A: Push Directo (Recomendado)

```powershell
# 1. Ver estado actual
git status

# 2. Agregar todos los archivos nuevos
git add .

# 3. Verificar qué se agregará
git status

# 4. Hacer commit
git commit -m "feat: Implementar pipeline CI/CD con tests unitarios

- Agregar 5 funciones de validación en utils/validators.dart
- Implementar 8 tests unitarios (100% pasando)
- Configurar GitHub Actions con 4 jobs (test, lint, build, summary)
- Agregar documentación completa del pipeline
- Incluir script de verificación pre-push"

# 5. Push a GitHub (esto activará el pipeline automáticamente)
git push origin main
```

### OPCIÓN B: Verificar Antes de Push

```powershell
# 1. Ejecutar script de verificación (opcional)
.\verificar_pipeline.ps1

# 2. Si todo está OK, continuar con los pasos del OPCIÓN A
```

## 🔍 Verificar Resultados del Pipeline

### Paso 1: Ve a GitHub Actions
```
https://github.com/JersonCh/SM2_Examen_CICD/actions
```

### Paso 2: Observa la Ejecución
- Verás un nuevo workflow ejecutándose
- Estado: 🟡 Amarillo (en progreso) → ✅ Verde (exitoso)
- Duración aproximada: 10-15 minutos

### Paso 3: Ver Detalles
1. Click en el workflow más reciente
2. Verás los 4 jobs:
   - 🧪 **Tests Unitarios** (~2-3 min)
   - 🔍 **Análisis de Código** (~1-2 min)
   - 🚀 **Build APK** (~5-8 min)
   - 📋 **Resumen** (<1 min)

### Paso 4: Descargar APK
1. Scroll hasta la sección **Artifacts**
2. Click en **perufest-apk**
3. Descarga el archivo ZIP
4. Extrae `app-release.apk`

## 📊 Qué Esperar

### Jobs del Pipeline

#### 🧪 Job 1: Tests Unitarios
```
✓ Checkout código
✓ Configurar Java 17
✓ Configurar Flutter 3.24.0
✓ Instalar dependencias
✓ Ejecutar tests → 8/8 PASADOS ✅
```

#### 🔍 Job 2: Análisis de Código
```
✓ Checkout código
✓ Configurar Java 17
✓ Configurar Flutter 3.24.0
✓ Instalar dependencias
✓ flutter analyze → COMPLETADO ✅
```

#### 🚀 Job 3: Build APK
```
✓ Checkout código
✓ Configurar Java 17
✓ Configurar Flutter 3.24.0
✓ Instalar dependencias
✓ flutter build apk --release
✓ Subir APK como artefacto → DISPONIBLE ✅
```

#### 📋 Job 4: Resumen
```
✓ Mostrar estado final
✓ Confirmar éxito del pipeline ✅
```

## ⚠️ Posibles Problemas y Soluciones

### Problema 1: Tests Fallan
```powershell
# Verificar tests localmente
cd app_perufest
flutter test test/utils/validators_test.dart

# Si fallan, revisar el código en lib/utils/validators.dart
```

### Problema 2: Build Falla
```powershell
# Verificar que compila localmente
cd app_perufest
flutter build apk --release

# Revisar errores y corregir
```

### Problema 3: Push Rechazado
```powershell
# Actualizar rama local primero
git pull origin main

# Resolver conflictos si los hay
# Luego hacer push nuevamente
git push origin main
```

## 📱 Archivos que se Subirán

```
.github/
  workflows/
    ci-pipeline.yml              ← Pipeline CI/CD

app_perufest/
  lib/
    utils/
      validators.dart            ← Funciones de validación
  test/
    utils/
      validators_test.dart       ← Tests unitarios

PIPELINE_CICD.md                 ← Documentación del pipeline
RESUMEN_EXAMEN.md                ← Resumen ejecutivo
README.md                        ← README actualizado
verificar_pipeline.ps1           ← Script de verificación
INSTRUCCIONES_PUSH.md            ← Este archivo
```

## ✅ Checklist Pre-Push

Marca cada item antes de hacer push:

- [ ] Tests ejecutados localmente (8/8 pasando)
- [ ] Código compila sin errores
- [ ] Archivos agregados con `git add .`
- [ ] Commit creado con mensaje descriptivo
- [ ] README.md actualizado
- [ ] Documentación completa
- [ ] Script de verificación funcional (opcional)

## 🎯 Comando Final

Una vez que hayas verificado todo:

```powershell
git push origin main
```

## 📧 Después del Push

1. ✅ Ve a GitHub Actions y monitorea la ejecución
2. ✅ Espera a que todos los jobs completen (badge verde)
3. ✅ Descarga el APK de Artifacts
4. ✅ Documenta los resultados en tu informe del examen

## 🎓 Para el Informe del Examen

Incluye:
1. Screenshot del pipeline exitoso (badge verde)
2. Screenshot de los 4 jobs completados
3. Screenshot de los tests pasando (8/8)
4. Enlace al APK descargado
5. Código de `validators.dart`
6. Código de `validators_test.dart`
7. Archivo `ci_cd.yml`

## 📞 Enlaces Útiles

- **Repositorio**: https://github.com/JersonCh/SM2_Examen_CICD
- **Actions**: https://github.com/JersonCh/SM2_Examen_CICD/actions
- **Documentación**: Ver PIPELINE_CICD.md

---

**¡Buena suerte con tu examen! 🚀**
