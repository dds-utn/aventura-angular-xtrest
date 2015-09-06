package ar.pablitar.aventura.web

import org.uqbar.xtrest.api.XTRest

class App {
	def static void main(String[] args) {
		XTRest.start(LoginController, 9000)
	}
}