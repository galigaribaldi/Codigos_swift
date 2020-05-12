//En swift no se requiere ningun tipo de main ni importar nada adicional
print("Hola mundo")
/* Variables
Constante: Se define con "let" y es cunado no se modificara el valor
Variable: Cuando se sabe que el valor puede modificarse despues
*/
var myVariable = 42
print(myVariable)
myVariable = 50
print(myVariable)
///
let myConstant = 42
print(myConstant)

//myConstant = 59 Marcará error
//print(myConstant)
////////////////////////////////////////////////
let implicitInteger = 70
print("Entero implicito: ",implicitInteger)
let implicitDouble = 70.0
print("Doble Implicito: ",implicitDouble)
let explicitDouble: Double = 70
print("Usando la palabra Double (explicito): ",explicitDouble)
/*  Ejercicio   */
let explicitFloat: Float = 4.1
print(explicitFloat)
////////////////////////////////////////////
let label = "The width is"
let width = 94
let nuevo = label + String(width)
print(nuevo)
/*  Ejercicio   */ //Si s eremueve marca error por el cast
//let nuevo2 = label + (width)
/////////////////////////////////////////
let apples = 3
print("I Have \(apples) apples")
let oranges = 5
print("I have \(apples + oranges)")
/*  Ejercicio   */
let nombre: String = "gali"
print("Mi nombre es \(nombre) y tengo \(apples*7) años")