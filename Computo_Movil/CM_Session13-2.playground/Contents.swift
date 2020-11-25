import UIKit

func elements(x: Int, y:Int) -> (Int, String){
    return (x + y, "Este es el resultado")
}

let resultado = elements(x: 22, y: 22)

print(resultado.0, resultado.1)
//
func sumaVentas(ventas: Int... ) -> Int{
    var total = 0
    for venta in ventas{
        total = total + venta
    }
    return total
}

// Mejorados, con funciones variadicas
func sumaVentas(ventas: [Int] ) -> Int{
    var total = 0
    for venta in ventas{
        total = total + venta
    }
    return total
}

let r1 = sumaVentas(ventas: 1,2)
let r2 = sumaVentas(ventas: 1,2,3,5,6,4)
print(r1, r2)

let ventasD1: [Int] = [1, 2]
let ventasD2: [Int] = [1, 21, 23, 34]

let r3 = sumaVentas(ventas: ventasD1)
let r4 = sumaVentas(ventas: ventasD2)
print(r3, r4)
