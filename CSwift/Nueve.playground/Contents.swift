import UIKit

var cajaCerradaAgua:Int?

//cajaCerradaAgua = 10
if cajaCerradaAgua != nil{
    var cantidadAgua = cajaCerradaAgua!
    print("Tengo \(cantidadAgua) de Agua")
}else{
    print("No hay Nada dentro de nuestra caja de Agua")
}
// Optional Binding

if let cantidadAgua = cajaCerradaAgua{
    print("Tengo \(cantidadAgua) Agua")
}
