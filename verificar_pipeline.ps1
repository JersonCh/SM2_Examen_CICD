# 🔍 Script de Verificación Pre-Push
# Ejecuta los mismos pasos que el pipeline de GitHub Actions

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "🚀 VERIFICACIÓN PRE-PUSH - PERUFEST" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Cambiar al directorio del proyecto
Set-Location -Path "$PSScriptRoot\app_perufest"

# PASO 1: Tests Unitarios
Write-Host "🧪 PASO 1/3: Ejecutando Tests Unitarios..." -ForegroundColor Yellow
flutter test test/utils/validators_test.dart

if ($LASTEXITCODE -eq 0) {
    Write-Host "✅ Tests Unitarios: PASARON" -ForegroundColor Green
} else {
    Write-Host "❌ Tests Unitarios: FALLARON" -ForegroundColor Red
    Write-Host "⚠️  Corrige los errores antes de hacer push" -ForegroundColor Red
    exit 1
}

Write-Host ""

# PASO 2: Análisis de Código
Write-Host "🔍 PASO 2/3: Analizando calidad del código..." -ForegroundColor Yellow
flutter analyze --no-fatal-infos

if ($LASTEXITCODE -eq 0) {
    Write-Host "✅ Análisis de Código: APROBADO" -ForegroundColor Green
} else {
    Write-Host "⚠️  Análisis de Código: Completado con warnings (no crítico)" -ForegroundColor Yellow
}

Write-Host ""

# PASO 3: Verificar que compile
Write-Host "🔨 PASO 3/3: Verificando compilación..." -ForegroundColor Yellow
Write-Host "   (Este paso puede tardar varios minutos)" -ForegroundColor Gray

flutter build apk --debug

if ($LASTEXITCODE -eq 0) {
    Write-Host "✅ Compilación: EXITOSA" -ForegroundColor Green
} else {
    Write-Host "❌ Compilación: FALLIDA" -ForegroundColor Red
    Write-Host "⚠️  Corrige los errores de compilación antes de hacer push" -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "🎉 VERIFICACIÓN COMPLETADA EXITOSAMENTE" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "✅ Todo está listo para hacer push a GitHub" -ForegroundColor Green
Write-Host ""
Write-Host "Comandos sugeridos:" -ForegroundColor Yellow
Write-Host "  git add ." -ForegroundColor White
Write-Host "  git commit -m ""feat: Agregar pipeline CI/CD con tests""" -ForegroundColor White
Write-Host "  git push origin main" -ForegroundColor White
Write-Host ""
