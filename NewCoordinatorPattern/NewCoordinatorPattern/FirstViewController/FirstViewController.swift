//
//  FirstViewController.swift
//  NewCoordinatorPattern
//
//  Created by Tim on 06/01/2022.
//

import UIKit

class FirstViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    var str = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Home"
    }
    
    @IBAction func didTapBtn(_ sender: UIButton) {
        coordinator?.eventOccured(with: .buttonTapped)
    }
}
