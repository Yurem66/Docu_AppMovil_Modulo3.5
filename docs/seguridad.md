# Políticas de Seguridad Móvil - AutoElite Motors & Rentals

Este documento define las medidas, arquitecturas de seguridad y buenas prácticas aplicadas en la aplicación móvil **AutoElite Motors & Rentals** para resguardar la privacidad de los usuarios y la integridad de los datos procesados.

---

## 1. Almacenamiento Local Seguro (Secure Storage)

* **Manejo de Credenciales y Tokens:** Los tokens de sesión (JWT) y la información sensible no se almacenan en texto plano dentro del almacenamiento local por defecto del dispositivo.
* **Cifrado en Dispositivo:** Se utiliza almacenamiento cifrado nativo (*EncryptedSharedPreferences* en sistemas Android / *Keychain* en sistemas iOS) a través de los módulos seguros de React Native.

---

## 2. Validaciones y Sanitización de Entradas (Input Validation)

Para prevenir vulnerabilidades y garantizar la integridad de los datos antes de ser procesados o enviados al servidor:

* **Manejo de Formularios e Inyección de Datos:** Todos los campos de entrada (`TextInput`) cuentan con expresiones regulares (RegEx) para sanitizar caracteres especiales no autorizados.
* **Formateo Automatizado en Tiempo Real:** 
  * **DUI:** Restringe la entrada a dígitos numéricos e inserta automáticamente el guion (`00000000-0`), limitando la longitud a 10 caracteres exactos.
  * **Tarjeta de Crédito / Débito:** Limpia caracteres no numéricos y agrupa los dígitos en bloques de 4.
* **Validación de Correo Electrónico:** Verificación de sintaxis obligatoria que valida la presencia de los caracteres `@` y dominio `.com` / `.sv` antes de habilitar el botón de envío.

---

## 3. Gestión de Permisos del Dispositivo (*Runtime Permissions*)

La aplicación cumple estrictamente con el principio de mínimo privilegio:

* **Permisos Solicitados:** Únicamente se solicita acceso a red (`INTERNET`) y estado de red (`ACCESS_NETWORK_STATE`).
* **Permisos en Tiempo de Ejecución:** La app no solicita acceso a funciones sensibles como cámara, ubicación en segundo plano o lista de contactos a menos que la funcionalidad lo requiera explícitamente en el futuro.

---

## 4. Comunicaciones Cifradas (TLS / HTTPS)

* **Transmisión Segura:** Toda comunicación entre la interfaz de la app móvil y la API REST se realiza obligatoriamente mediante el protocolo cifrado **HTTPS** empleando TLS 1.3.
* **Protección de Datos en Tránsito:** La información de pagos simulados y datos del titular se empaquetan en cargas útiles JSON cifradas, evitando la intercepción de datos intermedios (*Man-in-the-Middle*).
