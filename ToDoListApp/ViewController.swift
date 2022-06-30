//
//  ViewController.swift
//  ToDoListApp
//
//  Created by Camilo Andres Gonzalez Muñoz on 26-06-22.
//

import UIKit

class ViewController: UIViewController {

    private lazy var addButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
        button.backgroundColor = .systemPurple
        
        let image = UIImage(systemName: "plus", withConfiguration: UIImage.SymbolConfiguration(pointSize: 32, weight: .medium))
        button.setImage(image, for: .normal)
        button.tintColor = .white
        button.setTitleColor(.white, for: .normal)
        button.layer.shadowRadius = 10
        button.layer.shadowOpacity = 0.3
        
        //Corner Radius
        button.layer.cornerRadius = 30
        
        return button
    }()
    
    var action: String?
    
    @IBOutlet weak var SVTable: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(addButton)
        //SVTable.isHidden = true
        addButton.addTarget(self, action: #selector(didTapAddButton), for: .touchUpInside)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        addButton.frame = CGRect(
            x: view.frame.size.width - 70,
              y: view.frame.size.height - 100,
              width: 60,
              height: 60)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destino = segue.destination as? ViewControllerToDo{
            destino.action = action
        }
    }
    
    @objc private func didTapAddButton() {
        print("Ir a agregar nuevo")
        action = "add"
        performSegue(withIdentifier: "VCToDo", sender: self)
    }
    
}

