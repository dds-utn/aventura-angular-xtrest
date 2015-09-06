package ar.pablitar.aventura.web

import org.uqbar.xtrest.api.annotation.Controller
import org.uqbar.xtrest.api.annotation.Post
import org.uqbar.xtrest.api.Result
import org.uqbar.xtrest.api.annotation.Body

@Controller
class LoginController {
	@Post("/login")
	def Result login(@Body String pedido) {
		ok('{"hello":"world"}')
	}
}