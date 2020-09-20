//
//  ViewController.swift
//  HouseSalesCoreML
//
//  Created by Hernán Galileo Cabrera Garibaldi on 20/09/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        predecirPrecioDeCasa(baños: 2, cuartos: 4, piesCuadrados: 1200)
        // Do any additional setup after loading the view.
    }
    
    func predecirPrecioDeCasa (baños: Double, cuartos: Double, piesCuadrados: Double)-> Double{
        let houseSales = HouseSalesC
        guard let precio = try? houseSales.prediction(Bedrooms: cuartos, Bathrooms: baños, Size: piesCuadrados) else{
            print("Ha ocurrido un error :(")
            return 0.0
        }
        print(precio.Price)
        return precio.Price
    }
}

