import UIKit
//Structu
struct Empleado{
//    Propeidades
  var name: String
  var age: Int
  var salary: Double
//Modifican la isntancia de la misma clase
  mutating func modifySalary(value: Double){
    self.salary = self.salary + value
  }

  func suma(a: inout Int){
    a = a + 10
  }
}
var edad: Int = 0
var godin = Empleado(name: "Juancho", age: 34, salary: 265.50)
godin.modifySalary(value: 200)
print(godin.salary)

