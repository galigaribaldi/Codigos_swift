import UIKit

let x = 10
let y = 10

let a = 18

let b = 44
///Operadores Lógicos

// Igual a ==
//AND = && (Ambos tienen que se riguales)
x == y && a==b

//OR = || (Con uno que sea igual)
x == y || a==b

(x == y || a==b) || (x != y || a==b)
//Diferente a !=

x != y

//Mayor que >

x>y

// Mayor o igual que >=

x >= y

//Menor que <

x < y

//Menor igual que <=

x <= y

// Estructuras de control
// IF - ELSE
let edad = 27
let edadMadura = 80
let nombre = "gali"

if (edad > edadMadura){
    print("Es Cierto")
}else{
    print("Es falso")
}
if (edadMadura > 60) && (nombre=="gali"){
    var descuento = "Tienes desceunto por ser mayor de edad \(nombre)"
}

// Switch

var resultado = ""
var valor_comparar = 1
var letra = "a"

switch valor_comparar {
    case 1:
        print("Es uno :v \(valor_comparar)")
    default:
        print("No se entró a ningun caso")
}
switch letra {
    case "a":
        print(letra)
    case "b":
        print(letra)
    default:
        print("No entró en ninguno")
}
