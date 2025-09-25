# Importar recursos existentes

**Objetivo:**  practicar terraform import.

1. Crea un Resource Group desde el portal de Azure.
2. Define en Terraform solo el bloque vacío del RG.
3. Usa terraform import azurerm_resource_group.rg /subscriptions/<SUB_ID>/resourceGroups/<NAME>.
4. Haz terraform state show para ver el recurso.
5. Corre terraform plan para verificar que la definición coincide (o ajusta config para que sea “in sync”).

**Conceptos:** importación, estado, reconciliación de config.