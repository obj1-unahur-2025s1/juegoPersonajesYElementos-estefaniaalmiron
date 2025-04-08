import armas.*
import elementos.*

object luisa {
    var personajeActivo = floki
    method personaje() = personajeActivo
    method personajeActivo(unPersonaje) {personajeActivo = unPersonaje}
}

// personajes 

object floki {
    var arma = ballesta
    method arma() = arma
    method arma(unArma) {arma = unArma}

    method encontrar(elemento) { 
        if (arma.estaCargada()) {
            elemento.recibirAtaque(arma.potencia())
            arma.registrarUso()
        }  
    }
}


object mario {
    var valorRecolectado = 0
    var ultimoElemento = castillo

    method valorRecolectado(unValor) {valorRecolectado = unValor}
    method ultimoElemento(unUltimoElemento) {ultimoElemento = unUltimoElemento}

    method encontrar(elemento) {
        valorRecolectado = valorRecolectado + elemento.otorgarValor()
        elemento.recibirTrabajo()
        ultimoElemento = elemento
    }

    method valorRecolectado() = valorRecolectado

    method esFeliz() {
        return valorRecolectado >= 50 ultimoElemento.altura() >= 10
    }
}
