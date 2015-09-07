package ar.pablitar.aventura.domain

import ar.pablitar.aventura.BusinessException
import java.util.Map
import org.eclipse.xtend.lib.annotations.Accessors

class Casillero {
	
	@Accessors
	String descripcion

	Map<Direccion, Casillero> casillerosAdjacentes = newHashMap()
	
	@Accessors
	Aventura aventura
	
	new(String descripcion, Aventura aventura) {
		this.descripcion = descripcion
		this.aventura = aventura
	}

	def void moverEn(Direccion direccion, Jugador j) {
		if (casillerosAdjacentes.containsKey(Direccion)) {
			j.moverA(casillerosAdjacentes.get(direccion))
		} else {
			throw new BusinessException("El jugador no puede moverse en " + direccion.toString)
		}
	}
	
	def movimientosDisponibles() {
		return casillerosAdjacentes.keySet
	}
	
	def nombreAventura() {
		aventura.nombre
	}

}