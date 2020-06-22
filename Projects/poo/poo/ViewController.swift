//
//  ViewController.swift
//  poo
//
//  Created by Hernán Galileo Cabrera Garibaldi on 15/05/20.
//  Copyright © 2020 Hernán Galileo Cabrera Garibaldi. All rights reserved.
//
// Action =Activa una función


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelTitulo: UILabel!
//    Optional
    var objetoMazda3Mini:Mazda3Mini?
//    Aqui no tiene ningun valor
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelTitulo.text = "Fábricas Shidas"
        print("Se activó la func viewDidLoad")
    }

    @IBAction func crearObjeto(_ sender: UIButton) {
        //Creando un objeto
        objetoMazda3Mini = Mazda3Mini()
        print("Objeto creado!")
    }
    
    @IBAction func mostrarPropiedades(_ sender: UIButton) {
        if objetoMazda3Mini == nil{
            print("Primero debes de crear el objeto")
        }else{
            print("El carro mazda 3 es de tamaño: \(objetoMazda3Mini!.tamaño)")
            print("El carro Mazda 3 Mini tiene de carga: \(objetoMazda3Mini!.recargar())")
        }

    }
    
    @IBAction func encender(_ sender: UIButton) {
        if objetoMazda3Mini == nil{
            print("Primero debes de crear el objeto!")
        }else{
            objetoMazda3Mini!.encender()
        }
    }
    

    @IBAction func acelerar(_ sender: UIButton) {
        if objetoMazda3Mini == nil{
            print("Primero debes de crear el objeto!")
        }else{
            objetoMazda3Mini!.acelerar()
        }
    }
    
    @IBAction func recargar(_ sender: UIButton) {
        objetoMazda3Mini!.recargar()
    }
//    Funciones del ciclo de VIDA del ViewController
    
    override func loadView() {
        super.loadView()
        print("Se activo la func LoadView")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("Se activo la func viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("Se activo la func viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print("Se activo la funcion viewWillDissapear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print("Se activo la func viewDidDissappear")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("Se activo la func DidReceiveMemoryWarning")
    }
    
}

