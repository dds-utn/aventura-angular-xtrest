package ar.pablitar.aventura.domain

import org.eclipse.xtend.lib.annotations.Accessors
import java.util.Optional

class Jugador {
	@Accessors
	String nombre

	@Accessors
	Optional<Casillero> posicion = Optional.empty

	new(String nombre) {
		this.nombre = nombre
	}

	def accionesDisponibles() {
		posicion.get.movimientosDisponibles.map[Acciones.mover(it)]
	}
	
	def nombreAventuraActual() {
		this.posicion.map([it.nombreAventura]).orElse("")
	}
	
	def moverA(Casillero casillero) {
		this.posicion = Optional.of(casillero)
	}
	
	def moverEn(Direccion direccion) {
		posicion.get.moverEn(direccion, this)
	}

}