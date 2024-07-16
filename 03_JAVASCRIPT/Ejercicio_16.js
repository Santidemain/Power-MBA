const placesToTravel = [
  'Japon',
  'Venecia',
  'Murcia',
  'Santander',
  'Filipinas',
  'Madagascar'
]

// Función para recorrer y mostrar los lugares
function showPlaces(places) {
  for (const place of places) {
    console.log(place)
  }
}

// Llamada a la función
showPlaces(placesToTravel)
