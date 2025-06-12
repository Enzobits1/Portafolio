#!/bin/bash

echo "🔧 Instalando Flutter..."

# Clonamos Flutter (solo para este build)
git clone https://github.com/flutter/flutter.git -b stable
export PATH="$PATH:`pwd`/flutter/bin"

echo "✅ Flutter instalado"
flutter --version

echo "🔧 Activando Flutter Web (por las dudas)"
flutter config --enable-web

echo "🔧 Corriendo pub get"
flutter pub get

echo "🚀 Generando build para Web..."
flutter build web

echo "✅ Build completo"
