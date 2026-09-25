# Arquitectura del Sistema Móvil - AutoElite Motors & Rentals

Este documento describe la arquitectura técnica, la pila tecnológica (Tech Stack), la organización de componentes y la estrategia de manejo de datos de la aplicación móvil **AutoElite Motors & Rentals**.

---

## 1. Pila Tecnológica (Tech Stack)

La aplicación está construida sobre tecnologías modernas de desarrollo híbrido/nativo:

* **Framework Principal:** React Native (compatible con Expo / React Native CLI).
* **Lenguaje de Programación:** JavaScript (ECMAScript 2026+ / ES6+).
* **Gestión de Estado:** React Hooks (`useState`) para la persisitencia temporal de datos y estados locales.
* **Plataformas de Despliegue:** Android (API Nivel 26+) e iOS (iOS 13.0+).
* **Estilizado UI:** API de `StyleSheet` de React Native orientada a la paleta corporativa (Slate `#0F172A` y Amber/Gold `#D97706`).

---

## 2. Arquitectura de Software y Patrón de Diseño

La aplicación utiliza un patrón de diseño **Basado en Componentes y Vistas Declarativas**, estructurado en tres capas principales:

### A. Capa de Presentación (UI Layer)
* **Pantallas (Screens):** Vistas dinámicas condicionadas por el estado global (`Login`, `Register`, `Home`, `Catalog`, `Details`, `MyReservations`).
* **Componentes Nativos Optimizados:**
  * `FlatList`: Para la renderización eficiente de listas extensas (catálogo de 21 vehículos y reservas activas).
  * `ScrollView`: Para la navegación en formularios largos.
  * `KeyboardAvoidingView`: Ajuste automático para evitar que el teclado nativo tape los campos de texto (`TextInput`).

### B. Capa de Lógica de Negocio y Control (Business Logic)
* **Formateadores en Tiempo Real:** Algoritmos locales para dar formato automático a la entrada del Documento Único de Identidad (DUI: `00000000-0`), número de tarjeta bancaria y fecha de expiración.
* **Validadores de Formularios:** Verificación de campos obligatorios, sintaxis de correo electrónico (`@` y `.`) y longitudes mínimas antes de confirmar reservas.

### C. Capa de Datos y Persistencia (Data Layer)
* **Gestión de Estado Dinámico (CRUD Local):** Arreglos de objetos que almacenan temporalmente en memoria los usuarios registrados y la lista de reservas activas (`userReservations`).
* **Consumo de Servicios:** Arquitectura preparada para el intercambio de información vía API REST mediante peticiones en formato JSON.

---

## 3. Diagrama de Estructura de Directorios (Código Fuente)

El código de la app sigue una organización modular estándar:

```text
src/
├── assets/          # Imágenes estáticas y recursos gráficos
├── components/      # Componentes reutilizables (Botones, Tarjetas, Badges)
├── screens/         # Pantallas principales del flujo
│   ├── LoginScreen.js
│   ├── HomeScreen.js
│   ├── CatalogScreen.js
│   ├── ReservationScreen.js
│   └── MyReservationsScreen.js
├── utils/           # Formateadores (DUI, Tarjetas) y validaciones
└── styles/          # Estilos globales y paleta de colores corporativa