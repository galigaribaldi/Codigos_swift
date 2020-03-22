/*
El punto parece ser que a veces, necesita una propiedad que tenga almacenamiento automático y algún comportamiento,
por ejemplo, para notificar a otros objetos que la propiedad acaba de cambiar.
Cuando todo lo que tiene es get / set , necesita otro campo para mantener el valor.
Con willSet y didSet , puede tomar medidas cuando se modifica el valor sin necesidad de otro campo. 
*/
 class Foo {
     var myProperty: Int = 0 {
         didSet { 
             print("The value of myProperty changed from \(oldValue) to \(myProperty)")
        }
    }
} 
/*
myProperty imprime su valor antiguo y nuevo cada vez que se modifica. Con solo getters y setters, necesitaría esto en su lugar:
*/

 class Foo2 {
     var myPropertyValue: Int = 0
     var myProperty: Int {
         get {
             return myPropertyValue
        } 
        set { 
            print("The value of myProperty changed from \(myPropertyValue) to \(newValue)")
            myPropertyValue = newValue
        } 
    } 
} 