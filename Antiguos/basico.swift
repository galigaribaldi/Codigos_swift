//Para correr es Swift "NombreDelArchiv"
//Para compilar y generar ejecutable es swiftc
// Y colles el ejecutable con ./nombre
print("Hola mundo")

func greet(name: String, surname: String){
    print("Greetings \(name) \(surname) ")
}
let myName = "Homer" //constantes cuando se definen con let
let mySurname = "Simpson"

greet(name: myName, surname: mySurname)