package ar.pablitar.aventura.domain

interface Accion {
	def String describir()

	def void aplicarPara(Jugador jugador)
}

class Mover implements Accion {

	val Direccion direccion

	new(Direccion d) {
		this.direccion = d;
	}

	override describir() {
		"Moverse hacia " + this.direccion.toString.toLowerCase
	}

	override aplicarPara(Jugador jugador) {
		jugador.moverEn(this.direccion)
	}

}

class Acciones {
	static def mover(Direccion d) {
		new Mover(d)
	}
}