# Guía de Instalación y Configuración del Entorno Móvil

Este documento describe los requisitos de sistema y los pasos necesarios para instalar y ejecutar la aplicación móvil **AutoElite Motors & Rentals** en dispositivos físicos o emuladores.

---

## 1. Requisitos del Dispositivo / Emulador

Para garantizar el funcionamiento óptimo de la aplicación, el dispositivo cliente debe cumplir con los siguientes parámetros mínimos:

* **Sistema Operativo:** Android 8.0 (API Nivel 26) o superior / iOS 13.0 o superior.
* **Entorno de Ejecución:** Expo Go (para pruebas de desarrollo) o archivo ejecutable compilado (`.apk` / `.ipa`).
* **Memoria RAM:** Mínimo 2 GB (Recomendado 4 GB).
* **Almacenamiento Libre:** Mínimo 100 MB.
* **Conectividad:** Acceso a red Internet o Wi-Fi para la consulta de servicios REST y renderizado de imágenes del catálogo.

---

## 2. Procedimiento de Instalación para Pruebas (Archivo APK)

1. **Descarga del paquete:** Descargue el archivo de instalación ejecutable `AutoElite_v1.0.0.apk` desde la sección de **Releases** de este repositorio.
2. **Habilitar orígenes desconocidos:** En su dispositivo Android, diríjase a **Ajustes > Seguridad** y active la opción **"Instalar aplicaciones de fuentes desconocidas"**.
3. **Ejecución del instalador:** Abra el gestor de archivos del dispositivo, seleccione el archivo `AutoElite_v1.0.0.apk` y presione **Instalar**.
4. **Permisos iniciales:** Acepte los permisos básicos de red e interfaz solicitados durante el primer inicio.
5. **Verificación:** Abra la aplicación desde el cajón de aplicaciones y compruebe la navegación en el panel principal (*Home*).

---

## 3. Configuración del Entorno de Desarrollo (Expo CLI)

Si desea ejecutar y auditar el código fuente desde un entorno de desarrollo local:

1. **Clonar el repositorio:**
   ```bash
   git clone [https://github.com/tu-usuario/Docu_AppMovil_Modulo35.git](https://github.com/tu-usuario/Docu_AppMovil_Modulo35.git)