# Crear Resource Groups con for_each y acceder a un índice específico

Tienes una lista de nombres de departamentos en la nube y quieres crear un Resource Group para cada uno de ellos en Azure usando `for_each`.

Debes:

1. Crear un recurso por cada elemento de la lista.
2. Mostrar como output el nombre del tercer recurso creado.
3. Mostrar un output con todos los nombres de los recursos creados.

## Lista de departamentos
```hcl
variable "departamentos" {
  type    = list(string)
  default = ["ventas", "soporte", "sistemas"]
}
```