## Variables complejas y `for_each`

**Objetivo:**  usar tipos de datos, `for_each`, funciones.

1. Define una variable tipo map para crear varios Storage Accounts:

```hcl
variable "storages" {
  type = map(string)
  default = {
    sa1 = "stac-chokeco-01"
    sa2 = "stac-chokeco-02"
  }
}
```

2. Usa `for_each` para crear un Storage Account por cada entrada en el map.
3. Usa una función como `lower()` en el nombre de los SA.
4. Haz output con todos los nombres.

**Conceptos:** tipos complejos, funciones, for_each, outputs dinámicos.
