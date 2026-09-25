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
## Endpoint 2: Consulta de Datos Principales
Devuelve el listado de registros mostrados en la pantalla principal de la app móvil.

* **Método HTTP:** `GET`
* **Ruta:** `/api/v1/datos`
* **Encabezados (Headers):** `Accept: application/json`
* **Respuesta Exitosa (200 OK):**
```json
{
  "status": "success",
  "total": 21,
  "data": [
    {
      "id": "st1",
      "title": "Toyota Corolla Sedan",
      "category": "Estándar",
      "price": "$45/día",
      "image": "[https://images.unsplash.com/photo-1621007947382-bb3c3994e3fb?w=400](https://images.unsplash.com/photo-1621007947382-bb3c3994e3fb?w=400)"
    }
  ]
}