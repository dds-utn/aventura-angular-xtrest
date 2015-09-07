package ar.pablitar.aventura.web

import java.util.List
import ar.pablitar.aventura.domain.Aventura
import org.eclipse.xtend.lib.annotations.Data
import ar.pablitar.aventura.domain.Jugador

@Data
class ListadoAventuras {
	
	List<Aventura> aventuras
	String aventuraActual
	
	new(Jugador jugador, List<Aventura> aventuras) {
		this.aventuras = aventuras
		this.aventuraActual = jugador.nombreAventuraActual
	}
	
}