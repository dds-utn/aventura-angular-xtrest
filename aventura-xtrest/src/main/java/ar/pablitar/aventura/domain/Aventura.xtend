package ar.pablitar.aventura.domain

import org.eclipse.xtend.lib.annotations.Accessors

class Aventura {
	@Accessors
	String descripcion
	
	@Accessors
	Casillero casilleroInicial
	
	new(String descripcion, Casillero casilleroInicial) {
		this.descripcion = descripcion
		this.casilleroInicial = casilleroInicial
	}
}