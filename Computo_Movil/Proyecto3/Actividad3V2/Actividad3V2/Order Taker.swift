import Foundation

class OrderTaker {
    var order: Order
    
    init() {
        order = Order()
    }
    
    func takeOrder() {
        let tacosTypes: [Int: String] = [1: "suadero", 2:"longaniza", 3: "pastor", 4: "carnitas"]
        let tacosComplements: [Int: String] = [1: "cilantro", 2: "cebolla", 3:"salsa", 4:"queso", 5:"limon"]
        var isDone:Bool = false
        repeat {
            var tacosNumber = 0
            print("Cuantos Tacos Desea?\n")
            tacosNumber = Int (readLine() ?? "0")!
            if tacosNumber != 0 {
                print("De que son sus tacos?\n1.-suadero\n2.-longaniza\n3.-pastor\n4.carnitas")
                let tacoType  = Int(readLine() ?? "1")!
                print("Con qué van sus tacos? Sin nada(enter)\n1.-cilantro\n2.-cebolla\n3.-salsa\n4.-queso\n5.-limon")
                
                if let extrasInput = readLine(){
                    let extras = extrasInput.lowercased().split(separator: ",").map({tacosComplements[Int($0)!]!})
                    
                    self.order.addTacosAndExtras(number: tacosNumber, type: tacosTypes[tacoType]!, extras: extras)
                    if extras.contains("salsa"){
                        self.order.addExtras(number: 1, type: "salsa")
                    }
                    if extras.contains("limon"){
                        print("Cuántos limones necesitas?")
                        let lemonsNumber  = Int(readLine() ?? "1")!
                        self.order.addExtras(number: lemonsNumber, type: "limon")
                    }
                } else{
                    self.order.addTacosAndExtras(number: tacosNumber, type: tacosTypes[tacoType]!, extras: [])
                }
            }
            print("Desea algo más?\n0)No\n1)Si\n")
            if let addToOrder = readLine(){
                if Int(addToOrder)! == 0 {
                    isDone = false
                }
                
            }
        }while(isDone)
    }
    
    func getOrder() -> Order {
        self.order
    }
}
