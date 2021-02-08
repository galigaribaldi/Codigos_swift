//
//  ProductFactory.swift
//  Actividad3V2

import Foundation

class ProductFactory{
  static func getProduct(type: String)-> Product{
    switch type{
      case "suadero":
          return Taco(type: "Suadero", price: 12)
      case "longaniza":
          return Taco(type: "longaniza", price: 10)
      case "pastor":
          return Taco(type: "pastor", price: 12)
      case "carnitas":
          return Taco(type: "carnitas", price: 20)
      case "cebolla":
          return Product(name: "cebolla", price: 3)
      case "limon":
          return Product(name: "limon", price: 2)
      case "cilantro":
          return Product(name: "cilantro", price: 2)
      case "salsa":
          return Product(name: "salsa", price: 10)
      case "queso":
          return Product(name: "queso", price: 3)
      default:
          return Product(name: "invalid", price: 0)
    }
  }
}
