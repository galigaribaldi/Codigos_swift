//
//  main.swift
//  Actividad3
//
//  Created by Hernán Galileo Cabrera Garibaldi on 27/01/21.
//

import Foundation
//import XCTest

class Ingrediente {
    var Ingrediente: [Int:Int] = [1: 3, 2:2, 3:2, 4:10]
    
    func orden(numero_Ingredientes: Int, id_ingrediente: Int) ->  Int {
        let res = Ingrediente[id_ingrediente]! * numero_Ingredientes
        return res
    }
//
}

// Tacos
class Taco: Ingrediente{
    var tipo:[String:Int] = ["carnitas":15, "suadero":12, "pastor": 12, "cecina":10]
    var id_taco = ""
    func ordenT_solo(numero_tacos: Int, id_taco: String) -> Int {
        let res = tipo[id_taco]! * numero_tacos
        return res
    }
    func ordenT_ingrediente(numero_tacos:Int, id_ingrediente: Int, id_taco: String) -> Int {
        let taco = id_taco.replacingOccurrences(of: " ", with: "")
        let res = tipo[taco]! * numero_tacos * Ingrediente[id_ingrediente]!
        return res
    }
//
}

class Facade {
    private var taco: Taco
    private var ingrediente: Ingrediente
    init(taco: Taco = Taco(), ingrediente: Ingrediente = Ingrediente()) {
            self.taco = taco
            self.ingrediente = ingrediente
        }
//    Individual
    func pedir_individual(num_tacos: Int, id_taco: String) -> Int {
        let res = taco.ordenT_solo(numero_tacos: num_tacos, id_taco: id_taco)
        return res
    }
//    individual Ingrediente
    func pedir_taco_ingrediente_individual(id_taco: String, id_ingrediente: Int) -> Int {
        let res = taco.ordenT_solo(numero_tacos: id_ingrediente, id_taco: id_taco) * ingrediente.Ingrediente[id_ingrediente]!
        return res
    }
//    orden de tacos con ingrediente (1 solo tipo)
    func pedir_taco_ingrediente_orden(id_taco: String, id_ingredientes: Int, num_tacos: Int) -> Int {
        let res = taco.ordenT_ingrediente(numero_tacos: num_tacos, id_ingrediente: id_ingredientes, id_taco: id_taco)
        return res
    }
    //    orden de tacos con ingrediente (Varios tipos)
    func pedir_taco_ingrediente_diferente(id_taco: [String], id_ingredientes: Int, num_tacos: Int) -> Int {
        var suma = 0
        for i in id_taco {
            var aux = taco.ordenT_ingrediente(numero_tacos: num_tacos, id_ingrediente: id_ingredientes, id_taco: i) * taco.tipo[i]!
            suma = suma + aux
        }
        return suma
    }
}
//var opcion2 = opcion.lowercased().split(separator: ",")
class Cliente {
    static func clientCode(facade: Facade) {
        var suma = 0
        print("Cuantos Tacos Desea?\n")
        let iterations  = Int (readLine() ?? "0")
        print("Que taco desea?\n1.-Carnitas2.-suadero\n3.-Pastor")
        let t_taco  = String (readLine() ?? "carnitas")
        let tacos = t_taco.lowercased().split(separator: ",").map(String.init)
        for i in tacos {
            print("Desea agregar ingredientes? 0.- NO\n1.-Cebolla\n2.-limones\n3.-salsa\n4.-Cilantro")
            let ingrediente  = String (readLine() ?? "carnitas")
            let n_ingrediente = String(ingrediente).lowercased().split(separator: ",").map(String.init)
            for j in n_ingrediente{
                if Int(j) == 0{
                    let res = facade.pedir_individual(num_tacos: iterations!,id_taco: i)
                    print("El costo es: ", res)
                    suma = suma + res
                }
                else if Int(j) != 0{
                    print("Cuanto de ese ingrediente deseas?")
                    let n_ingrediente  = Int (readLine() ?? "0")
                    if n_ingrediente != 0{
                        let res = facade.pedir_taco_ingrediente_orden(id_taco: i, id_ingredientes: Int(j)!, num_tacos: iterations!)
                        print("Resultado es: ", res)
                        suma = suma + res
                    }
                    
                }
            }
        }
        print("Total: ", suma)
        
    }
}

let facade = Facade()
Cliente.clientCode(facade:facade)

