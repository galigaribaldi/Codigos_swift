import UIKit

// String
// Asignacion implicita
var n = "Hola, playground"
print(n)

// Asignacion Explicita
var str:String = "String explicita"
print(str)

/// Enteros
var a:Int = 12
var b:Int = 12
var x = 10
var y = 12

print(a)
// Suma
// Resta
// Division
// Multiplicacion
var resultado:Int = a*b
print(resultado)

/// Float

var pi:Double = 3.1416 //Diferencia d etamañao en memoria
var pif:Double = 3.14156
var res:Double = pi + pif
print(res)

/// Bool

var positivo:Bool = true
var falso:Bool = false

/// Comparacion

var comparacion:Bool = x==y

/// Ejercicio: Crear programa que calcule el promedio de un alumno y sus 5 materias principales. Al final debes recibir una variable bool si tiene primedio de 100

var mate:Double = 9.8
var español:Double = 9.8
var historia:Double = 9.8
var civismo:Double = 8.8
var promedio:Double = (mate + español + historia + civismo)/4
print("El promedio del alumno es: ", promedio)
var si:Bool = promedio == 10

print(si)

/// Character

var char:Character = "A" // Si quieres que sea char se debe de poner de forma implicita
print(char)

/// Concatenación
let alfa:String = "Strin1 "
let beto:String = "Strin 2"

let alfabeto = alfa + beto

let char0:Character = "X"
let char1:Character = "Y"
//No se puede hacer concatenaciones de caracteres
let strchar0 = String(char0) + String(char1)
print(strchar0)

/// Uso de Emojis
var enoji = "👻"
print(enoji)
var 😒 = 1
print(😒)
