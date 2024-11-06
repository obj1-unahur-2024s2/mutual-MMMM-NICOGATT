class Viaje {
  var property idiomas

  method sePuedeBroncear()
  method implicaEsfuerzo()
  method cuantosDias()  
}

class Playa inherits Viaje {
  const largo 

  override method cuantosDias() = largo / 500

  override method implicaEsfuerzo() = largo > 1200

  override method sePuedeBroncear() = true 
}

class ExcursionACiudad inherits Viaje {
  const cantidadAtracciones

  override method cuantosDias() = cantidadAtracciones / 2

  override method implicaEsfuerzo() = cantidadAtracciones.between(5, 8)

  override method sePuedeBroncear() = false 
}

class ExcursionACiudadTropical inherits ExcursionACiudad {
  override method cuantosDias() = self.cuantosDias() + 1

  override method sePuedeBroncear() = true 
}

