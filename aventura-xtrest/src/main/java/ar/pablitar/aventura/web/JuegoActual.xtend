package ar.pablitar.aventura.web

import ar.pablitar.aventura.domain.Jugador
import org.eclipse.xtend.lib.annotations.Data
import ar.pablitar.aventura.domain.Casillero
import ar.pablitar.aventura.domain.Aventura

@Data
class JuegoActual {
	
	Casillero casilleroActual
	Aventura aventuraActual
	
	new(Jugador jugador) {
		this.casilleroActual = jugador.posicion.get
		this.aventuraActual = jugador.aventuraActual	
	}
	
}