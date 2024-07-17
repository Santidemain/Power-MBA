// 1.1 Seleccionar el botón con la clase .showme
const button = document.querySelector('.showme')
console.log(button)

// 1.2 Seleccionar el h1 con el id #pillado
const h1 = document.querySelector('#pillado')
console.log(h1)

// 1.3 Seleccionar todos los p
const paragraphs = document.querySelectorAll('p')
console.log(paragraphs)

// 1.4 Seleccionar todos los elementos con la clase pokemon
const pokemonElements = document.querySelectorAll('.pokemon')
console.log(pokemonElements)

// 1.5 Seleccionar todos los elementos con el atributo data-function="testMe"
const testMeElements = document.querySelectorAll("[data-function='testMe']")
console.log(testMeElements)

// 1.6 Seleccionar el tercer personaje con el atributo data-function="testMe"
const thirdCharacter = document.querySelector(
  "[data-function='testMe']:nth-child(3)"
)
console.log(thirdCharacter)
