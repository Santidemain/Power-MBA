function findLongestWord(words) {
  let longestWord = words[0]
  let longestWordLength = longestWord.length

  for (let i = 1; i < words.length; i++) {
    const currentWord = words[i]
    const currentWordLength = currentWord.length

    if (currentWordLength > longestWordLength) {
      longestWord = currentWord
      longestWordLength = currentWordLength
    } else if (
      currentWordLength === longestWordLength &&
      currentWord < longestWord
    ) {
      longestWord = currentWord
    }
  }

  return longestWord
}

// Ejemplo de uso
const avengers = [
  'Hulk',
  'Thor',
  'IronMan',
  'Captain A.',
  'Spiderman',
  'Captain M.'
]
const longestWord = findLongestWord(avengers)
console.log('La palabra más larga de los vengadores es:', longestWord) // Imprime: La palabra más larga de los vengadores es: Spiderman
