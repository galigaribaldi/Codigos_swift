/*Control de Flujo*/
let puntuaciones = [75, 43, 103, 87, 12]
var teamScore = 0
for score in puntuaciones{
    if score > 50{
        print(teamScore)
        teamScore += 3
    }else{
        teamScore += 1
    }
}
print(teamScore)

//En algunso casos se puede poner un "Signo de interoracion apra sbaer
//Si la variable puede no tener nulo
var optionalString: String? = "Hello"
//print(optionalString)
optionalString = nil
//print(optionalString)

var optionalName: String? = "John titor"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}else{
    print("Ese no es el nombre")
}
print(greeting)
/*  ejercicio   */
/* Si se cambia a nil el valor marcafra un error y no podra comtinual
optionalName =nil
*/
///////////////////////////////////////////
let vegetable = "red pepper"
switch vegetable {
    case "celery":
        print("Add some raisins and make ants on a log")
    case "Cucumber", "watercress":
        print("That would make a good tea sandwixh")
    case let x where x.hasSuffix("pepper"):
        print("Is it a spicy \(x)?")
    default:
        print("Everything tastes good in soup.")
}

/*  Ejercicio   */
/*      Si se quita el default marcara error        */