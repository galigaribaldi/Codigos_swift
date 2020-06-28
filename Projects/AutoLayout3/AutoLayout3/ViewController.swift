//
//  ViewController.swift
//  AutoLayout3
//
//  Created by Hernán Galileo Cabrera Garibaldi on 27/06/20.
//  Copyright © 2020 Hernán Galileo Cabrera Garibaldi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        greenView.translatesAutoresizingMaskIntoConstraints = false
        setAutoLayout(leading: 0, trailing: 0, top: 0, bottom: 0)
        /*
        let widthConstraint = greenView.widthAnchor.constraint(equalToConstant: 200)
        let heightConstraint = greenView.heightAnchor.constraint(equalToConstant: 50)
        let centerXConstraint = greenView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0)
        let centerYConstraint = greenView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0)
        
        constraintsValues.append(contentsOf: [widthConstraint, heightConstraint,centerXConstraint, centerYConstraint])
        
        NSLayoutConstraint.activate(constraintsValues)*/
    }

    @IBOutlet weak var greenView: UIView!
//    var constraintsValues = [NSLayoutConstraint]()
    var constraintsValues = [NSLayoutConstraint]()

    @IBOutlet weak var bottomLayoutBlueView: NSLayoutConstraint!
    
    func setAutoLayout(leading:Int, trailing:Int, top:Int, bottom:Int) {
        //        0 -> 0
        let leadingConstraint = greenView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: CGFloat(leading))
        //        Ancho de la pantalla = 360 +0 = 0
        //        Ancho de la pantalla = 360 +50 = 0
                
        let trailingConstraint = greenView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: CGFloat(trailing))
        //        0 -> 0
        let topConstraint = greenView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: CGFloat(top))
        //        Ancho del dispoitivo -0 = Ancho del dispositivo
        let bottomConstraint = greenView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: CGFloat(bottom))
                
        constraintsValues.append(contentsOf: [leadingConstraint, trailingConstraint, topConstraint, bottomConstraint])
                
        NSLayoutConstraint.activate(constraintsValues)
        UIView.animate(withDuration: 5.0){
            NSLayoutConstraint.activate(self.constraintsValues)
            self.bottomLayoutBlueView.constant = 200
            self.view.layoutIfNeeded()
        }
    }
}

