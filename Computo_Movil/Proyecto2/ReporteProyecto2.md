# Proyecto 2



## Planteamiento del Problema

Para esta actividad se plantearon 5 problemas, cada uno de estos conllevaron un pensamiento diferente y una situación diferente a nivel de código, sin embargo, todas estas se presentan como funciones por cada problema, estas engloban una clase general llamada *Proyecto 2*

## Ejercicio 1

**Planteamiento del problema:** Desarrolle el algoritmo que calcule 2 a la N donde N es un número entero mayor o igual a cero, el algoritmo debe ser desarrollado utilizando exclusivamente recursividad

### Diagrama de Flujo

**Planteamiento de la Solución:** Para este problema se usó un siimple if, de esta forma podemos usar la recursividad apra char el caso base, dónde el valor de entrada es mayor a 0

<img src="Programa 1.png" alt="Programa 1" style="zoom:50%;" />

### Código

```swift
//    Ejercicio 1
    func ejercicio1(value: Int) -> Int{
        let base = 2
        var pot:Int
        if (value == 0) {
            pot = 1
        }else if (value > 0) {
            pot = base * ejercicio1(value: value - 1)
        } else {
            pot = 0
        }
        return pot
    }
```

### Capturas de Pantalla

![Captura de Pantalla 2021-01-01 a la(s) 23.39.29](../Proyecto2/Captura de Pantalla 2021-01-01 a la(s) 23.39.29.png)

## Ejercicio 2

**Planteamiento del problema:** Dado a y b como números enteros, realizar la sumatoria de: 1^a + 2^a + 3^a ... b^a 

### Diagrama de Flujo

**Planteamiento de la Solución:** Para este problema se usó un for, en donde see recorriera de 1 hasta el valor de *b*, se eleva a la potencia indicada y se guarda en una variable donde se suma.

<img src="Programa 2.png" alt="Programa 2" style="zoom:50%;" />

### Código

```swift
//    Ejercicio 2
    func ejercicio2(a: Int, b:Int) -> Decimal{
        let a1 = Decimal(a)
        var suma: Decimal = 0
        for i in 1...b{
            let i2 = Decimal(i)
            print("b[\(i)]^a[\(a)]", pow(i2, a))
            suma = suma + pow(i2, a)
        }
        return suma
    }
```

### Capturas de Pantalla

![Captura de Pantalla 2021-01-01 a la(s) 23.40.32](../Proyecto2/Captura de Pantalla 2021-01-01 a la(s) 23.40.32.png)

## Ejercicio 3

**Planteamiento del problema:** Dada una cadena introducida por el usuario validar si es un número telefónico con la siguiente estructura (nn) - nn - nnnn - nnnn

### Diagrama de Flujo

**Planteamiento de la Solución: ** Para este problema se penso primero en cómo dividir las cadenas, estas deben de estar separadas principalmente por el delimitador *-*, a su vez para validar que la cadena sea válida, debe de contar con los parentesis que envuelven a los 2 primeros dígitos *(n)*, posteriormente se aceptan los números de dígitos. En caso de no contar con alguno de estas características o bien no contar con ninguna, se lanza que no es válida.

<img src="Programa 3.png" alt="Programa 3" style="zoom:33%;" />

### Código

```swift
//    Ejercicio 3
    func ejercicio3(){
        print("Inserte la cadena a Verificar>> ")
        let b  = String (readLine() ?? "¿?")
        let a = b+"  "
        print("Cadena a Verificar: ", a, " Tamaño de la cadena: ", a.count)
        let tam = a.count
        var cadenaSeparada = a.split(separator: "-")
        var iterador:Int = 0
        var verif:Int = 0
        var verif2:Bool
        var cademaSeparada2: String
        if a.hasPrefix("(") && a.contains(")") && a.contains(" - "){
            print("Si esta")
            for i in cadenaSeparada{
                iterador = iterador + 1
                if iterador > 1{
                    verif = i.count
                }
            }
            if verif == 8{
                print("Cadena Validada! Cumple el formato (nn) - nn - nnnn - nnnn")
            }
        }else{
            print("La cadena no contiene la estructura Valida")
        }
    }
```

### Capturas de Pantalla

![Captura de Pantalla 2021-01-01 a la(s) 23.41.52](../Proyecto2/Captura de Pantalla 2021-01-01 a la(s) 23.41.52.png)

![Captura de Pantalla 2021-01-01 a la(s) 23.44.02](../Proyecto2/Captura de Pantalla 2021-01-01 a la(s) 23.44.02.png)

## Ejercicio 4

**Planteamiento del problema:** Dada un lista de recetas (mínimo 10 recetas - texto) encontrar las recetas que contengan alguno o algunos ingredientes. El usuario solo verá las recetas que contengan los ingredientes que el captura desde la línea de comandos. Es importante que las recetas no solo indiquen instrucciones, sino también ingredientes. El usuario puede hacer la siguiente captura:

* Introduce ingredientes > huevos
* Introduce ingredientes > res, huevos, sal 
* Introduce ingredientes > haria, sal, leche

### Diagrama de Flujo

**Planteamiento de la Solución:** Para este Planteamiento se toma en cuenta tener una lista de recetas previamente cargadas, esta lista es una estrcutura de tipo *diccionario*, dónde está como llave el nombre de la receta y como valor se tiene la receta en sí. *llave(Nombre de la receta)->"Bisquets"*:*Valor(Contenido de la receta)*

<img src="Programa 4.png" alt="Programa 4" style="zoom:50%;" />

### Código

```swift
//    Ejercicio 4
    func ejercicio4(){
        print("Existen ", self.listaRecetas.count, " en el recetario")
        print("Escriba los ingredientes que desea Buscar>> ")
        var opcion  = String (readLine() ?? "¿?")
        var opcion2 = opcion.lowercased().split(separator: ",")
        var contador: Int = 0
        for k in opcion2{
            for (i,j) in self.listaRecetas{
                if j.lowercased().contains(k){
                    print("La Receta de: ", i, " Contiene el ingrediente: ", k)
                    print(j)
                    contador = contador + 1
                }
            }
        }
        print("Se encontraron \(contador) coincidencias en \(self.listaRecetas.count) Listas")
    }
```

### Capturas de Pantalla

![Captura de Pantalla 2021-01-01 a la(s) 23.45.41](../Proyecto2/Captura de Pantalla 2021-01-01 a la(s) 23.45.41.png)

![Captura de Pantalla 2021-01-01 a la(s) 23.45.48](../Proyecto2/Captura de Pantalla 2021-01-01 a la(s) 23.45.48.png)

![Captura de Pantalla 2021-01-01 a la(s) 23.46.09](../Proyecto2/Captura de Pantalla 2021-01-01 a la(s) 23.46.09.png)

## Ejercicio 5

**Planteamiento del problema:** Dado un arreglo de números enteros, regresar un nuevo arreglo tal que cada elemento en la posición "i" del nuevo arreglo es el producto de todos los números del arreglo original menos el de la posición i, por ejemplo: [1, 2, 3, 4, 5] nos dará el nuevo arreglo con los valores [120, 60, 40, 30, 24]

### Diagrama de Flujo

**Planteamiento de la Solución:** Para este problema se pensaron varias formas de cómo resolverlo, sin embargo se optó por isar 2 opciones particulares de los arreglos o bien, las listas, se usa la operación de tipo *remove* y la operación de tipo *append*, estas cumplen las funciones de quitar el primer elemento para agregarlo al final de el arreglo, haciendo que se forme la estructura deseada.

<img src="Programa 5.png" alt="Programa 5" style="zoom:50%;" />

### Código

```swift
//    Ejercicio 5
    func ejeercicio5(arregloNumeros: [Int]) -> [Int] {
        var arregloFinal: [Int] = []
        var multiplicacion: Int = 1
        var arregloNumeros2 = arregloNumeros
        var c: Int = 0
        for i in 1...arregloNumeros.count{
            for j in 2...arregloNumeros2.count{
                multiplicacion = multiplicacion * arregloNumeros2[j-1]
            }
            arregloFinal.append(multiplicacion)
            c = arregloNumeros2.remove(at: 0)
            arregloNumeros2.append(c)
            multiplicacion = 1
        }
        return arregloFinal
    }
}
```

### Capturas de Pantalla

![Captura de Pantalla 2021-01-01 a la(s) 23.49.28](../Proyecto2/Captura de Pantalla 2021-01-01 a la(s) 23.49.28.png)

## Código Final y ejecución

Finalmente se puso todo el código en una clase llamada **Proyecto 2**, esta contiene a manera de métodos, todas las funciones anteriormente explicadas.

```swift
/*
 @name: Cabrera Garibaldi Hernan Galileo
 @Date: 10/Diciembre/2020 - 6/Enero/2021
 @Descripcion: Project 2 of CM
*/
import Foundation

class Proyecto2{
//    Variables para el ejercico 4
    var listaRecetas: [String:String] = ["1.- Bisquets":"Precalienta el horno a 180°C, En un bowl mezclamos la harina, el polvo para hornear, media cucharadita de sal y una cucharada de azúcar. Añadimos la mantequilla cortada en cuadros (tiene que estar fría).Mezcla presionando con los dedos hasta que tenga consistencia de pan rallado.Se añade el huevo batido y la leche. Mezcla con una cuchara hasta conseguir una masa. Pon harina en tu superficie de trabajo. Coloca la masa salpica de harina y se trabaja para formar una bola. Estira la bola con el rodillo (1.5 cm de grosor) y corta los biscuits con moldes circulares. Coloca las ruedas en una bandeja con papel de hornear y se pinta la parte superior con la mezcla de huevo y leche. Mete al horno durante 15 minutos o hasta que se doren.", "2.- Crepas":"Ponga la harina, los huevos, el azúcar, la vainilla, y 1 taza de leche en un tazón grande. Utilice un batidor de mano, una batidora eléctrica, una licuadora normal o de inmersión para combinar y mezclar todos los ingredientes hasta que tenga una masa suave. Añada las 2 tazas restantes de leche y mezcle hasta que la masa quede sin grumos. Si esta preparando la masa de las crepas de antemano en este momento se puede refrigerar hasta el momento de cocinar las crepas. Se agrega la mantequilla derretida y se vuelve a mezclar (con una cuchara) justo al empezar a cocinarlas. En la sartén que va a utilizar para los crepes o crepas, derrita la mantequilla a fuego lento. A continuación, vierta la mantequilla derretida en un tazón pequeño y deje que se enfríe un poco. Luego agrega esta mantequilla a la masa de las crepas y mezcle bien. Su sartén quedará engrasada y lista para cocinar la primera crepa. Caliente la sartén a fuego medio. Cada estufa y sartén son diferentes, así que cada quien tiene que encontrar el nivel ideal de la temperatura. Generalmente, para una estufa de gas es entre el 50% y el 75% del máximo. Use una cuchara sopera grande (o media taza de medir) para verter la masa en la sartén con una mano, mientras sostiene la sartén con la otra mano, luego rápidamente vaya inclinando la sartén los lados para que la masa de la crepa quede distribuida en toda la superficie plana de la sartén. Se cocina el primer lado de la crepa durante aproximadamente un minuto o hasta que los bordes de la crepa se empiezan a dorar. Use una espátula plana para verificar y voltear la crepa. Deslice la espátula plana suavemente debajo de la crepa, voltéela (use su mano con cuidado si es necesario para ayudar a darle vuelta) y cocínela en el otro lado durante unos 15 a 25 segundos. Retire la crepa de la sartén y póngala en un plato. Repita el proceso hasta que haya terminado con toda la masa. Las crepas se pueden servir inmediatamente con su elección de rellenos.", "3.- Churros":"Prepara una bandeja o plato cubierto con una toalla de papel para colocar los churros después de freírlos. Mezcla el azúcar y la canela y colócalas en un plato poco profundo para cubrir los churros. Puedes apretar los churros de la bolsa de pastelería directamente en el aceite caliente o formarlos primero y colocarlos en una bandeja forrada con papel especial para hornear antes de freírlos, como se ve en las fotos. Yo usé un termómetro láser para verificar la temperatura del aceite, pero también puedes usar un termómetro para preparar jaleas o dulces. La mejor opción de aceite para freír los churros es el de canola o aceite vegetal.", "4.- Mantecadas":"Mientras realizas la preparación de las mantecadas, te sugerimos que precalientes el horno a 180°C. En un recipiente debes cernir la harina junto con el polvo para hornear, la pizca de sal, mezcla bien, reserva. En otro recipiente coloca los huevos y bátelos a velocidad baja, durante 5 min. Agrega la taza de azúcar y sigue batiendo otro minuto más, una vez pasado el tiempo  agrega el aceite y la esencia de vainilla, sigue batiendo hasta incorporar bien. Adiciona poco a poco la mezcla de harinas reservadas previamente, cada vez que incorpores esta mezcla ve agregando un poco de leche, sigue batiendo a velocidad baja hasta incorporar el resto. Bate un poco hasta integrar todos los ingredientes. Coloca los capacillos  sobre el molde para hornear y agrega la mezcla a ¾ de su capacidad. Hornea a 180 °C durante 25 min. (para verificar si están listas puedes hacer la prueba del palillo que al introducirlo en una de las mantecadas este saldrá seco). Una vez listas, deja reposar las mantecadas antes de desmoldarlas. Para preparar el jarabe, coloca el azúcar en el agua caliente y disuelve bien. Desmolda las mantecadas y con ayuda de una brocha para cocina coloca el jarabe sobre ellas y barniza cada una. Déjalas reposar unos minutos y estarán listas", "5.- Ponche":"Coloque agua en una olla grande, Agrega el piloncillo (o azúcar morena) y la canela, cocina durante unos 15 minutos. Si está usando Tejocotes frescos, agréguelos con el piloncillo y la canela, ya que tardan más tiempo en ablandarse, Agrega las guayabas picadas, las manzanas y las ciruelas pasas junto con el resto de los ingredientes, como los pedazos de caña de azúcar, las vainas de tamarindo o las flores de Jamaica. Si está utilizando la versión enlatada de los tejocotes, agréguelos en este paso. Cocine a fuego lento durante aproximadamente 1 hora. Sirva caliente en tazas, sirva algo de fruta y agregue ron a su gusto.", "6.- Cafe de Olla":"Agrega el agua en una olla de barro con el piloncillo, la canela, la cáscara de naranja y el clavo de olor a fuego medio. Al momento de que suelte el hervor, apaga el fuego, agrega el café y reposa por cinco minutos. Pasa por un colador y sirve.","7.- Te de Limon":"Lava y desinfecta los limones; sácales las semillas. En una olla pon un litro de agua a hervir. Saca la ralladura de los dos limones y agrégala al agua. Exprime los limones y agrega su jugo al agua. Agrega las ramas de té limón y pon a hervir a fuego bajo durante 5 minutos. Agrega el azúcar o edulcorante que desees. Cuela muy bien y sirve calientito.", "8.- Malteadas":"Colocar en el vaso de la licuadora la leche junto con el helado y un toque de vainilla. En vaso alto o para malteada agregar alrededor un poco de chocolate líquido. Vaciar la mezcla. Agregar la crema para batir, las chispas de chocolate y como toque final una cereza.", "9.- Conchas de pan":"Precalienta el horno a 180°C. Hidrata la levadura con la leche y deja reposar 10 minutos. En una batidora agrega la harina con el azúcar,la sal, la leche, la levadura hidratada, los huevos, la esencia de vainilla y bate hasta tener una masa homogénea. Agrega la mantequilla y bate hasta que se incorpore por completo. Coloca la masa en un bowl engrasado y tápala, deja reposar por 2 horas o hasta que doble su volumen. Para la costra: coloca en la batidora la harina con el azúcar glass, agrega la manteca vegetal y mezcla, hasta obtener una masa homogénea. Separa la mitad de la masa, agrega a una la cocoa en polvo y a la otra la esencia de vainilla. Tapa y reserva. Sobre una superficie lisa, pesa bolitas de 80 gramos, coloca en una charola y aplana con la palma de la mano. Toma un poco de la masa de la costra de aproximadamente 15 gramos y con ayuda de un rodillo aplana hasta obtener un diámetro igual al de la concha. Cubre las conchas con la costra y marca con un cortador. Deja reposar hasta que dupliquen su volumen y hornea por 15 minutos.", "10.- Brownies de Chocolate":"Precalentar el horno a 176°C. En una cacerola derretir la mantequilla y el chocolate o ponerlo a baño maria. Dejar enfriar. Agregar el azúcar y los huevos uno por uno, a la mezcla de chocolate, mezclar muy bien después de agregar cada uno de los huevos. Añadir harina y vainilla, mezclar bien. Expandir la mezcla en un molde cuadrado para hornear de aproximadamente 22 x 33 centímetros, previamente engrasado y enharinado. Hornear por 20 – 25 minutos aproximadamente, hasta que el brownie empiece a desprenderse de los lados del molde. Los brownies deben verse húmedos. Sacar del horno y dejar enfriar. Frosting de Limón: Derretir el chocolate y la mantequilla en una cacerola o a baño maría. Agregar 2 tazas de azúcar glass y mezclar bien. Añadir los huevos, vainilla, y jugo de limón. Seguir mezclando. Revolver con las nueces pecanas. El frosting se endurecerá mientras se enfría. Si quieres que el frosting sea más grueso, añade más azúcar glass. Cubrir los brownies con el frosting y cortar en cuadrados de aproximadamente 3 x 5 centímetros."]
//    Ejercicio 1
    func ejercicio1(value: Int) -> Int{
        let base = 2
        var pot:Int
        if (value == 0) {
            pot = 1
        }else if (value > 0) {
            pot = base * ejercicio1(value: value - 1)
        } else {
            pot = 0
        }
        return pot
    }
//    Ejercicio 2
    func ejercicio2(a: Int, b:Int) -> Decimal{
        let a1 = Decimal(a)
        var suma: Decimal = 0
        for i in 1...b{
            let i2 = Decimal(i)
//            print("b[\(i)]^a[\(a)]", pow(i2, a))
            suma = suma + pow(i2, a)
        }
        return suma
    }
//    Ejercicio 3
    func ejercicio3(){
        print("Inserte la cadena a Verificar>> ")
        let b  = String (readLine() ?? "¿?")
        let a = b+"  "
        print("Cadena a Verificar: ", a, " Tamaño de la cadena: ", a.count)
        let tam = a.count
        var cadenaSeparada = a.split(separator: "-")
        var iterador:Int = 0
        var verif:Int = 0
        var verif2:Bool
        var cademaSeparada2: String
        if a.hasPrefix("(") && a.contains(")") && a.contains(" - "){
            print("Si esta")
            for i in cadenaSeparada{
                iterador = iterador + 1
                if iterador > 1{
                    verif = i.count
                }
            }
            if verif == 8{
                print("Cadena Validada! Cumple el formato (nn) - nn - nnnn - nnnn")
            }
        }else{
            print("La cadena no contiene la estructura Valida")
        }
    }
//    Ejercicio 4
    func ejercicio4(){
        print("Existen ", self.listaRecetas.count, " en el recetario")
        print("Escriba los ingredientes que desea Buscar>> ")
        var opcion  = String (readLine() ?? "¿?")
        var opcion2 = opcion.lowercased().split(separator: ",")
        var contador: Int = 0
        for k in opcion2{
            for (i,j) in self.listaRecetas{
                if j.lowercased().contains(k){
                    print("La Receta de: ", i, " Contiene el ingrediente: ", k)
                    print(j)
                    contador = contador + 1
                }
            }
        }
        print("Se encontraron \(contador) coincidencias en \(self.listaRecetas.count) Listas")
    }
//    Ejercicio 5
    func ejeercicio5(arregloNumeros: [Int]) -> [Int] {
        var arregloFinal: [Int] = []
        var multiplicacion: Int = 1
        var arregloNumeros2 = arregloNumeros
        var c: Int = 0
        for i in 1...arregloNumeros.count{
            for j in 2...arregloNumeros2.count{
                multiplicacion = multiplicacion * arregloNumeros2[j-1]
            }
            arregloFinal.append(multiplicacion)
            c = arregloNumeros2.remove(at: 0)
            arregloNumeros2.append(c)
            multiplicacion = 1
        }
        return arregloFinal
    }
}

let proyecto2 = Proyecto2()
while true {
    print("Eliga el numero del ejercicio que desea visualizar\n1-Ejercicio 1\n2.-Ejercicio 2\n3.-Ejercicio 3\n4.-Ejercicio 4\n5.- Ejercicio 5\n0.-Salir")
    var iterations  = Int (readLine() ?? "0")
    switch iterations {
    case 0:
        exit(0)
    case 1:
        print("Ejercicio 1\nDesarrolle el algoritmo que calcule 2 a la N donde N es un número entero mayor o igual a cero, el algoritmo debe ser desarrollado utilizando exclusivamente recursividad")
        var c = proyecto2.ejercicio1(value: 4)
        print(c)
    case 2:
        print("Ejercicio 2\n Dado a y b como números enteros, realizar la sumatoria de: 1^a + 2^a + 3^a ... b^a")
        var op = proyecto2.ejercicio2(a: 3, b: 4)
        print(op)
    case 3:
        print("Ejercicio 3: Dada una cadena introducida por el usuario validar si es un número telefónico con la siguiente estructura (nn) - nn - nnnn - nnnn\n")
        var op2 = proyecto2.ejercicio3()
    case 4:
        print("Ejercicio 4")
        var op3 = proyecto2.ejercicio4()
    case 5:
        print("Ejercicio 5")
        var op4 = proyecto2.ejeercicio5(arregloNumeros: [1,2,3,4,5])
    default:
        print("Opcion No valida")
    }
}
```

![Captura de Pantalla 2021-01-01 a la(s) 23.52.23](../Proyecto2/Captura de Pantalla 2021-01-01 a la(s) 23.52.23.png)

![Captura de Pantalla 2021-01-01 a la(s) 23.52.48](../Proyecto2/Captura de Pantalla 2021-01-01 a la(s) 23.52.48.png)

![Captura de Pantalla 2021-01-01 a la(s) 23.53.09](../Proyecto2/Captura de Pantalla 2021-01-01 a la(s) 23.53.09.png)

![Captura de Pantalla 2021-01-01 a la(s) 23.53.30](../Proyecto2/Captura de Pantalla 2021-01-01 a la(s) 23.53.30.png)

![Captura de Pantalla 2021-01-01 a la(s) 23.54.11](../Proyecto2/Captura de Pantalla 2021-01-01 a la(s) 23.54.11.png)

## Conclusiones

Para este proyecto ya tenía mayor dominio y facilidad en el lenguaje de programación Swift, por lo que fue mas sencillo realizar estos 5 programas, sólo tuve algunos tropiezos con mi lógica propia

[Repositorio de Github](https://github.com/galigaribaldi/Codigos_swift/tree/master/Computo_Movil)

