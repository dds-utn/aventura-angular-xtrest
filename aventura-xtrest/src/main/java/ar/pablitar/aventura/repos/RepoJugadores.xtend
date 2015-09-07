package ar.pablitar.aventura.repos

import ar.pablitar.aventura.domain.Jugador

class RepoJugadores extends GenericCollectionRepo<Jugador> {
	
	def encontrarPorNombre(String unNombre) {
		this.findOrCreate([it.nombre == unNombre], [new Jugador(unNombre)])
	}
	
}