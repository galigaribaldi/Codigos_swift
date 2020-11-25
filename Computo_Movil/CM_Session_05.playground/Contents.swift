import UIKit

//impresion a pantalla

print("Hola mundo")
//constantes
let pi = 4.1415223

var edad = 18

edad = 22

print(edad)

edad = Int(22.3)

print(edad)
//Que tipo de dato es, etiqueta del identificadi:, tipo de dato = valor
var promedio: Double = 9.4
let nombre: String = "Aldo"
var i: Int = 0
//Incremento
i+=1
print(i)
//Operadores de comparación < > = !=
if nombre == "Aldo"{
    print("Es cierto")
}else{
    print("Es falso")
}
//Rangos
for j in 1...5{
    print(j)
}

for j in stride(from: 5, to: 1, by: -1){
    print(j)
}
print("Iteradores en Lista con count")
let alumnos = ["Aldo", "Lorudes", "Armando","Juanita"]
for alumno in 1...alumnos.count{
    print(alumno)
}
var datoConsola = readLine()
print(datoConsola)
