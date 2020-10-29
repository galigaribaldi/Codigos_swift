import UIKit

// En versiones anteriores a al 5, es necesario poner el return
// En la última version de swift, esto ya no pasa, ya que lo devuelve del Stack
struct Vertex{
    let x,y: Double
    var calculos: Double {
//        Monitorear los cambios de valor en una propiedad
//        Nuevo Valor, Metodos para monitorear los valores
        willSet{
            print("Valor de Calculus \(newValue)")
        }
//        Viejo Valor, Metodos para monitorear los valores
        didSet{
            print("Valor anterior de calculus; \(oldValue)")
        }
    }
    
    var magnitude: Double{
//        Get propiedad de solo lectura
        get{
            return (x * x + y * y)
        }
        set{
            print("")
        }
    }
}

var point = Vertex(x: 3.0, y: 4.0, calculos: 8.0)
point.calculos = 90
point.magnitude = 10.0
print(point.magnitude)
