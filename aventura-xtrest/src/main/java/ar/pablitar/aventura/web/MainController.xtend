package ar.pablitar.aventura.web

import ar.pablitar.aventura.domain.Aventura
import ar.pablitar.aventura.domain.Jugador
import javax.servlet.http.HttpServletRequest
import org.uqbar.xtrest.api.Result
import org.uqbar.xtrest.api.annotation.Body
import org.uqbar.xtrest.api.annotation.Controller
import org.uqbar.xtrest.api.annotation.Get
import org.uqbar.xtrest.api.annotation.Post
import org.uqbar.xtrest.http.ContentType
import org.uqbar.xtrest.json.JSONUtils

import static ar.pablitar.aventura.repos.ConfiguredDependencies.*

@Controller
class MainController {
	extension JSONUtils = new JSONUtils
	
	@Post("/login")
	def Result login(@Body String body) {
		var PedidoLogin pedido = body.fromJson(PedidoLogin)
		var Jugador j = repoJugadores.encontrarPorNombre(pedido.nombre)
		response.contentType = ContentType.APPLICATION_JSON
		ok(new RespuestaLogin(j).toJson)
	}
	
	@Get("/aventuras")
	def Result getAventuras() {
		var Jugador j = obtenerJugador(request)
		response.contentType = ContentType.APPLICATION_JSON
		ok(new ListadoAventuras(j, repoAventuras.allInstances).toJson)				
	}
	
	def obtenerJugador(HttpServletRequest request) {
		repoJugadores.encontrarPorNombre(getCookie(request, "usuario"))
	}
	
	@Post("/comenzarAventura")
	def Result comenzarAventura(@Body String body) {
		var Aventura pedidoAventura = body.fromJson(Aventura)
		var Aventura aventura = repoAventuras.encontrarPorNombre(pedidoAventura.nombre)
		obtenerJugador(request).comenzarAventura(aventura)
		ok	
	}
	
	def getCookie(HttpServletRequest request, String string) {
		request.cookies.findFirst[it.name == string].value	
	}
	
	@Get("/juegoActual")
	def Result juegoActual() {
		var Jugador j = obtenerJugador(request)
		response.contentType = ContentType.APPLICATION_JSON
		ok(new JuegoActual(j).toJson)
	}
	
	
}