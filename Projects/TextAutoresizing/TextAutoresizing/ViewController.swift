//
//  ViewController.swift
//  TextAutoresizing
//
//  Created by Hernán Galileo Cabrera Garibaldi on 30/06/20.
//  Copyright © 2020 Hernán Galileo Cabrera Garibaldi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        mensaje.text = "Esta haciendo un dia muy muy frio"
    }

    @IBOutlet weak var mensaje: UILabel!
    
}

