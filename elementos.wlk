object castillo { 
    var nivelDeDefensa = 150
    method altura() = 20
    method defensa() = nivelDeDefensa
    method nivelDeDefensa(unNivel) {nivelDeDefensa = unNivel}

    method recibirAtaque(valorDeAtaque) {
        nivelDeDefensa = 0.max (nivelDeDefensa - valorDeAtaque)
    }

    method recibirTrabajo() {
        nivelDeDefensa = 200.min (nivelDeDefensa + 20)
    }

    method valorOtorgado() {
        return nivelDeDefensa * 0.2
    }
}

object aurora {
    var estaViva = true
    method altura() = 1
    method estaViva() = estaViva
    method estaViva(unValor) {estaViva = unValor}

    method recibirAtaque(valorDeAtaque) {
        if (valorDeAtaque >= 10) 
            estaViva = false
    }

    method recibirTrabajo() {}

    method valorOtorgado() {return 15 }
}
  
object tipa {
    var altura = 8
    method altura() = altura
    method altura(unaAltura) {altura = unaAltura}

    method recibirAtaque(valorDeAtaque) {}

    method recibirTrabajo() {
        altura = altura + 1     
    }

    method valorOtorgado() {
        return altura *2
    }
}
