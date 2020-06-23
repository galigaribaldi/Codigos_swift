//
//  ViewController.swift
//  Tablas
//
//  Created by Hernán Galileo Cabrera Garibaldi on 18/06/20.
//  Copyright © 2020 Hernán Galileo Cabrera Garibaldi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var contenidoCeldas = ["pdf1", "pdf2", "pdf3"]

    @IBOutlet var tabla: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
//        Indicarle al viewdidload que el objeto del StoryBoard esta instanciado
        tabla.dataSource = self
        tabla.delegate = self
        
    }
    
//    Esta funcuin te dice que retorna 2 celdas
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contenidoCeldas.count // numero de datos
    }
    
//    Funcion que retorna
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        print(indexPath.row)
        
        let contenido = indexPath.row
        
        let celda = UITableViewCell(style:UITableViewCell.CellStyle.default,reuseIdentifier: "Cell")
        
        celda.textLabel?.text = contenidoCeldas[contenido]
//        Ponerle imagen
        celda.imageView!.image = UIImage(named: "original.jpg")
        return celda
    }
//    Accion que se activa automaricamente al presionar una celda en la tabla
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Pulsando una fila xd \(indexPath.row)")
        let idPdfSeleccionado = indexPath.row
        self.performSegue(withIdentifier: "pantallaDosSegue", sender: idPdfSeleccionado)
    }
//    Mandar objetos al segue
//    En este caso mandamos la posicion del arreglo
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pantallaDosSegue"{
            let idPdfSeleccionadoRecibido = sender as! Int
//            Objeto de la pantalla 2
            let objPantalla2:ViewController2 = segue.destination as! ViewController2
//            Le pasamos el id del objeto seleccionado
            objPantalla2.nombrePDFRecibido = contenidoCeldas[idPdfSeleccionadoRecibido]
        }
    }
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
//    Para el boton de delete
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            contenidoCeldas.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    
    /*
    //    Funciones del ciclo de VIDA del ViewController
    
    override func loadView() {
        super.loadView()
        print("Se activo la func LoadView de la pantalla 1")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("Se activo la func viewWillAppear de la pantalla 1")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("Se activo la func viewDidAppear de la pantalla 1")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print("Se activo la funcion viewWillDissapear de la pantalla 1")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print("Se activo la func viewDidDissappear de la pantalla 1")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("Se activo la func DidReceiveMemoryWarning de la pantalla 1")
    }

*/
}

