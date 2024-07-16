function finderName(nameFinder, nameToFind) {
  for (let i = 0; i < nameFinder.length; i++) {
    if (nameFinder[i].toLowerCase() === nameToFind.toLowerCase()) {
      return { found: true, position: i } // Objeto con la información
    }
  }
  return { found: false, position: -1 } // Objeto indicando que no se encontró
}

// Ejemplo de uso
const nameFinder = [
  'Peter',
  'Steve',
  'Tony',
  'Natasha',
  'Clint',
  'Logan',
  'Xabier',
  'Bruce',
  'Peggy',
  'Jessica',
  'Marc'
]
const searchName = 'steve'
const result = finderName(nameFinder, searchName)

if (result.found) {
  console.log(
    `El nombre "${searchName}" se encontró en la posición ${result.position}`
  )
} else {
  console.log(`El nombre "${searchName}" no se encontró en el array.`)
}
