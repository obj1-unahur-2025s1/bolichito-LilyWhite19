import objetos.*
import personas.*

object bolichito {
    var objetoEnVidriera = remera
    var objetoEnMostrador = cajita

    method reemplazarObjetos(enMostrador, enVidriera){
        objetoEnMostrador = enMostrador
        objetoEnVidriera = enVidriera
    }
    
    method sonBrillantes() = objetoEnVidriera.material().esBrillante()
    && objetoEnMostrador.material().esBrillante()

    method esMonocromatico() = objetoEnMostrador.color()
    == objetoEnVidriera.color()

    method estaEquilibrado() = objetoEnMostrador.peso()
    > objetoEnVidriera.peso()

    method tieneObjetoDeColor(unColor) = objetoEnMostrador.color() == unColor 
    || objetoEnVidriera.color() == unColor

    method puedeMejorar() = !self.estaEquilibrado() 
    || self.esMonocromatico()

    method seLePuedeOfrecerA(unaPersona) =
        unaPersona.leGusta(objetoEnMostrador) || unaPersona.leGusta(objetoEnVidriera)

}