import wollok.game.*

object auto {
	// definimos los atributos para imagen y posición de nuestro elemento
	var image = "autitoRojo.png"
	var image1 = "autitoAzul.png"
	var position = game.at(0,0)

	// definimos los getter y setter para poder preguntarle y cambiarle 
	// a nuestro elemento su imagen y posición. 
	method image() = image
	method position() = position
	method image(nuevaImagen) { image = nuevaImagen }
	method position(nuevaPosicion) { position = nuevaPosicion }
	method moveRight() {
		position = game.at(self.position().x()+1,self.position().y())
	}
	method moveLeft() {
		position = game.at(self.position().x()-1,self.position().y())
	}
	method moveUp() {
		position = game.at(self.position().x(),self.position().y()+1)
	}
	method moveDown() {
		position = game.at(self.position().x(),self.position().y()-1)
	}
	method changeCar(){
		image = image1
	}
}
