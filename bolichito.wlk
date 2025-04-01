import objetos.*
import personas.*

object bolichito {
    var objetoEnVidriera = remera
    var objetoEnMostrador = pelota
    
    method sonBrillantes() = objetoEnVidriera.esBrillante()
    && objetoEnMostrador.esBrillante()

    method esMonocromatico() = objetoEnMostrador.color()
    == objetoEnVidriera.color()

    method estaEquilibrado() = objetoEnMostrador.peso()
    > objetoEnVidriera.peso()

    method tieneObjetoDeColor(unColor) = objetoEnMostrador.color() == unColor 
    || objetoEnVidriera.color() == unColor

    method puedeMejorar() = !self.estaEquilibrado() 
    || self.esMonocromatico()

    method seLoPuedeOfrecer(unaPersona) =
        unaPersona.leGusta(objetoEnMostrador) || unaPersona.leGusta(objetoEnVidriera)

}