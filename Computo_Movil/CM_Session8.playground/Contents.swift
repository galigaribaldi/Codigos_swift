import UIKit
//Referencia a memoria estática
//struct son tipos de dato por parametro o Valor
struct Coche{
    var modelo: String
    var  year: Int
    func validaCompra(){
        print("Compra Generica")
    }
}

//Se va al Stack
var vw = Coche(modelo: "VW", year: 1978)

func cambiarModelo(coche: Coche){
    var otroCoche = coche
    otroCoche.modelo = "Forsd"
}

cambiarModelo(coche: vw)

print(vw.modelo)
print(vw.year)

// Referencia a memoria  Usanod Class
//Iniciadores en clase se tienen que hacer a mano
//Clases son tipos de dato por referencia
class Profesor{
    var nombre: String = ""
    var sueldo: Double = 0.0
    func altaProfesor(nombre: String, sueldo: Double){
        self.nombre = nombre
        self.sueldo = sueldo
    }
    
    
}
//Instancias que vengan de una clase deben ser de tipo Let
let hugoProfe = Profesor()
let joseProfe = hugoProfe

func cambiaSueldo(profesor: Profesor){
    profesor.sueldo = 100
}
hugoProfe.altaProfesor(nombre: "Hugo", sueldo: 2000)

cambiaSueldo(profesor: joseProfe)
print("El sueldo de Jose Profe es: \(joseProfe.sueldo) y el Sueldo de HugoProfe es: \(hugoProfe.sueldo)")
