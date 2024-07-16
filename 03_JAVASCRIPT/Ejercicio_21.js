const usuarios = [
  { nombre: 'Juan Pérez', edad: 25 },
  { nombre: 'María García', edad: 17 },
  { nombre: 'Pedro López', edad: 68 },
  { nombre: 'Ana Sánchez', edad: 32 },
  { nombre: 'Carlos Jiménez', edad: 70 }
]

const usuariosConRol = usuarios.map((usuario) => {
  let rol
  if (usuario.edad < 18) {
    rol = 'Menor de edad'
  } else if (usuario.edad >= 18 && usuario.edad < 65) {
    rol = 'Adulto'
  } else {
    rol = 'Jubilado'
  }
  return { ...usuario, rol }
})

console.log('Usuarios con rol:', usuariosConRol)
