//
//  ViewController2.swift
//  Tablas
//
//  Created by Hernán Galileo Cabrera Garibaldi on 18/06/20.
//  Copyright © 2020 Hernán Galileo Cabrera Garibaldi. All rights reserved.
//

import UIKit
import WebKit

class ViewController2: UIViewController {
//    @IBOutlet var labelTitulo: UILabel!
    var nombrePDFRecibido: String?
    
    @IBOutlet var vistaWeb: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mostrarPDF()
//        labelTitulo.text = nombrePDFRecibido!
    }
//    Funcion crear PDF
    func mostrarPDF(){
//        1.- Conseguir la direccion del PDF
        let direccionPDF = URL(fileURLWithPath: Bundle.main.path(forResource: nombrePDFRecibido!, ofType: "pdf", inDirectory: "PDF")!)
//        2.- Transformar archivo PDF a Data
        let datosPDF = try? Data(contentsOf: direccionPDF)
//        3.- Mostrar datos en la vista Web
        vistaWeb.load(datosPDF!, mimeType: "application/pdf", characterEncodingName: "utf-8", baseURL: direccionPDF)
    }
    /*
    //    Funciones del ciclo de VIDA del ViewController
    
    override func loadView() {
        super.loadView()
        print("Se activo la func LoadView de la pantalla 2")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("Se activo la func viewWillAppear de la pantalla 2")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("Se activo la func viewDidAppear de la pantalla 2")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print("Se activo la funcion viewWillDissapear de la pantalla 2")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print("Se activo la func viewDidDissappear de la pantalla 2")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("Se activo la func DidReceiveMemoryWarning de la pantalla 2")
    }

*/
}
