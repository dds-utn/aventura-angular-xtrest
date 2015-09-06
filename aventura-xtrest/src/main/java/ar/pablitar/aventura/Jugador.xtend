package ar.pablitar.aventura

import org.eclipse.xtend.lib.annotations.Accessors

class Jugador {
	@Accessors
	String nombre

	@Accessors
	Casillero posicion

	new(String nombre) {
		this.nombre = nombre
	}

	def accionesDisponibles() {
		posicion.movimientosDisponibles.map[Acciones.mover(it)]
	}
	
}