//
//  ViewController.swift
//  AutoLayout4
//
//  Created by Hernán Galileo Cabrera Garibaldi on 27/06/20.
//  Copyright © 2020 Hernán Galileo Cabrera Garibaldi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let width: CGFloat = 30.0
        let heigth: CGFloat = 15.0
//        Para Top Left Label
        TLLabel.backgroundColor = UIColor.orange
        TLLabel.text = "TL"
        TLLabel.textColor = UIColor.black
        TLLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(TLLabel)
        
        let topConstraintTL = TLLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 28)
        let leadingConstraintTL = TLLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 18)
        let widthConstraintTL = TLLabel.heightAnchor.constraint(equalToConstant: width)
        let heightConstraintTL = TLLabel.heightAnchor.constraint(equalToConstant: heigth)
        constraints.append(contentsOf: [topConstraintTL, leadingConstraintTL, widthConstraintTL, heightConstraintTL])

//        Para Top Right Label
        TRLabel.backgroundColor = UIColor.orange
        TRLabel.text = "TR"
        TRLabel.textColor = UIColor.black
        TRLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(TRLabel)
        
        let topConstraintTR = TRLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 28)
        let trailingConstraintTR = TRLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -18)
        let widthConstraintTR = TRLabel.widthAnchor.constraint(equalToConstant: width)
        let heightConstraintTR = TRLabel.heightAnchor.constraint(equalToConstant: heigth)
        
        constraints.append(contentsOf: [topConstraintTR, trailingConstraintTR, widthConstraintTR, heightConstraintTR])
//        Para Bottom Left Label
        BLLabel.backgroundColor = UIColor.orange
        BLLabel.text = "BL"
        BLLabel.textColor = UIColor.black
        BLLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(BLLabel)
        
        let leadingConstraintBL = BLLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 18)
        let bottomConstraintBL = BLLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -28)
        let widthConstraintBL = BLLabel.widthAnchor.constraint(equalToConstant: 30)
        let heightConstraintBL = BLLabel.heightAnchor.constraint(equalToConstant: 15)
        
        constraints.append(contentsOf: [leadingConstraintBL, bottomConstraintBL, widthConstraintBL, heightConstraintBL])
//Bottom Right Label
        BRLabel.backgroundColor = UIColor.orange
        BRLabel.text = "BR"
        BRLabel.textColor = UIColor.black
        BRLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(BRLabel)
        
        let trailingConstraintBR = BRLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -18)
        let bottomConstraintBR = BRLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -28)
        let widthConstraintBR = BRLabel.widthAnchor.constraint(equalToConstant: 30)
        let heightConstraintBR = BRLabel.heightAnchor.constraint(equalToConstant: 15)
        
        constraints.append(contentsOf: [trailingConstraintBR, bottomConstraintBR, widthConstraintBR, heightConstraintBR])
        
        NSLayoutConstraint.activate(constraints)
        
    }
    
    var TLLabel = UILabel()
    var TRLabel = UILabel()
    var BRLabel = UILabel()
    var BLLabel = UILabel()
    var constraints = [NSLayoutConstraint]()


}

