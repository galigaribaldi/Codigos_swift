/*
struct Alumno{
    var promedio: Float = 8.5
}
var jose = Alumno()
var pedro = jose()
pedro.promedio = 9.3
print("El promedio de Jose es: \(jose.promedio) y el promedio de Pedro es: \(pedro.promedio)")
*/
/*
var alumnoNombre = "Luis Antonio"
let miClosure = { [alumnoNombre] in
    print("Mi alumno se llama \(alumnoNombre)")

}
alumnoNombre = "Maria Josefa"
miClosure()
*/
/*
class Alumno{
    var promedio: Float = 8.5
}
var jose = Alumno()
var pedro = jose
pedro.promedio = 9.3
print("El promedio de Jose es: \(jose.promedio) y el promedio de Pedro es: \(pedro.promedio)")
*/
/*
struct InStack{
    var items = [Int]()
    mutating func add(x: Int){
        items.append(x)
    }
}
*/
/*
let edad = 18
switch edad{
case 0..<18:
    print("Grupo 1")
case 18..<22:
    print("Grupo 2")
case 0..<18:
    print("Grupo 3")
default:
    print("Grupo 4")
}
*/
func suma(_ a: Int, b: Int) -> Int{
    return b+b
}
func imprimeResultado(_ function: (Int, Int) -> Int, _ a:Int, _ b: Int){
    let resultado = function(a,b)
    print(resultado)
}
imprimeResultado(suma, 4, 2)
nil
    .none
