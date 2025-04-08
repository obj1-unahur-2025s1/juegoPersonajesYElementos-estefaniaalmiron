object ballesta {
  var cantFlechas = 10

  method flechas() = cantFlechas
  method cantFlechas(unaCantidad) {cantFlechas = unaCantidad}
  method potencia() = 4

  method registrarUso() {
    cantFlechas = 0.max(cantFlechas - 1)
  }

  method estaCargada()= cantFlechas > 0
}

object jabalina {
  var estaCargada = true
  method potencia() = 30

  method estaCargada(unValor) {estaCargada = unValor}

  method registrarUso() {
    estaCargada = false
  }
  method estaCargada() = estaCargada
}
  

