const lista = document.getElementById('lista')
const elementoNuevo = document.getElementById('elemento-nuevo')
const btnAgregar = document.getElementById('btn-agregar')
const btnEliminar = document.getElementById('btn-eliminar')

btnAgregar.addEventListener('click', agregarElemento)
btnEliminar.addEventListener('click', eliminarElemento)

function agregarElemento() {
  const nuevoTexto = elementoNuevo.value.trim()

  if (nuevoTexto) {
    const nuevoElemento = document.createElement('li')
    nuevoElemento.textContent = nuevoTexto
    lista.appendChild(nuevoElemento)

    elementoNuevo.value = ''
  }
}

function eliminarElemento() {
  const ultimoElemento = lista.lastChild
  if (ultimoElemento) {
    lista.removeChild(ultimoElemento)
  }
}
