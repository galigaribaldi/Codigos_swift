struct Vertex: Equatable, CustomStringConvertible{
    let x, y: Double
    
    var description: String{
        return "\(x), \(y)"
    }
    
//    Una sola referencia a memoria
//    Left Hand Size
    static func == (lhs: Vertex, rhs: Vertex) -> Bool{
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
}

var v = Vertex(x: 3.0, y: 2.0)
var z = Vertex(x: 3.0, y: 3.0)
print("Estos valores son Iguales? ",v == z)

protocol someProtocol{
    var propSettable: Int { get set }
    var propGettable: Int { get }
}
protocol NombreCompleto: NombreCompleto  {
    var nombre: String
    var descripcion: String{
     return "Yo me llamo: \(nombre)"
    }
    func saluda()
}
struct Alumno: NombreCompleto {
    var nombre: String
    var description: String{
        return "Yo me llamo \(nombre)"
    }
}
class Profesor: NombreCompleto {
    var nombre: String = ""
    var description: String{
        return "Yo me llamo \(nombre)"
    }
}
