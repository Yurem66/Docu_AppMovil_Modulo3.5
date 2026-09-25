# Especificación de Consumo de API REST

La aplicación móvil **AutoElite Motors & Rentals** interactúa con un servidor Backend mediante los siguientes Endpoints RESTful formateados en JSON.

---

## Endpoint 1: Autenticación de Usuario

Permite validar las credenciales de los clientes en la plataforma.

* **Método HTTP:** `POST`
* **Ruta:** `/api/v1/auth/login`
* **Encabezados (Headers):** `Content-Type: application/json`
* **Cuerpo de la Petición (Request Body):**

```json
{
  "email": "demo@correo.com",
  "password": "123"
}