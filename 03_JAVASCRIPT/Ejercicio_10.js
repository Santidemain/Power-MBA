function average(numbers) {
  let total = 0 // Acumulador para la suma
  let count = numbers.length // Contador de elementos

  for (const number of numbers) {
    total += number
  }

  if (count === 0) {
    return 0 // Si el array está vacío, devolver 0
  } else {
    return total / count // Calcular y devolver el promedio
  }
}

// Ejemplo
const numbers = [12, 21, 38, 5, 45, 37, 6]
const averageValue = average(numbers)
console.log('El promedio de los números es:', averageValue) // Imprime: El promedio de los números es: 22.42857142857143
