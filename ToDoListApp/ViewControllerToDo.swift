//
//  ViewControllerTodo.swift
//  ToDoListApp
//
//  Created by Camilo Andres Gonzalez Muñoz on 26-06-22.
//

import UIKit

class ViewControllerToDo: UIViewController {
    
    @IBOutlet weak var mySegmentedControl: UISegmentedControl!
    
    //Variables
    private let myPickerViewValues = ["Alta", "Normal", "Baja"]
    var action: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let title = action{
            
            switch title {
            case "add":
                self.title = "Agregar tarea"
            case "update":
                self.title = "Actualizar Tarea"
            default:
                self.title = "Acción no soportada"
            }
        }
        
        //SegementedControls
        mySegmentedControl.removeAllSegments()
        for (index, value) in myPickerViewValues.enumerated(){
            mySegmentedControl.insertSegment(withTitle: value, at: index, animated: true)
        }
        
        mySegmentedControl.selectedSegmentIndex = 0
    }
    
    @IBAction func mySegmentControlAction(_ sender: Any) {
    
    }
    
    @IBAction func saveAction(_ sender: Any) {
        dismiss(animated: true)
    }
    
}
