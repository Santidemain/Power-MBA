const popularToys = []
const toys = [
  { id: 5, name: 'Buzz MyYear', sellCount: 10 },
  { id: 11, name: 'Action Woman', sellCount: 24 },
  { id: 23, name: 'Barbie Man', sellCount: 15 },
  { id: 40, name: 'El gato con Guantes', sellCount: 8 },
  { id: 40, name: 'El gato felix', sellCount: 35 }
]

// Función para buscar y agregar juguetes populares
function findPopularToys(toys, popularToys) {
  for (const toy of toys) {
    if (toy.sellCount > 15) {
      popularToys.push(toy)
    }
  }
  console.log(popularToys)
}

// Ejemplo de uso
findPopularToys(toys, popularToys)
