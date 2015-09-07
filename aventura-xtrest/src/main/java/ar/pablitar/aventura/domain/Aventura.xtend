package ar.pablitar.aventura.domain

import org.eclipse.xtend.lib.annotations.Accessors
import com.fasterxml.jackson.annotation.JsonIgnore

class Aventura {
	@Accessors
	String nombre
	@Accessors
	String descripcion
	
	@JsonIgnore
	Casillero casilleroInicial
	
	new(String nombre, String descripcion, CasilleroBuilder builder) {
		this.nombre = nombre
		this.descripcion = descripcion
		this.casilleroInicial = builder.build(this)
	}
}