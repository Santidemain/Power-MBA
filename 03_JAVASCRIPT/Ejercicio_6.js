// 1.1 Bucle for desde 0 a 9
for (let i = 0; i <= 9; i++) {
  console.log(i)
}

// 1.2 Bucle for mostrando solo números pares (divisibles por 2)
for (let i = 0; i <= 9; i++) {
  if (i % 2 === 0) {
    console.log(i)
  }
}

// 1.3 Bucle para contar ovejas y dormir
for (let oveja = 1; oveja <= 10; oveja++) {
  if (oveja < 10) {
    console.log(`Intentando dormir  (${oveja}/10)`)
  } else {
    console.log('¡Dormido!')
  }
}
