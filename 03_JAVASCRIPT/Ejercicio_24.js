const products = [
  { name: 'Producto 1', sellCount: 10, price: 10 },
  { name: 'Producto 2', sellCount: 20, price: 20 },
  { name: 'Producto 3', sellCount: 30, price: 30 },
  { name: 'Producto 4', sellCount: 40, price: 40 },
  { name: 'Producto 5', sellCount: 50, price: 50 }
]

const totalSales = products.reduce((total, product) => {
  return total + product.sellCount * product.price
}, 0)

console.log('Total de ventas:', totalSales)
