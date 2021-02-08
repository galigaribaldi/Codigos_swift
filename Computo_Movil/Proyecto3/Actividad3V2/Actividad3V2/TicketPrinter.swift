//
//  TicketPrinter.swift
//  Actividad3V2

import Foundation

    class TicketPrinter{
        static func printTicket(order: Order){
            let allProducts = order.getProducts().reduce(into: [String : (number: Int, total: Int)]()) { result, product in
                if let acc = result[product.name]{
                    result[product.name] = (acc.number + 1, acc.total + product.getPrice())
                }else{
                    result[product.name] = (number: 1, total: product.getPrice())
                }
                
            }
            print("Gracias por su compra")
            print("Producto:\t cantidad\t total")
            var total = 0
            for (key, value) in allProducts{
                total += value.total
                if key.count < 14{
                    print("\(key)\t\t\t\(value.number)\t\t$\(value.total)")

                }else{
                    print("\(key)  \(value.number)\t\t$\(value.total)")

                }
            }
            print("\nTotal: \t\t\t\t\t\t$\(total)")
            
        }
    }
