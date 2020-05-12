import UIKit

// Colecciones - Arrays - Arreglos

var arregloEnteros: [Int] = [0,1,2,3,4,5,6,7,8,9]

var arregloStrings: [String] = ["Hola", "Hello", "Goodbye"]

arregloEnteros[0]

arregloStrings[0]

print(arregloStrings.count)

// Colecciones - Diccionarios

//[llave: Valor]
var abedecedario: [String: String] = ["a": "Valor primero", "b": "Valor segundo"]

var a = abedecedario["a"]
print(a as Any)
