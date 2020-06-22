import UIKit

var str = "Hello, playground"

// Lista de metodos o funciones que otra clase va a implementar
// Ciertos comportamientos que debe cumplir una aplicacion en algún lugar o aplicacion

protocol operacionesBasicas{
    func Suma(a:Int, b:Int)
    
    func Resta()
    
}

class Computadora{
    var cpu:String = "8086"
}

// Clase que implementa el protocolo
class Calculadora: Computadora, operacionesBasicas {
    func Suma(a:Int, b:Int){
        print("Suma")
    }
    
    func Resta() {
        print("Resta")
    }
}
