//
//  ViewController.swift
//  ToDoListApp
//
//  Created by Camilo Andres Gonzalez Muñoz on 26-06-22.
//

import UIKit

class ViewController: UIViewController {

    var action: String?
    @IBOutlet weak var SVTable: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //SVTable.isHidden = true
    
    }

    @IBAction func add(_ sender: Any) {
        print("Ir a agregar nuevo")
        action = "add"
        performSegue(withIdentifier: "VCToDo", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destino = segue.destination as? ViewControllerToDo{
            destino.action = action
        }
    }
    
}

