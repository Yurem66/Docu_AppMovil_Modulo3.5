# Diagrama de Casos de Uso - AutoElite Motors & Rentals

## 1. Representación Visual

![Diagrama de Casos de Uso](assets/diagrama_casos_uso.png)

> **Nota:** La imagen del diagrama se encuentra exportada en formato PNG dentro de la carpeta `docs/assets/diagrama_casos_uso.png`.

---

## 2. Descripción de Actores

* **Usuario Cliente:** Cliente final que utiliza la app móvil para consultar vehículos disponibles, realizar solicitudes de alquiler y gestionar sus reservas activas.
* **Sistema API Backend:** Servidor encargado de procesar la lógica de negocio, validar datos de entrada, autenticar usuarios y gestionar la persistencia de datos.
* **Pasarela de Pago / Entidad Bancaria (Simulada):** Servicio encargado de validar las transacciones financieras (Tarjeta de Crédito/Débito, Transferencia a Banco Agrícola o Pago Presencial).

---

## 3. Especificación de Casos de Uso Clave

### CU-01: Iniciar Sesión / Registro de Usuario

* **Actor Principal:** Usuario Cliente.
* **Descripción:** Permite al usuario acceder a su cuenta corporativa o crear un nuevo registro si es un cliente nuevo.
* **Precondición:** Formato de correo electrónico válido (`@` y `.`) y campos obligatorios completados.
* **Flujo Principal:**
  1. El usuario ingresa sus credenciales (o se registra en el formulario secundario).
  2. El sistema valida los campos en tiempo real.
  3. Tras la autenticación exitosa, el sistema redirige al panel principal (*Home*).

### CU-02: Consultar Catálogo por Categorías

* **Actor Principal:** Usuario Cliente.
* **Descripción:** Permite explorar la flota de 21 vehículos clasificados en tres gamas (*Económica*, *Estándar*, *Premium*).
* **Flujo Principal:**
  1. El usuario navega al catálogo y selecciona una categoría.
  2. La app renderiza la lista optimizada mediante componentes `FlatList`.
  3. Muestra la imagen, título, gama y tarifa diaria de cada vehículo.

### CU-03: Procesar Reserva y Selección de Pago

* **Actor Principal:** Usuario Cliente, Pasarela de Pago.
* **Descripción:** Captura los datos del titular y procesa la transacción de alquiler.
* **Flujo Principal:**
  1. El usuario selecciona un auto y completa sus datos (DUI con formato automático `00000000-0`, correo, teléfono y dirección).
  2. Elige el método de pago: **Tarjeta** (con simulación CVC/Expiración), **Transferencia Bancaria** (Banco Agrícola) o **Pago Presencial** (Aeropuerto).
  3. Confirma la operación y la reserva queda agendada.

### CU-04: Consultar y Cancelar Reservas (Gestión CRUD)

* **Actor Principal:** Usuario Cliente.
* **Descripción:** Permite visualizar las reservas registradas y eliminarlas si el usuario lo requiere.
* **Flujo Principal:**
  1. El usuario accede a la vista de **Mis Reservas Activas**.
  2. Visualiza el desglose completo del alquiler agendado.
  3. Presiona **"Cancelar Reserva"** para remover la solicitud del estado local de la aplicación.