package ar.pablitar.aventura.repos

import ar.pablitar.aventura.domain.Aventura
import ar.pablitar.aventura.repos.GenericCollectionRepo
import ar.pablitar.aventura.domain.Casillero
import ar.pablitar.aventura.domain.CasilleroBuilder

class RepoAventuras extends GenericCollectionRepo<Aventura> {
	new() {
		this.create(new Aventura(
		 "La facultad",
		 "Facultad Regional Buenos Aires, sede medrano, la aventura de pedir el café",
		 new CasilleroBuilder()
		 	.descripcion("Estás en el cuarto piso, aula 424. Desesperado por un café")))				
	}
}