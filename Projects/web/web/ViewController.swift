//
//  ViewController.swift
//  web
//
//  Created by Hernán Galileo Cabrera Garibaldi on 22/06/20.
//  Copyright © 2020 Hernán Galileo Cabrera Garibaldi. All rights reserved.
//

import UIKit
import WebKit
class ViewController: UIViewController {

    @IBOutlet var webView: WKWebView!
    
    @IBOutlet var textField: UITextField!
    
    var palabra: String?
    /*
     https://es.wikipedia.org/w/api.php?action=query&prop=extracts&format=json&exintro=&titles=sega
     */
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buscar(_ sender: Any) {
        palabra = textField.text!
        let urlCompleto = "https://es.wikipedia.org/w/api.php?action=query&prop=extracts&format=json&exintro=&titles=\(palabra!.replacingOccurrences(of:" ", with: "%20"))"
                  
        let objetoUrl = URL(string:urlCompleto)
                  
        let tarea = URLSession.shared.dataTask(with: objetoUrl!) { (datos, respuesta, error) in
                      
        if error != nil {
            print(error!)
        }else {
            do{
                let json = try JSONSerialization.jsonObject(with: datos!, options: JSONSerialization.ReadingOptions.mutableContainers) as! [String:Any]
                let querySubJson = json["query"] as! [String:Any]
                let pagesSubJson = querySubJson["pages"] as! [String:Any]
                //print(pagesSubJson)
                let pageId = pagesSubJson.keys
                    
                let primerLlave = pageId.first!
                
                if primerLlave == "-1"{
                    DispatchQueue.main.sync(execute:{
                    let alerta = UIAlertController(title: "Error", message: "No se encontraron resultados", preferredStyle: .alert)
                    let cancelar = UIAlertAction(title: "Ok", style: .cancel)
                    alerta.addAction(cancelar)
                    self.webView.loadHTMLString("", baseURL: nil)
                    self.present(alerta, animated: true, completion: nil)
                        
                    })
                }else{
                    let idSubJson = pagesSubJson[primerLlave] as! [String:Any]
                    //print(idSubJson)
                    let extractStringHtml = idSubJson["extract"] as! String
                    print(extractStringHtml)
                    DispatchQueue.main.sync(execute: {
                        self.webView.loadHTMLString(extractStringHtml, baseURL: nil) })
                }
                
            }catch {
                print("El Procesamiento del JSON tuvo un error")
            }
            
            }
            
        }
        tarea.resume()
              
    }
}
