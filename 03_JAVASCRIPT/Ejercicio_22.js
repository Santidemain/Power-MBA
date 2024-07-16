const fruits = ['Strawberry', 'Banana', 'Orange', 'Apple']

const foodSchedule = [
  { name: 'Heura', isVegan: true },
  { name: 'Salmon', isVegan: false },
  { name: 'Tofu', isVegan: true },
  { name: 'Burger', isVegan: false },
  { name: 'Rice', isVegan: true },
  { name: 'Pasta', isVegan: true }
]

const frutasDisponibles = new Set(fruits) // Conjunto para evitar frutas duplicadas

const foodScheduleVegano = foodSchedule.map((comida) => {
  if (!comida.isVegan) {
    const fruta = frutasDisponibles.values().next().value // Obtiene una fruta aleatoria del conjunto
    frutasDisponibles.delete(fruta) // Elimina la fruta del conjunto para evitar duplicados
    return { ...comida, name: fruta }
  }
  return comida
})

console.log(foodScheduleVegano)
