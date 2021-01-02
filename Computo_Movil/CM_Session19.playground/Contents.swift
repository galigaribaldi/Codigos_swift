class Alumno{
    var age: Int
    init?(age: Int) {
        if age < 10{
            self.age = age
        }else{
            return nil
        }
    }
}
/*
if let armando = Alumno(age: 17){
    print("Se creo el alumno Armando")
}else{
    print("No se pudo crear el alumno armando")
}
let armando = Alumno(age: 19)
*/
//
guard let armando = Alumno(age: 17) else {
    fatalError("No se pudo crear el alumndo")
}
print("Se pudo crear el alumno con edad de: \(armando.age)")
