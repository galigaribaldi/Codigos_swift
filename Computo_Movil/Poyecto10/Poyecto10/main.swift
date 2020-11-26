/*
 @name: Cabrera Garibaldi Hernan Galileo
 @Date: 20/Nov/2020 - 28/Noviembre/2020
 @Descripcion: Project 1 of CM
 */
import Foundation

class Proyecto1 {
//    Area de variables, se usan diccionarios para guardar [Nombre: Valor]
    var dict_edades: [String:Int] = [:]
    var dict_Promedios: [String:Double] = [:]
    var dict_Becados: [String:Bool] = [:]
//Valores de letras
    let letras: [String] = ["A", "B", "C", "D", "E","F", "G", "H", "I", "J", "K", "L", "M","N", "Ñ","O", "P","Q","R","S",
    "T","U","V","W", "X", "Y", "Z"]
    
//    Funcion de pedir datos
    func pedirDatos(iteraciones: Int){
        for i in 1...iteraciones{
            print("Inserte su nombre[\(i)]: ")
            var nombre  = String (readLine() ?? "")

            print("Inserte su edad[\(i)]: ")
            var edad  = Int (readLine() ?? "0")
            self.dict_edades.updateValue(edad ?? 0, forKey: nombre)
            
            print("Inserte su promedio[\(i)]")
            var promedio = Double (readLine() ?? "0")
            self.dict_Promedios.updateValue(promedio ?? 0.0, forKey: nombre)
            
            print("Cuenta usted con Beca?\nSi cuento con Beca = 1\nNo cuento con Beca = 2")
            var beca = Int(readLine() ?? "0")
            
            if beca == 1{
                self.dict_Becados.updateValue(true, forKey: nombre)
            };if beca == 2{
                self.dict_Becados.updateValue(false, forKey: nombre)
            }
        }
    }
//    Ordenamiento automatico de datos
    func ordenamientoV2() {
        let nombresOrdenado = self.dict_Promedios.keys.sorted()
        print("Nombres ordenados: ", nombresOrdenado)
        
        let califOrdenadas = self.dict_Promedios.values.sorted()
        print("Esta es la calificacion Menor: ", califOrdenadas[0])
        print("Esta es la calificacion Mayor: ", califOrdenadas[(califOrdenadas.count)-1])
//        print("Calificaciones Ordenadas: ", califOrdenadas)
        for i in nombresOrdenado{
            if self.dict_Becados[i]! == true{
                print("El alumno ", i," Tiene Beca con promedio: ",self.dict_Promedios[i]!)
            }
            
        }
    }
}

let Roy = Proyecto1()
//var res = 0
while true {
    print("Cuantos alumnos quieres pedir?\nPresiona 0 para salir")
    var iterations  = Int (readLine() ?? "1")
    if iterations == 0{
        exit(0)
    }
    Roy.pedirDatos(iteraciones: iterations!)
    Roy.ordenamientoV2()
}
