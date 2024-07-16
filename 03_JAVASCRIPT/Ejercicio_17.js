const alien = {
  name: 'Wormuck',
  race: 'Cucusumusu',
  planet: 'Eden',
  weight: '259kg'
}

function showAlienData(alienData) {
  for (const property in alienData) {
    console.log(`${property}: ${alienData[property]}`)
  }
}

showAlienData(alien)
