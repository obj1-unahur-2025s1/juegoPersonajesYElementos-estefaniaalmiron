/*
De cada elemento nos va a interesar la altura. El castillo mide 20 metros de alto,
 aurora 1 metro, la tipa arranca en 8 metros pero puede crecer (ya veremos cómo).
  Además: debemos manejar el nivel de defensa del castillo (un valor numérico que arranca en 150),
 y si aurora está viva o no (nace viva).
*/

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