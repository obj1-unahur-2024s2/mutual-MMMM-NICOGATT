class Viaje {
  const property idioma = []
  

  method sePuedeBroncear()
  method implicaEsfuerzo()
  method cuantosDias()  
  method esInteresante() = idioma.size() > 1
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
  
  override method esInteresante() = super() or cantidadAtracciones == 5
}

class ExcursionACiudadTropical inherits ExcursionACiudad {
  override method cuantosDias() = super() + 1

  override method sePuedeBroncear() = true 

}

class SalidaDeTrekking inherits Viaje {
  const kilometros
  const diasDeSol

  override method cuantosDias() = kilometros / 50

  override method implicaEsfuerzo() = kilometros > 80

  override method sePuedeBroncear() = diasDeSol > 200 or (diasDeSol.between(100, 200) and kilometros > 120)

  override method esInteresante() = super() and diasDeSol > 140
}

class ClasesDeGimnasia inherits Viaje(idioma = ["Español"]){
  override method cuantosDias() = 1
  override method implicaEsfuerzo() = true
  override method sePuedeBroncear() = false 
}

class Socios {
  const actividadesRealizadas = []
  const maximoDeActiviades

  method esAdoradorDelSol() = actividadesRealizadas.all({act => act.sePuedeBroncear()})

  method actividadesEsforzadas() = actividadesRealizadas.find({act => act.implicaEsfuerzo()})

  method realizaUnaActividad () = 
    if(actividadesRealizadas.size() == maximoDeActiviades)
      throw new DomainException(message = "El socio no puede realizar mas actividades")
    
}
