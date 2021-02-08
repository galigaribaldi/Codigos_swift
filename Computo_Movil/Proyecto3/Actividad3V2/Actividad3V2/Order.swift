//
//  Order.swift
//  Actividad3V2

import Foundation

class Order{
  var products: [Product]
  init(){
    self.products = []
  }
  func addTacosAndExtras(number: Int, type:String, extras:[String]){
    let tacos = 1...number
    for _ in tacos{
      self.products.append(ProductFactory.getProduct(type:type))
      for extra in extras{
        if extra != "salsa" && extra != "limon"{
          self.products.append(ProductFactory.getProduct(type:extra))
        }
      }
    }
  }
  func addExtras(number:Int, type:String){
    let count = 1...number
    for _ in count{
      self.products.append(ProductFactory.getProduct(type:type))
    }
  }
  func getProducts() -> [Product]{
    self.products
  }
}
