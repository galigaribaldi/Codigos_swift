//
//  Mazda3Mini.swift
//  poo
//
//  Created by Hernán Galileo Cabrera Garibaldi on 17/06/20.
//  Copyright © 2020 Hernán Galileo Cabrera Garibaldi. All rights reserved.
//

import Foundation

class Mazda3Mini: Mazda3 {
    var porcentajeCarga:Int = 50
    func recargar(){
        porcentajeCarga = 100
        print(porcentajeCarga)
    }
}
