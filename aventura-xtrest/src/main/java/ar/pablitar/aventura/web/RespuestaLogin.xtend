package ar.pablitar.aventura.web

import ar.pablitar.aventura.domain.Jugador
import org.eclipse.xtend.lib.annotations.Data

@Data
class RespuestaLogin {
	String nombre
	
	new(Jugador jugador) {
		nombre = jugador.nombre
	}
	
}