package ar.pablitar.aventura.domain

import java.util.Map

class Casillero {

	Map<Direccion, Casillero> casillerosAdjacentes = newHashMap()

	def moverEn(Direccion direccion, Jugador j) {
		if (casillerosAdjacentes.containsKey(Direccion)) {
			j.posicion = casillerosAdjacentes.get(direccion)
		} else {
			throw new ar.pablitar.aventura.BusinessException("El jugador no puede moverse en " + direccion.toString)
		}
	}
	
	def movimientosDisponibles() {
		return casillerosAdjacentes.keySet
	}

}