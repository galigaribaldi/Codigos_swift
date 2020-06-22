//
//  ViewController.swift
//  HolaMundo2
//
//  Created by Hernán Galileo Cabrera Garibaldi on 15/05/20.
//  Copyright © 2020 Hernán Galileo Cabrera Garibaldi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "Hola"
        print("Soy el primer print")
        print("Soy el segundo print")
        print("Soy el tercer print")
    }


}

