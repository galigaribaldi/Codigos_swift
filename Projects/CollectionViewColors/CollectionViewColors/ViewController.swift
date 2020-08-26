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
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
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
//    System Functions
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        <#code#>
    }(_ )
    numberofItemsInSection
}

