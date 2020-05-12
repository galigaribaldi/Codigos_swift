func greet(name: String, today: String) -> String {
    return "Hello \(name), today is \(today)."
}
print(greet(name: "Gali", today: "Sabado"))

////
func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
print(greet("John", on: "Wednesday"))
//// Funciones que reciben multiples argumentos

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        print(score)
        if score > max {
            max = score
            print("Valor maximo \(max)")
        } else if score < min {
            min = score
            print("Valor minimo: \(min)")
        }
        sum += score
        print("Valor de sum: \(sum)")
    }
    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print("Valor de sum f \(statistics.sum)")
print("Valor de min f \(statistics.min)")


//////////////////Retorna un entero y no recibe parametros///////////////////
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
print(returnFifteen())

/////////////Funcion que hace que un eneero entre en otra fucnion//////////////
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
print(increment(7))


///MAs parecido a la prgoramacion funcional
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)

numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})

let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)

let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)