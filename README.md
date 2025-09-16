# Control de versiones del proveedor

**Objetivo:** usar `required_providers` y `.terraform.lock.hcl`.

1. En el bloque `terraform` declara `required_providers` para `azurerm` con versión `~> 3.0`.
2. Observa cómo se genera el `.terraform.lock.hcl`.
3. Cambia el constraint a otra versión (`~> 4.0`) y corre `terraform init -upgrade`.
4. Explica qué cambia en el lock file.

**Conceptos:** bloqueo de versiones, reproducibilidad.
