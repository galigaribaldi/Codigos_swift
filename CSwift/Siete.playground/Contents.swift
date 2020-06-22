import UIKit

// El cicloRepeat -While
// Ciclo Do - While
var y = 10
var x = 10
print("Dentro del Ciclo Repeat")
repeat{
    y += 1
    print(y)
}while y <= 20

// Ciclo While
print("Dentro del ciclo While")
while x <= 20 {
    print(x)
    x += 1
}
// Tablas de numeros
func tabladeMultiplicar(numero:Int){
    for i in 1...10{
        print("Tabla del \(numero): ", (i*numero))
    }
}

tabladeMultiplicar(numero: 1)
tabladeMultiplicar(numero: 2)
tabladeMultiplicar(numero: 3)
tabladeMultiplicar(numero: 4)
tabladeMultiplicar(numero: 5)
