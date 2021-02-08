//
//  Taco.swift
//  Actividad3V2
//

class Taco: Product{
  let type: String
  init(type: String, price:Int){
    self.type = type
    super.init(name: "Taco de \(type)", price:price)
  }
}
