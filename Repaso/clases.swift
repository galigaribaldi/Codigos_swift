class Shape {
    var numberOfSides = 0
    let color = "red"
    func simplDescription() -> String{
        return "A Shape With \(numberOfSides) sides"
    }
    func simpleColor() -> String{
        return "The color is: \(color)"
    }
}

class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

class Square: NamedShape{
    var sideLength: Double
    //inicializador
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }

    func area() -> Double{
        return sideLength * sideLength
    }
    override func simpleDescription() -> String {
        return "A square with Sides of length \(sideLength)"
    }

}


/*      Ejercicio       */

class Circle: NamedShape {
    var radius: Double
    //inicializador
    
    init(radius: Double, name:String) {
        self.radius = radius
        super.init(name: name)
        numberOfSides = 6
    }
    func area() -> Double{
        return radius * radius * 3.14 
    }
    override func simpleDescription() -> String {
        return "Esto es un simple circulo alv con radio \(radius)"
    }
}


class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }   
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}

class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}

//Instanciacion de shape
print("Clase Shape")
var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simplDescription()
var shapeColor = shape.simpleColor()
print("\(shapeDescription) \n \(shapeColor)")

//Instanaciacion de la funcion Square
print("Clase Cuadrado")
let test = Square(sideLength: 5.2, name: "My test Square")
print(test.area())
print(test.simpleDescription())

//instanciacion de la clase Circle
print("Clase Circulo")
let circulo = Circle(radius: 6, name: "Un circulo de prueba")
print(circulo.area())
print(circulo.simpleDescription())

//instanciacion de un la clase triangulo equilatero
print("Clase TRinagulo equilatero")
var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)

///Instanciacion de la clase que decide triangulo Cuadrado
var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
print(triangleAndSquare.triangle.sideLength)

///Si el valor ha cambiado
print("Si el valor ha cambiado \n")
let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
print(optionalSquare?.sideLength)