//
//  Product.swift
//  Actividad3V2
//
import Foundation

class Product {
  let name: String
  let price: Int
  init(name: String, price: Int){
    self.name = name
    self.price = price
  }
  func getPtriceByOrder(num:Int) -> Int{
    return self.price * num
  }
  func getPrice()->Int{
    return self.price
  }
}
