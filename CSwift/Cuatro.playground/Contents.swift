import UIKit

// Funciones en Swift
func multiplicaPorDos(numero:Int){
    let resultado = numero * 2
    print(resultado)
}
multiplicaPorDos(numero: 90)

multiplicaPorDos(numero: 990)

// Multiples Parametros - return

var resultadoSuma = 0

func suma(numero:Int, numero2:Int) -> Int{
    let momentaneo = numero * 2
    return momentaneo
}

resultadoSuma = suma(numero: 90, numero2: 90)

print("El resultado es: \(resultadoSuma)")
