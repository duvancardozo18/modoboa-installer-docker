FROM debian:bullseye-slim

# Instalar dependencias necesarias
RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-venv \
    git \
    curl \
    gnupg2 \
    sudo \
 && rm -rf /var/lib/apt/lists/*

# Crear directorio de trabajo
WORKDIR /opt

# Clonar el instalador de Modoboa
RUN git clone https://github.com/modoboa/modoboa-installer.git

WORKDIR /opt/modoboa-installer

# Comando por defecto: ejecutar el instalador con tu dominio
CMD ["python3", "run.py", "duvancardozo.space"]
