// ------------------------------------------------------------------------------------------------------------
const avengers = ['HULK', 'SPIDERMAN', 'BLACK PANTHER']

const hulk = avengers[0]
console.log('El primer vengador es:', hulk)

// ------------------------------------------------------------------------------------------------------------
avengers[0] = 'IRONMAN'
console.log('Los vengadores después del cambio:', avengers)

// ------------------------------------------------------------------------------------------------------------
const numeroVengadores = avengers.length
console.log('El número de vengadores es:', numeroVengadores)

// ------------------------------------------------------------------------------------------------------------
const rickAndMortyCharacters = ['Rick', 'Beth', 'Jerry']

rickAndMortyCharacters.push('Morty', 'Summer')
const ultimoPersonaje =
  rickAndMortyCharacters[rickAndMortyCharacters.length - 1]
console.log('Los personajes de Rick y Morty son:', rickAndMortyCharacters)
console.log('El último personaje es:', ultimoPersonaje)

// ------------------------------------------------------------------------------------------------------------
rickAndMortyCharacters.pop()
const primerPersonaje = rickAndMortyCharacters[0]
const nuevoUltimoPersonaje =
  rickAndMortyCharacters[rickAndMortyCharacters.length - 1]
console.log(
  'Personajes de Rick y Morty (después de eliminar el último):',
  rickAndMortyCharacters
)
console.log('Primer personaje:', primerPersonaje)
console.log('Nuevo último personaje:', nuevoUltimoPersonaje)

// ------------------------------------------------------------------------------------------------------------
rickAndMortyCharacters.splice(1, 1)
console.log(
  'Personajes de Rick y Morty (después de eliminar el segundo):',
  rickAndMortyCharacters
)
