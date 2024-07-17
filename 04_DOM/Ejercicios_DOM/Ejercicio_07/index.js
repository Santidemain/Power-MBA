const places = ['Gondor', 'Mordor', 'Rivendel', 'La Comarca', 'Nümenor']
const printHereDiv = document.querySelector("[data-function='printHere']")
const newList = document.createElement('ul')

for (const place of places) {
  const newListItem = document.createElement('li')
  newListItem.textContent = place
  newList.appendChild(newListItem)
}

printHereDiv.appendChild(newList)
