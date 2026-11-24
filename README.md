# Codex GStack 🚀

**50+ AI engineering skills, automated QA, code review, Playwright browser automation, security audits, and shipping workflows — adapted for OpenAI Codex.**

*La suite completa de skills, QA visual, code review, browser automation y deploy pensada para trabajar directamente con Codex.*

[![MIT License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)
[![Codex Ready](https://img.shields.io/badge/OpenAI_Codex-ready-111827.svg)](#instalacion-rapida--quick-start)
[![Based on gstack](https://img.shields.io/badge/based_on-garrytan%2Fgstack-blue.svg)](ATTRIBUTION.md)
[![Apoyar en Cafecito](https://img.shields.io/badge/Apoyar-Cafecito-ffdd00?logo=buy-me-a-coffee&logoColor=black)](https://cafecito.app/digitalmenteseguro)

> **Codex GStack** adapts [`garrytan/gstack`](https://github.com/garrytan/gstack) into a zero-conflict `gstack-*` skill suite for **OpenAI Codex** (`~/.codex/skills`). Turn any Codex session into a structured engineering workflow: architecture planning, PR code review, live Playwright QA, visual design review, security auditing (CSO), performance benchmarking, and deployment verification.

---

## Por qué usar Codex GStack / Why Codex GStack

Codex es excelente editando código, investigando bugs y ejecutando comandos. **Codex GStack** le suma estructura operativa de equipo senior sin burocracia:

- 🤖 **50+ Skills con prefijo `gstack-*`**: se instalan directo en `~/.codex/skills` sin colisionar con tus otras skills.
- 🧪 **Automated QA & Playwright Browser (`gstack-qa`, `gstack-browse`)**: abre un navegador headless real, toma screenshots, inspecciona el DOM, valida responsive y detecta regresiones visuales o funcionales.
- 🔍 **AI Code Review & Root-Cause Debugging (`gstack-review`, `gstack-investigate`)**: revisa diffs buscando bugs, riesgos de seguridad y regresiones antes de mergear.
- 🛡️ **Security Audit (`gstack-cso`)**: auditoría OWASP, escaneo de secretos, supply chain y modelado de amenazas.
- 🚢 **Shipping & Deploy Workflows (`gstack-ship`, `gstack-land-and-deploy`, `gstack-canary`)**: automatiza checks, tests, changelogs y verificación post-deploy.
- 💻 **Soporte nativo Windows + macOS + Linux**: scripts dedicados (`install-codex.ps1` y `install-codex.sh`) con detección automática de Bun y Git Bash.

---

## Instalacion rapida / Quick Start

### Opción 1: Pedírselo directamente a Codex (Recomendado)

Copia y pega este prompt en tu sesión de Codex:

```text
Instala Codex GStack desde https://github.com/facuquilmes123/codex-gstack.
Clona el repositorio en ~/.gstack/repos/codex-gstack, instala Bun si falta, ejecuta ./setup --host codex --prefix y verifica que aparezcan las skills gstack-* en ~/.codex/skills.
```

### Opción 2: Windows PowerShell

```powershell
git clone --single-branch --depth 1 https://github.com/facuquilmes123/codex-gstack.git "$HOME\.gstack\repos\codex-gstack"
cd "$HOME\.gstack\repos\codex-gstack"
powershell -ExecutionPolicy Bypass -File .\scripts\install-codex.ps1
```

### Opción 3: macOS / Linux / Git Bash

```bash
git clone --single-branch --depth 1 https://github.com/facuquilmes123/codex-gstack.git ~/.gstack/repos/codex-gstack
cd ~/.gstack/repos/codex-gstack
bash scripts/install-codex.sh
```

### Requisitos

- **Git** (en Windows incluye Git Bash)
- **Node.js** (en Windows)
- **Bun 1.0+** (los scripts lo instalan automáticamente si falta)
- **Codex** con soporte de skills en `~/.codex/skills`

---

## Skills y comandos principales (`gstack-*`)

### Planificación y Arquitectura
| Comando | Descripción |
| --- | --- |
| `gstack-plan-ceo-review` | Revisa el alcance, producto y estrategia antes de escribir código. |
| `gstack-plan-eng-review` | Valida arquitectura, flujo de datos, edge cases y cobertura de tests. |
| `gstack-plan-design-review` | Crítica de UI/UX y diseño antes de implementar. |
| `gstack-autoplan` | Ejecuta el pipeline completo de revisión automática sobre un plan. |

### Desarrollo, Review y Debugging
| Comando | Descripción |
| --- | --- |
| `gstack-review` | Code review pre-merge buscando bugs, SQL/XSS, trust boundaries y regresiones. |
| `gstack-investigate` | Debugging sistemático con análisis de causa raíz. |
| `gstack-health` | Dashboard de calidad del repositorio (linters, types, tests, dead code). |
| `gstack-context-save` / `gstack-context-restore` | Guarda y recupera el contexto de trabajo entre sesiones. |

### QA, Browser Automation y Diseño
| Comando | Descripción |
| --- | --- |
| `gstack-qa` | QA completo con navegador real, detección y corrección iterativa de bugs. |
| `gstack-qa-only` | Reporte estructurado de QA sin modificar código. |
| `gstack-browse` | CLI de navegador headless ultrarrápido basado en Playwright para DOM, forms y screenshots. |
| `gstack-design-review` | Auditoría visual de espaciado, jerarquía, responsive y consistencia UI. |
| `gstack-benchmark` | Medición de performance, tiempos de carga y Core Web Vitals. |

### Seguridad, Documentación y Deploy
| Comando | Descripción |
| --- | --- |
| `gstack-cso` | Auditoría de seguridad integral (secretos, dependencias, OWASP, CI/CD). |
| `gstack-document-generate` | Genera documentación técnica y guías desde cero. |
| `gstack-ship` | Prepara entrega: tests, review, versión, changelog y PR. |
| `gstack-land-and-deploy` | Merge, deploy y verificación de salud en producción (`gstack-canary`). |

---

## Ejemplos de uso en Codex

Reiniciá Codex o abrí una nueva sesión después de instalar y probá:

```text
Usa gstack-review para revisar mis cambios antes de deployar.
```

```text
Usa gstack-qa para probar https://mi-sitio.com en mobile y desktop.
```

```text
Usa gstack-investigate para encontrar por qué falla este checkout.
```

```text
Usa gstack-cso para auditar la seguridad del repositorio y detectar posibles leaks.
```

```text
Usa gstack-ship para correr tests, actualizar changelog y dejar listo el deploy.
```

---

## Diferencias con `gstack` original

- **Codex-first**: documentación, prompts e instaladores diseñados específicamente para **OpenAI Codex**.
- **Prefijo `gstack-*` por defecto**: evita colisiones con otras skills en `~/.codex/skills`.
- **Instalación optimizada en Windows y Unix**: detección dinámica de Git Bash y Bun sin pasos manuales.

La base técnica original pertenece a **Garry Tan** ([`garrytan/gstack`](https://github.com/garrytan/gstack)) bajo licencia MIT. Ver [ATTRIBUTION.md](ATTRIBUTION.md).

---

## Actualizar / Update

**macOS / Linux / Git Bash:**
```bash
cd ~/.gstack/repos/codex-gstack
git pull --ff-only
bash scripts/install-codex.sh
```

**Windows PowerShell:**
```powershell
cd "$HOME\.gstack\repos\codex-gstack"
git pull --ff-only
powershell -ExecutionPolicy Bypass -File .\scripts\install-codex.ps1
```

---

## ☕ Apoyar el proyecto / Support

Si **Codex GStack** te ahorra tiempo en reviews, QA o deploys, podés invitarme un cafecito para seguir manteniendo esta adaptación, scripts y mejoras:

[![Invitame un Cafecito](https://img.shields.io/badge/Invitame_un-Cafecito_☕-ffdd00?style=for-the-badge)](https://cafecito.app/digitalmenteseguro)

👉 **[cafecito.app/digitalmenteseguro](https://cafecito.app/digitalmenteseguro)**

---

## Licencia

MIT. Ver [LICENSE](LICENSE).
