# Backend remoto en Azure

**Objetivo:**  usar `azurerm` backend para el state.

1. Crea manualmente (o con Terraform) un Storage Account + Container llamado `tfstate`.
2. Configura en el bloque `terraform`:
    ```hcl
    backend "azurerm" {
      resource_group_name   = "<RG>"
      storage_account_name  = "<STORAGE>"
      container_name        = "tfstate"
      key                   = "terraform.tfstate"
    }
    ```
3. Haz `terraform init -migrate-state` para mover el state al backend remoto.
4. Clona el proyecto en otra carpeta, corre `plan` en paralelo para ver cómo Azure bloquea el state.

**Conceptos:** estado remoto, locking, colaboración.

**Solución:** [Repositorio Github](https://github.com/JuanJesus1296/Terraform-exercises/tree/v1.0-ejercicio_04)