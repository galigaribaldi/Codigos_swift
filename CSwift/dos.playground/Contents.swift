import UIKit

// String Interpolation
var nombre = "Juean"
var edad = 27
var texto = "Hola mi nombre es \(nombre) y tengo \(edad) Años de edad"
print(texto)

// Comparar Strings

let str1:String = "Hola"
let str2:String = "Hola"
let igual:Bool = (str1 == str2)
print(igual)
/* Programa que muestre por medio de un String y operaciones Básicas, el nombre y la edad de una
 supuesta mascota, en este casi un perrito, donde su edad será el resultado de multiplicar el resultado por
 7 los años que tiene de vida
 */
let nombrePerro:String = "Jett"
let edadJett:Int = 5
var textto2 = "Mi perro se llama: \(nombrePerro) y tiene de edad: \(edadJett) y en años perros tiene: \(edadJett*7)"
print(textto2)
