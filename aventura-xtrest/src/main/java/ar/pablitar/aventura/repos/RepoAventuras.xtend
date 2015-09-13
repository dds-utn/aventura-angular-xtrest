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
		 	.nombre("Aula 424")
		 	.descripcion("Estás en el cuarto piso, aula 424. Desesperado por un café")))
		 this.create(new Aventura(
		 "Ir al zoo",
		 "Hace 48°C y tu sobrinito quiere ir al Zoo. No podés zafar",
		 new CasilleroBuilder()
		 	.nombre("Tu Casa")
		 	.descripcion("Aire acondicionado a 20°, estás re contento. Tu sobrino se puso insoportable")))				
	}
	
	def encontrarPorNombre(String unNombre) {
		this.findByPredicate[it.nombre == unNombre]
	}
	
}