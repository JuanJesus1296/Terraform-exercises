# Primer proyecto con Terraform en Azure

**Objetivo:** ciclo de vida básico `init/plan/apply/destroy`.

1. Crea un Resource Group en una región cercana a ti.
2. Dentro del mismo, despliega un Storage Account (usando SKU `Standard_LRS`).
3. Usa variables para región y nombres.
4. Muestra con outputs el nombre del Storage Account y el ID del RG.
5. Corre `terraform init`, `plan`, `apply` y finalmente `destroy`.

**Conceptos:** provider `azurerm`, variables, outputs, ciclo de vida básico.
