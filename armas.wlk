/*La ballesta nace con 10 flechas. Cada vez que se usa, pierde una flecha. 
Está cargada si tiene flechas. Su potencia es 4.
La jabalina nace cargada. Se puede usar solamente una vez, o sea, 
con el primer uso deja de estar cargada. Su potencia es 30.*/

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
  

