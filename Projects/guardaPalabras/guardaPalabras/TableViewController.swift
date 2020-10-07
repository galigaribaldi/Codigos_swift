//
//  TableViewController.swift
//  guardaPalabras
//
//  Created by Hernán Galileo Cabrera Garibaldi on 20/09/20.
//

import UIKit
import CoreData
class TableViewController: UITableViewController {
    
//    Darle los datos a la tabla
    var palabrasTabla: [String] = ["Lunes","Mazda","Sega"]
    
    var managedObjects:[NSManagedObject] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

//    Secciones de cuantas tiene que tener la tabla

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return palabrasTabla.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
//        Por cada una de las filas que tenga nuestra tabla
        cell.textLabel?.text = palabrasTabla[indexPath.row]
        
        return cell
    }

    @IBAction func agregarPalabras(_ sender: Any) {
        
        let alerta = UIAlertController(title: "Nueva palabra", message: " Por favor Agrega palabra Nueva", preferredStyle: .alert)
        let guardar = UIAlertAction(title: "Agregar", style: .default, handler: { (UIAlertAction) -> Void in
            
            let textField = alerta.textFields!.first
            self.palabrasTabla.append(textField!.text!)
//            Refrescar los cambios
            self.tableView.reloadData()
            
        })
        let cancelar = UIAlertAction(title: "Cancelar", style: .default){
            (action:UIAlertAction) -> Void in }
        alerta.addTextField{(textField:UITextField)-> Void in}
        alerta.addAction(guardar)
        alerta.addAction(cancelar)
        present(alerta, animated: true, completion: nil)
        }
    }
    

