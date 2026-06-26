# Codex GStack 🚀

**La suite de skills, QA, review, browser automation y shipping pensada para trabajar directamente con Codex.**

[![MIT License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)
[![Codex Ready](https://img.shields.io/badge/Codex-ready-111827.svg)](#instalacion-en-codex)
[![Based on gstack](https://img.shields.io/badge/based_on-gstack-blue.svg)](ATTRIBUTION.md)
[![Donar](https://img.shields.io/badge/apoyar-Cafecito-ffdd00.svg)](https://cafecito.app/digitalmenteseguro)

> Codex GStack adapta el flujo de trabajo de `gstack` para que Codex pueda usarlo como una caja de herramientas completa: planificacion, revision tecnica, QA visual, navegador, auditorias, documentacion, deploy y seguimiento post-release.

## Por que usar Codex GStack

Codex es muy bueno editando codigo, investigando bugs y verificando cambios. Codex GStack le agrega una estructura operativa: comandos especializados, checklists, flujos de QA, revision de arquitectura, browser automation y rutinas de deploy para convertir una sesion de Codex en un flujo de trabajo mas parecido a un equipo tecnico completo.

Ideal para:

- 🤖 **Usuarios de Codex** que quieren comandos listos para revisar, probar y deployar.
- 🧪 **QA de sitios web** con navegador real, screenshots, responsive checks y flujos de usuario.
- 🛠️ **Desarrollo full-stack** con revision de bugs, seguridad, performance y DX.
- 🚢 **Deploys mas ordenados** con pasos de verificacion antes y despues de publicar.
- 🧠 **Equipos chicos o builders solos** que necesitan mas criterio operativo sin sumar burocracia.

## Funciones principales

| Comando | Para que sirve |
| --- | --- |
| `gstack-qa` | Probar una app, abrir navegador, detectar errores visuales y funcionales. |
| `gstack-review` | Revisar cambios de codigo buscando bugs, riesgos y regresiones. |
| `gstack-investigate` | Investigar errores, fallos o comportamientos rotos. |
| `gstack-ship` | Preparar entrega, validar tests y ordenar el cierre de cambios. |
| `gstack-land-and-deploy` | Flujo de merge/deploy/verificacion cuando el proyecto lo permite. |
| `gstack-design-review` | Detectar problemas de UI, responsive, jerarquia visual y consistencia. |
| `gstack-benchmark` | Revisar performance, PageSpeed, regresiones y tiempos de carga. |
| `gstack-cso` | Auditoria de seguridad con foco practico. |
| `gstack-document-generate` | Crear documentacion tecnica o funcional. |
| `gstack-context-save` / `gstack-context-restore` | Guardar y recuperar contexto de trabajo. |
| `gstack-browse` | Navegador headless rapido para inspeccionar paginas, DOM, screenshots y flows. |

Tambien incluye skills para producto, arquitectura, diseño, documentacion, salud del repo, canary checks, retro y mas.

## Instalacion en Codex

### Opcion 1: pedirselo a Codex

Copia y pega esto en Codex:

```text
Instala Codex GStack desde https://github.com/facuquilmes123/codex-gstack.
Clona el repositorio en ~/.gstack/repos/codex-gstack, instala Bun si falta, ejecuta ./setup --host codex --prefix y verifica que aparezcan las skills gstack-* en ~/.codex/skills.
```

### Opcion 2: Windows PowerShell

```powershell
git clone --single-branch --depth 1 https://github.com/facuquilmes123/codex-gstack.git "$HOME\.gstack\repos\codex-gstack"
cd "$HOME\.gstack\repos\codex-gstack"
powershell -ExecutionPolicy Bypass -File .\scripts\install-codex.ps1
```

### Opcion 3: macOS / Linux / Git Bash

```bash
git clone --single-branch --depth 1 https://github.com/facuquilmes123/codex-gstack.git ~/.gstack/repos/codex-gstack
cd ~/.gstack/repos/codex-gstack
bash scripts/install-codex.sh
```

## Requisitos

- Git
- Node.js en Windows
- Bun 1.0 o superior
- Codex con soporte de skills en `~/.codex/skills`

Si Bun no esta instalado, los scripts intentan instalarlo automaticamente.

## Como usarlo

Despues de instalar, reinicia Codex o abre una nueva sesion para que cargue las skills.

Ejemplos:

```text
Usa gstack-review para revisar mis cambios antes de deployar.
```

```text
Usa gstack-qa para probar https://mi-sitio.com en mobile y desktop.
```

```text
Usa gstack-investigate para encontrar por que falla este checkout.
```

```text
Usa gstack-design-review para detectar problemas responsive y de UI.
```

```text
Usa gstack-ship para preparar el cierre, verificar tests y dejar listo el deploy.
```

## SEO: para que tipo de busquedas sirve este proyecto

Codex GStack esta pensado para quienes buscan:

- herramientas para Codex
- skills para Codex
- agentes de IA para programar
- automatizacion de QA con Codex
- revision de codigo con IA
- testing visual con Playwright y Codex
- browser automation para agentes de IA
- flujo de deploy asistido por IA
- alternativa de gstack para Codex
- adaptar Claude Code tools a Codex

## Diferencia con gstack original

Este repositorio es una adaptacion orientada a Codex. Mantiene la base tecnica de gstack y prioriza:

- Instalacion directa en `~/.codex/skills`
- Comandos con prefijo `gstack-*` para evitar conflictos
- Documentacion enfocada en usuarios de Codex
- Prompts de instalacion simples para pegar directamente en Codex
- Uso practico en proyectos reales de desarrollo web, QA, review y deploy

La base original pertenece a Garry Tan y esta publicada con licencia MIT. Ver [ATTRIBUTION.md](ATTRIBUTION.md).

## Actualizar

```bash
cd ~/.gstack/repos/codex-gstack
git pull --ff-only
bash scripts/install-codex.sh
```

En Windows PowerShell:

```powershell
cd "$HOME\.gstack\repos\codex-gstack"
git pull --ff-only
powershell -ExecutionPolicy Bypass -File .\scripts\install-codex.ps1
```

## Donaciones

Si este proyecto te ahorra tiempo o te ayuda a trabajar mejor con Codex, podes apoyar el mantenimiento:

☕ [Donar en Cafecito](https://cafecito.app/digitalmenteseguro)

## Licencia

MIT. Ver [LICENSE](LICENSE).

Este proyecto conserva la atribucion del trabajo original de gstack segun los terminos de la licencia MIT.
