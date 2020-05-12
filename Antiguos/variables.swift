// Para definir un tipo de dato variable
var num: Int = 10
num = 20
print(num)
// Para deifnir una constante
let cantidad = 4
var cantidad2 = 15
let texto: String = "Hola Mundo"
let numero: Int = 17
let numero2: Float = 15.9
/*
    Terminator Al final de la linea
    Separator inteseccion entre textos
*/
print(numero2, numero, terminator: " | ")
print(numero2, numero, separator: "->")
print("El numero es: \(numero2)")
///////////////////////////////

let decimal: Int = 17
let binario = 0b1001
let octal = 0o21 //1x1 + 2x8 = 17
let hexadecimal = 0x11 //1x1 + 1x16
let hexa1 = 0xfp2 // 0xf * 2**2
let flotante: Float = 10e5
var numero3: Double = 100
print("Numero decimal \(decimal) Binario: \(binario) Octal: \(octal) hexadecimal: \(hexadecimal) Flotante: \(flotante)")
print(numero3)

//Tipos de dato
let numero: UInt8 = UInt8.max //+1
print(numero) //es 255
let dosMil UInt16 = 2000
let uno: UInt8 = 1
