//
//  ViewController.swift
//  tarjetaDePresentacionOnlyCode
//
//  Created by Hernán Galileo Cabrera Garibaldi on 30/06/20.
//  Copyright © 2020 Hernán Galileo Cabrera Garibaldi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        crearImagenCargarConAutoLayout(nombreImagen: "pyi")
        asignarNombreColocarAutoLayaout(nombre: "Nombre :v")
        asginarCargoycolocarAutoLayout(cargo: "Python Developer")
        crearTelefonoConstraint(numeroTelefono: "01800909000")
        crearCorreoConstraint(correoElectronico: "galigaribaldi0@gmail.com")
        self.view.layoutIfNeeded()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        NSLayoutConstraint.activate(constraintToApply)
    }
    
//    Variables
    let imagenPerfil = UIImageView()
    var constraintToApply = [NSLayoutConstraint]()
    let nombrePersona = UILabel()
    let cargoPersonal = UILabel()
    let telefonoLabel = UILabel()
    let correoEletronicoLabel = UILabel()
    
    
//    Funciones
    func crearImagenCargarConAutoLayout(nombreImagen: String){
        imagenPerfil.translatesAutoresizingMaskIntoConstraints = false
        imagenPerfil.image = UIImage(named: nombreImagen)
        imagenPerfil.contentMode = UIView.ContentMode.scaleAspectFill
        imagenPerfil.clipsToBounds = true
        self.view.addSubview(imagenPerfil)
        
//        Ubicacion
        let centerTextXContraint = imagenPerfil.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0)
        let centerTextYContraint = imagenPerfil.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0)
        let widthconstraint = imagenPerfil.widthAnchor.constraint(equalToConstant: 175)
        let heightConstraint = imagenPerfil.heightAnchor.constraint(equalToConstant: 175)
        imagenPerfil.layer.cornerRadius = widthconstraint.constant / 2.0
        constraintToApply.append(centerTextYContraint)
        constraintToApply.append(centerTextXContraint)
        constraintToApply.append(widthconstraint)
        constraintToApply.append(heightConstraint)
    }
//    Sergunda Funcion
    func asignarNombreColocarAutoLayaout(nombre: String){
        nombrePersona.text = nombre
        nombrePersona.textColor = UIColor.black
        nombrePersona.translatesAutoresizingMaskIntoConstraints = false
        nombrePersona.textAlignment = NSTextAlignment.center
        nombrePersona.font = UIFont(name: "Avenir Next", size: 28)
        self.view.addSubview(nombrePersona)
        
        let leadingConstraint = nombrePersona.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0)
        let trealingConstraint = nombrePersona.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0)
        let topConstraint = nombrePersona.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 25)
        
        let heightConstraint = nombrePersona.heightAnchor.constraint(equalToConstant: 25)
        constraintToApply.append(leadingConstraint)
        constraintToApply.append(trealingConstraint)
        constraintToApply.append(topConstraint)
        constraintToApply.append(heightConstraint)
    }
//    Tercera Funcion
    func asginarCargoycolocarAutoLayout(cargo: String){
        cargoPersonal.text = cargo
        cargoPersonal.textColor = UIColor.black
        cargoPersonal.translatesAutoresizingMaskIntoConstraints = false
        cargoPersonal.textAlignment = NSTextAlignment.center
        cargoPersonal.font = UIFont(name: "Avenir Next", size: 16)
        self.view.addSubview(cargoPersonal)
        let leadingConstraint = cargoPersonal.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0)
        let trailingConstraint = cargoPersonal.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0)
        let topConstraint = cargoPersonal.topAnchor.constraint(equalTo: self.imagenPerfil.bottomAnchor, constant: 10)
        let heightContraint = cargoPersonal.heightAnchor.constraint(equalToConstant: 20)
        
        constraintToApply.append(leadingConstraint)
        constraintToApply.append(trailingConstraint)
        constraintToApply.append(topConstraint)
        constraintToApply.append(heightContraint)
    }
    
//Funcion del telefono
    func crearTelefonoConstraint(numeroTelefono: String) {
        telefonoLabel.text = numeroTelefono
        telefonoLabel.textColor = UIColor.black
        telefonoLabel.translatesAutoresizingMaskIntoConstraints = false
        telefonoLabel.textAlignment = NSTextAlignment.center
        telefonoLabel.font = UIFont(name: "Avenir Next", size: 16)
//        telefonoLabel.backgroundColor = UIColor.orange
        self.view.addSubview(telefonoLabel)
        
        let leadingConstraint = telefonoLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0)
        let bottomConstraint = telefonoLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -8)
        
        let widthConstraint = telefonoLabel.widthAnchor.constraint(equalToConstant: 130)
        let heightConstraint = telefonoLabel.heightAnchor.constraint(equalToConstant: 20)
        constraintToApply.append(leadingConstraint)
        constraintToApply.append(bottomConstraint)
        constraintToApply.append(widthConstraint)
        constraintToApply.append(heightConstraint)
    }
    func crearCorreoConstraint(correoElectronico: String){
        correoEletronicoLabel.text = correoElectronico
        correoEletronicoLabel.textColor = UIColor.black
        correoEletronicoLabel.translatesAutoresizingMaskIntoConstraints = false
        correoEletronicoLabel.textAlignment = NSTextAlignment.center
        correoEletronicoLabel.font = UIFont(name: "Avenir Next", size: 16)
        self.view.addSubview(correoEletronicoLabel)
        
//        Cosntraints
        let leadingConstraint = correoEletronicoLabel.leadingAnchor.constraint(equalTo: telefonoLabel.trailingAnchor, constant: 8)
        
        let trailingConstraint = correoEletronicoLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -8)
        
//        let widthConstraint = correoEletronicoLabel.widthAnchor.constraint(equalToConstant: 130)
        let heightConstraint = correoEletronicoLabel.heightAnchor.constraint(equalToConstant: 20)
        let bottomConstraint = correoEletronicoLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -8)
        
        constraintToApply.append(leadingConstraint)
        constraintToApply.append(bottomConstraint)
//        constraintToApply.append(widthConstraint)
        constraintToApply.append(heightConstraint)
        constraintToApply.append(trailingConstraint)
    }
}

