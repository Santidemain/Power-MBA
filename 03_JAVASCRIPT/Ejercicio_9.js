function sumAll(numbers) {
  let total = 0 // Acumulador para la suma

  for (const number of numbers) {
    total += number // Sumar cada número al total
  }

  return total
}

// Ejemplo para probar
const numbers = [1, 2, 3, 5, 45, 37, 58]
const sum = sumAll(numbers)
console.log('La suma de todos los números es:', sum) // Imprime: La suma de todos los números es: 151
