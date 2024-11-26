class Persona{
  var property edad
  const carrerasQueQuiereEstudiar = []
  var property plataQueQuiereGanar
  const lugaresQuiereViajar = []
  var property tieneHijos

  var property felicidonios = 0 
  
  const sueniosCumplidos = []
  const suenioPendientes = []

  method suenioCumplido(suenio){
    suenioPendientes.remove(suenio)
    sueniosCumplidos.add(suenio)
  }

  method aumentarFelicidad(_felicidonios){
    felicidonios += _felicidonios
  } 
  

}

class Suenio{
  const felicidonios

  method cumplir(persona){
    self.validarSuenio(persona)
    self.suenioCumplido(persona)
    persona.aumentarFelicidad(felicidonios)
  }

  method validarSuenio(persona)
  method suenioCumplido(persona)

}

class Recibirse inherits Suenio{
  const carrera

  override method validarSuenio(persona)

  override method suenioCumplido(persona){
    persona.suenioCumplido().add(self)
  }  
}

object tenerUnHijo inherits Suenio{
  override method validarSuenio(persona)
  override method suenioCumplido(persona)
}

class AdoptarHijos inherits Suenio{
  const cantidadDeHijos

  override method validarSuenio(persona)
  override method suenioCumplido(persona)    
}

class Viajar inherits Suenio{
  const lugar

  override method validarSuenio(persona)
  override method suenioCumplido(persona)    
}

class ConseguirTrabajo inherits Suenio{
  const plata

  override method validarSuenio(persona)
  override method suenioCumplido(persona)    
}