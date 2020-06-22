import UIKit

class persona{
    var nombre:String = "Miranda"
    var edad:Int = 18
    var colorCamisa:String = ""
    var color = Colores()
    func saludo()-> String{
        colorCamisa = color.colorAzul
        return "Mi nombre es: \(nombre) y la edad es: \(edad) y el color es: \(colorCamisa)"
    }
}

// Instanciar un objeto
var objetoPersona = persona()

//var nombre2 = objetoPersona.nombre

class Colores{
    var colorAzul:String = "Azul"
    var colorRojo:String = "Rojo"
}

objetoPersona.saludo()
