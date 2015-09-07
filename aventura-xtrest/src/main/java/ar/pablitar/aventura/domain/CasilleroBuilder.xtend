package ar.pablitar.aventura.domain

import org.eclipse.xtend.lib.annotations.Accessors

class CasilleroBuilder {
	
	@Accessors
	String nombre
	
	@Accessors
	String descripcion
	
	def build(Aventura aventura) {
		new Casillero(nombre, descripcion, aventura)
	}
	
	def descripcion(String descripcion) {
		this.descripcion = descripcion
		this
	}
	
	def nombre(String nombre) {
		this.nombre = nombre
		this	
	}
	
}