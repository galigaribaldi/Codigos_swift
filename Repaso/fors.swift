let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
    "Simple": [1, 2, 3, 4, 5],
]
var largest = 0
for (kind, numbers) in interestingNumbers {
    print("Este es el valor de la variable numbers: \(numbers)")
    for number in numbers {
        print("Este es el valor de la variable number: \(number)")
        if number > largest {
            largest = number
        }
    }
}
print(largest)

////// fors con rangos
var total = 0
for i in 0..<4 {
    total += i
}
print(total)