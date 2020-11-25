import UIKit

var str = "Hello, playground"
// Usando Structuras
// Paso por Valor
struct Coche{
    var model: String
    var year: Int
    
    func validaCompra(){
        print("Coche de agencia")
    }
    
}

var vw = Coche(model: "VolksWagen", year: 1978)
print(vw)
print(vw.model)
print(vw.year)

//Funcion para cambiar el modelo del coche
func cambiarModelo(coche: Coche, modelo: String){
    var otroCoche = coche
    otroCoche.model = modelo
}

cambiarModelo(coche: vw, modelo: "Ferrari")

print(vw.model)

//Paso por referencia

class Profesor{
    var nombre: String = ""
    var sueldo: Double = 0.0
    
    func altaProfesor(nombre: String, sueldo: Double){
        self.nombre = nombre
        self.sueldo = sueldo
    }
}

let hugoProfe = Profesor()
let joseProfe = hugoProfe

func cambiarSueldo(profesor: Profesor, sueldos: Double){
    profesor.sueldo = sueldos
}

hugoProfe.altaProfesor(nombre: "Hugo", sueldo: 100)
print("Este es el sueldo de Hugo: \(hugoProfe.sueldo), Este es el sueldo de Jose: \(joseProfe.sueldo)")

cambiarSueldo(profesor: joseProfe, sueldos: 10000)
print(hugoProfe.sueldo, joseProfe.sueldo)
