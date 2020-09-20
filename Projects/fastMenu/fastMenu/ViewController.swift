//
//  ViewController.swift
//  fastMenu
//
//  Created by Hernán Galileo Cabrera Garibaldi on 26/08/20.
//  Copyright © 2020 Hernán Galileo Cabrera Garibaldi. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuCollectionview.delegate = self
        menuCollectionview.dataSource = self
    }
//    Variables
//    IBOutlets
    var imageNames : [String] = ["11","22","33","44","55"]
    var namesArr : [String] = ["Hamburguesa", "Tacos", "Emparedado", "Pasta", "Otra cosa"]
    
//    System function
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "comidaCell", for: indexPath) as! menuCollectionViewCell
        
        cell.layer.cornerRadius = 20
        cell.imagenComida.image = UIImage(named: imageNames[indexPath.row])
        cell.nombreComida.text = namesArr[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let screenSize = UIScreen.main.bounds
        return CGSize(width: screenSize.width * 0.94, height: 220)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    
    @IBOutlet weak var menuCollectionview: UICollectionView!
    
}

