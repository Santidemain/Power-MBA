// 1. Inserta dinámicamente un div vacio con javascript
const newDiv = document.createElement('div')
document.body.appendChild(newDiv)

// 2. Inserta dinámicamente un div con un p con javascript
const newDivWithParagraph = document.createElement('div')
const newParagraph = document.createElement('p')
newParagraph.textContent = 'Este es un párrafo dinámico'
newDivWithParagraph.appendChild(newParagraph)
document.body.appendChild(newDivWithParagraph)

// 3. Inserta dinámicamente un div con 6 p utilizando un loop con javascript
const newDivWithSixParagraphs = document.createElement('div')

for (let i = 0; i < 6; i++) {
  const newParagraph = document.createElement('p')
  newParagraph.textContent = `Este es el párrafo ${i + 1}`
  newDivWithSixParagraphs.appendChild(newParagraph)
}

document.body.appendChild(newDivWithSixParagraphs)

// 4. Inserta dinámicamente un p con el texto 'Soy dinámico!"
const newDynamicParagraph = document.createElement('p')
newDynamicParagraph.textContent = 'Soy dinámico!'
document.body.appendChild(newDynamicParagraph)

// 5. Inserta el texto "Wubba Lubba dub dub" en el h2 con la clase .fn-insert-here
const h2Element = document.querySelector('h2.fn-insert-here')
h2Element.textContent = 'Wubba Lubba dub dub'

// 6. Crea una lista ul > li con los textos del array
const apps = ['Facebook', 'Netflix', 'Instagram', 'Snapchat', 'Twitter']
const newList = document.createElement('ul')

for (const app of apps) {
  const newListItem = document.createElement('li')
  newListItem.textContent = app
  newList.appendChild(newListItem)
}

document.body.appendChild(newList)

// 7. Elimina todos los nodos que tengan la clase .fn-remove-me
const removeElements = document.querySelectorAll('.fn-remove-me')
removeElements.forEach((element) => element.remove())
