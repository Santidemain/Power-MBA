function repeatCounter(counterWords) {
  const wordCounts = {} // Objeto para almacenar el conteo de palabras

  for (const word of counterWords) {
    if (wordCounts[word]) {
      wordCounts[word] += 1 // Incrementar el conteo si la palabra ya existA
    } else {
      wordCounts[word] = 1 // Inicialr el conteo en 1 si la palabra es nueva
    }
  }

  return wordCounts
}

// Ejemplo
const counterWords = [
  'code',
  'repeat',
  'eat',
  'sleep',
  'code',
  'enjoy',
  'sleep',
  'code',
  'enjoy',
  'upgrade',
  'code'
]
const wordCounts = repeatCounter(counterWords)
console.log(wordCounts) // Imprime: { code: 4, repeat: 1, eat: 1, sleep: 2, enjoy: 2, upgrade: 1 }
