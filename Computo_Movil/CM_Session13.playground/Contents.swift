import UIKit

var name: String?

name = "NombreFicticio"

let validName = name ?? "No hay valor"

print(validName)

// Guard let o Guard Binging

func validate(_ name: String?) -> String{
    guard let nameFunction = name else {
        return "No es un nombre valido"
    }
    return "\(nameFunction) es valido"
}
print(validate(name))
