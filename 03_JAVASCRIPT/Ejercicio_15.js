const products = [
  'Camiseta de Pokemon',
  'Pantalón coquinero',
  'Gorra de gansta',
  'Camiseta de Basket',
  'Cinrurón de Orión',
  'AC/DC Camiseta'
]

function findShirts(products) {
  for (const product of products) {
    if (product.includes('Camiseta')) {
      console.log(product)
    }
  }
}

findShirts(products)
