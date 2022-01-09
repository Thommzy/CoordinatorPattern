//
//  SecondViewController.swift
//  NewCoordinatorPattern
//
//  Created by Tim on 06/01/2022.
//

import UIKit

class SecondViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Second"
        view.backgroundColor = .systemBlue
    }
}
