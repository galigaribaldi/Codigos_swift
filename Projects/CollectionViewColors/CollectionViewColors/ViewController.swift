//
//  ViewController.swift
//  CollectionViewColors
//
//  Created by Hernán Galileo Cabrera Garibaldi on 25/08/20.
//  Copyright © 2020 Hernán Galileo Cabrera Garibaldi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "colorCelda", for: indexPath)
        cell.backgroundColor = UIColor.orange
        
        let red = CGFloat(Int(arc4random_uniform(55))) //Entre mas alto sea el rango, mas claro es el color.
        let blue = CGFloat(Int(arc4random_uniform(155))+100)
        let green = CGFloat(Int(arc4random_uniform(155))+100)
        cell.backgroundColor = UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1.0)
        return cell
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupCollectionView(collection: colorCollectionView)
    }
//    Variables
//    IBoutles
    @IBOutlet weak var colorCollectionView: UICollectionView!
//    IBActions
//    Functions
    func setupCollectionView(collection: UICollectionView){
        collection.delegate = self
        collection.dataSource = self
    }
}

