function averageWord(mixedElements) {
  let total = 0 // Acumulador para la suma
  let count = 0 // Contador para la cantidad de elementos

  for (const element of mixedElements) {
    if (typeof element === 'number') {
      total += element // Si es un número, sumarlo
    } else {
      total += element.length // Si es un string, sumar su longitud
    }
    count++ // Incrementar el contador en cada iteración
  }

  if (count === 0) {
    return 0 // Si el array está vacío, devolver 0
  } else {
    return total / count // Calcular y devolver el promedio
  }
}

// Ejemplo
const mixedElements = [6, 1, 'Rayo', 1, 'vallecano', '10', 'upgrade', 8, 'hub']
const averageValue = averageWord(mixedElements)
console.log('El promedio de los elementos es:', averageValue) // Imprime: El promedio de los elementos es: 5.222222222222222
