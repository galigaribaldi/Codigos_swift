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
//        A
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        let managedContext = appDelegate!.persistentContainer.viewContext
//        B Fech = Ir a buscar y extraer
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Lista")
//        C
        do {
            managedObjects = try managedContext.fetch(fetchRequest)
        } catch let error as NSError {
            print("No se pudo recueprar los datos, error: \(error), \(error.userInfo)")
        }

    }

//    Secciones de cuantas tiene que tener la tabla

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return managedObjects.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let managedObject = managedObjects[indexPath.row]
        
//        Por cada una de las filas que tenga nuestra tabla
        cell.textLabel?.text = managedObject.value(forKey: "palabra") as?
        String
        
        return cell
    }

    @IBAction func agregarPalabras(_ sender: Any) {
        
        let alerta = UIAlertController(title: "Nueva palabra", message: " Por favor Agrega palabra Nueva", preferredStyle: .alert)
        let guardar = UIAlertAction(title: "Agregar", style: .default, handler: { (UIAlertAction) -> Void in
            
            let textField = alerta.textFields!.first
            self.guardaPalabra(palabra: textField!.text!)
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
    
    func guardaPalabra(palabra: String) {
        
//        managedObjectContext objetos NS Managed Object
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        let managedContext = appDelegate!.persistentContainer.viewContext
        
//        NSManagedBobject
        let entity = NSEntityDescription.entity(forEntityName: "Lista", in: managedContext)!
        let managedObject = NSManagedObject(entity: entity, insertInto: managedContext)
        
//          Añadimos valores a las propiedades de dicho objeto
        managedObject.setValue(palabra, forKeyPath: "palabra")
        
        
//        Guardar los datos a disco
        
        do {
            try managedContext.save()
            managedObjects.append(managedObject)
            
        } catch let error as NSError {
            print("No se pudo guardar, error: \(error), \(error.userInfo)")
        }
        }
    }
    

