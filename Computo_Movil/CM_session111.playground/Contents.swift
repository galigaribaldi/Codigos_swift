import UIKit

//Optionasl
// void * Definicion de nulo en C
// Int *x
var x: Int?
x = 3
//Force Unwrap
//print(x)

//optional Binding
if x != nil{
    print(x!)
}else{
    print("No hay un valor")
}

if let valor = x{
    print(valor)
}else{
    print("En este else no hay valor")
}
