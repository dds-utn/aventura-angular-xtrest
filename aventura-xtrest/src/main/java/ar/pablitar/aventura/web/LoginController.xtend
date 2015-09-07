package ar.pablitar.aventura.web

import org.uqbar.xtrest.api.annotation.Controller
import org.uqbar.xtrest.api.annotation.Post
import org.uqbar.xtrest.api.Result
import org.uqbar.xtrest.api.annotation.Body
import org.uqbar.xtrest.json.JSONUtils
import ar.pablitar.aventura.domain.Jugador
import static ar.pablitar.aventura.repos.ConfiguredDependencies.*
import org.uqbar.xtrest.http.ContentType

@Controller
class LoginController {
	extension JSONUtils = new JSONUtils
	
	@Post("/login")
	def Result login(@Body String body) {
		var PedidoLogin pedido = body.fromJson(PedidoLogin)
		var Jugador j = repoJugadores.encontrarPorNombre(pedido.nombre)
		response.contentType = ContentType.APPLICATION_JSON
		ok(new RespuestaLogin(j).toJson)
	}
}