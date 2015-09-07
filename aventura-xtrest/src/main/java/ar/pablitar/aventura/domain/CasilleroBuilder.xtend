package ar.pablitar.aventura.domain

import org.eclipse.xtend.lib.annotations.Accessors

class CasilleroBuilder {
	
	@Accessors
	String descripcion
	
	def build(Aventura aventura) {
		new Casillero(descripcion, aventura)
	}
	
	def descripcion(String descripcion) {
		this.descripcion = descripcion
		this
	}
	
}