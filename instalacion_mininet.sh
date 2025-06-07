#!/bin/bash

# Script de instalación automatizada de Mininet

# Clonar el repositorio oficial
git clone https://github.com/mininet/mininet

# Cambiar al directorio mininet
cd mininet

# Listar versiones disponibles
git tag

# Crear y cambiar a una nueva rama con versión específica
git checkout -b mininet-2.3.0 2.3.0

# Volver al directorio anterior
cd ..

# Ejecutar el script de instalación con todas las dependencias
mininet/util/install.sh -a

# Probar conectividad básica con topología simple
sudo mn --switch ovsbr --test pingall
