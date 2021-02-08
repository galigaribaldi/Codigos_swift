//
//  Facade.swift
//  Actividad3V2

import Foundation

class Facade{
  static func serve(){
    let orderT = OrderTaker()
    orderT.takeOrder()
    let order = orderT.getOrder()
    TicketPrinter.printTicket(order: order)
  }
}
