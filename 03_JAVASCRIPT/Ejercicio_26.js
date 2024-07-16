const empleados = [
  { nombre: 'Juan Pérez', horasTrabajadas: 180, tarifaPorHora: 12 },
  { nombre: 'María García', horasTrabajadas: 150, tarifaPorHora: 15 },
  { nombre: 'Pedro López', horasTrabajadas: 200, tarifaPorHora: 10 },
  { nombre: 'Ana Sánchez', horasTrabajadas: 160, tarifaPorHora: 14 },
  { nombre: 'Carlos Jiménez', horasTrabajadas: 175, tarifaPorHora: 11 }
]

const empleadosConSalario = empleados.map((empleado) => {
  const salarioBrutoMensual = empleado.horasTrabajadas * empleado.tarifaPorHora
  return { ...empleado, salarioBrutoMensual }
})

const totalNominaMensual = empleadosConSalario.reduce(
  (total, empleado) => total + empleado.salarioBrutoMensual,
  0
)

console.log('Empleados con salario:', empleadosConSalario)
console.log('Total nómina mensual:', totalNominaMensual)
