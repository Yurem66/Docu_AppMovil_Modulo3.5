#  Guía de Contribución al Proyecto

¡Gracias por tu interés en contribuir a nuestra documentación y software! Para mantener la calidad y el orden del proyecto, solicitamos seguir estas directrices.

## #1. ¿Cómo Reportar un Error (Bug)?

Antes de abrir un reporte, verifica en la pestaña **Issues** de GitHub que el problema no haya sido reportado previamente. Si el error es nuevo:
* Abre una nueva incidencia utilizando la plantilla **Bug Report**.

* Describe los pasos exactos para reproducir el fallo.
* Incluye capturas de pantalla si el problema es visual o de navegación web.

## #2. Flujo de Trabajo con Ramas (Git Flow)

Prohibido realizar commits directos sobre la rama `main`. Todo cambio debe trabajarse en ramas independientes:
* Para nuevas funciones: `feature/nombre-funcionalidad`
* Para corrección de errores: `fix/descripcion-error`

## #3. Estándar de Mensajes de Commit

Utiliza el estándar de Commits Convencionales:
* `docs: ...` para cambios en archivos Markdown o documentaciones.
* `fix: ...` para corrección de enlaces rotos o errores visuales.
* `feat: ...` para inclusión de nuevos módulos o páginas.