import objetos.*
object rosa{
    
    method leGusta(unObjeto){
            return unObjeto.peso() <= 2000
    }
}
object estefania{
    method leGusta(unObjeto){
        return unObjeto.color().esFuerte()
        // delegar la respuesta del si un color es fuerte o no al mismo color como objeto
    }
}
object luisa{
    method leGusta(unObjeto){
        return unObjeto.material().esBrillante()
    }
}
object juan{
    method leGusta(unObjeto){
        return !unObjeto.color().esFuerte() || unObjeto.peso().between(1200, 1800)
    }
}
