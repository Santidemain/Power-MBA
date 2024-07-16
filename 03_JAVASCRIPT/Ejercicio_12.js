function removeDuplicates(duplicates) {
  const uniqueElements = [] // Array para almacenar elementos únicos

  for (const element of duplicates) {
    if (!uniqueElements.includes(element)) {
      uniqueElements.push(element)
    }
  }

  return uniqueElements
}

// Ejemplo
const duplicates = [
  'sushi',
  'pizza',
  'burger',
  'potatoe',
  'pasta',
  'ice-cream',
  'pizza',
  'chicken',
  'onion rings',
  'pasta',
  'soda'
]
const uniqueList = removeDuplicates(duplicates)
console.log('Lista sin elementos duplicados:', uniqueList) // Imprime: Lista sin elementos duplicados: ['sushi', 'pizza', 'burger', 'potatoe', 'pasta', 'ice-cream', 'chicken', 'onion rings', 'soda']
