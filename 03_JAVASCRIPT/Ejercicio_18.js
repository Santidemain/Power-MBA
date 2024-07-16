const placesToTravel = [
  { id: 5, name: 'Japan' },
  { id: 11, name: 'Venecia' },
  { id: 23, name: 'Murcia' },
  { id: 40, name: 'Santander' },
  { id: 44, name: 'Filipinas' },
  { id: 59, name: 'Madagascar' }
]

// Función para eliminar destinos por ID y mostrar el array actualizado
function removePlacesById(places, idsToRemove) {
  for (let i = places.length - 1; i >= 0; i--) {
    const place = places[i]
    if (idsToRemove.includes(place.id)) {
      places.splice(i, 1)
    }
  }
  console.log(places)
}

// Ejemplo
const idsToRemove = [11, 40] // IDs de destinos a eliminar
removePlacesById(placesToTravel, idsToRemove)
