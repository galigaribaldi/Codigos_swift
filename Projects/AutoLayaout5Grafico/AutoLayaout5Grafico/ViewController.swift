//
//  ViewController.swift
//  AutoLayaout5Grafico
//
//  Created by Hernán Galileo Cabrera Garibaldi on 27/06/20.
//  Copyright © 2020 Hernán Galileo Cabrera Garibaldi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        Dejar las imagenes en circular
        fotoPerfil.layer.cornerRadius = fotoPerfil.bounds.size.width/2.0
        fotoPerfil.clipsToBounds = true
    }


    @IBOutlet weak var fotoPerfil: UIImageView!
    
}

