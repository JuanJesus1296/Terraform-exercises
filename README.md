## Validación
*Validación de variables en Azure - a partir del ejercicio 1*

**Objetivo:** aprender a usar `validation` en variables para imponer restricciones antes del `plan/apply`.

Vas a crear un Storage Account en Azure, pero quieres controlar:

1. Que el nombre cumpla las reglas de Azure (solo letras minúsculas y números, entre 3 y 24 caracteres).
2. Que la ubicación (region) sea una de las permitidas (`eastus`, `westus2`, `westeurope`).
