# Manual Técnico de Despliegue e Infraestructura
## 1. Arquitectura de Despliegue
El sistema está estructurado bajo un modelo de 3 capas:

* **Capa de Presentación (Frontend):** Aplicación cliente consumida por el usuario final.
* **Capa de Negocio (Backend API):** Servidor de aplicaciones encargado de procesar reglas
de negocio.
* **Capa de Datos:** Motor de Base de Datos PostgreSQL con soporte transaccional.
## 2. Requisitos Mínimos de Infraestructura
* **Procesador (CPU):** 2 Cores vCPU a 2.0 GHz o superior.
* **Memoria RAM:** 4 GB mínimo (8 GB recomendado para producción).
* **Almacenamiento:** 20 GB SSD.
* **Red:** Dirección IP Pública, puertos 80 (HTTP), 443 (HTTPS) y 5432 (PostgreSQL) abiertos.
* **Sistema Operativo Base:** Linux Ubuntu Server 22.04 LTS.
## 3. Despliegue con Docker
### Construcción de la Imagen
Para empaquetar el portal web, ejecuta en la terminal:
`docker build -t portal-documentacion:v1 .`
### Ejecución del Contenedor
`docker run -d -p 8080:80 --name servidor-docu portal-documentacion:v1`