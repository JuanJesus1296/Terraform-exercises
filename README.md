# Crear un módulo propio

**Objetivo:** trabajar con módulos, inputs/outputs.

1. Crea un módulo `network/` que despliegue una Virtual Network y una Subnet.

    * Variables: nombre, dirección CIDR.
    * Output: ID de la VNet y de la Subnet.

2. Crea un módulo `compute/` que despliegue una Azure Container Instance (ACI) dentro de la Subnet.

    * Variables: nombre de contenedor, imagen (por defecto `nginx`).
    * Output: ID de Azure Container Instance.

3. En el main usa ambos módulos y conéctalos (el output de `network` pasa como input a `compute`).

**Conceptos:** módulos, variables, outputs, reusabilidad.
