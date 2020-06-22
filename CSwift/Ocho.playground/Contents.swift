import UIKit

// Los optionals: Un valor "Optional" contiene un valor o  contiene un "nil"
//  para indicar que el valor no existe o esta perdido

var unString:String = "Hola mundo"

var otroString:String = ""

var optionalString:String?  //Optional String

optionalString = "Esto es un OptionalString"

print(unString)
print(optionalString) //Un valor que puede o no estar
print(optionalString!) //unwrap = Desenvolver el tipo de dato, indicarle que si hay algo

// .---------------------
var optionalEntero:Int?
optionalEntero = 18
print(optionalEntero)
print(optionalEntero!) //Unwrapp
