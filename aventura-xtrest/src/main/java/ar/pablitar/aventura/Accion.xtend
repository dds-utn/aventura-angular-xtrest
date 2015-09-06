package ar.pablitar.aventura

interface Accion {
	def String describir()

	def void aplicarPara(Jugador jugador)
}

class Mover implements Accion {

	Direccion direccion

	new(Direccion d) {
		this.direccion = d;
	}

	override describir() {
		"Moverse hacia " + this.direccion.toString.toLowerCase
	}

	override aplicarPara(Jugador jugador) {
		jugador.posicion.moverEn(this.direccion, jugador)
	}

}

class Acciones {
	static def mover(Direccion d) {
		new Mover(d)
	}
}