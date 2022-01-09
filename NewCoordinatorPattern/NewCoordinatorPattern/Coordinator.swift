//
//  Coordinator.swift
//  NewCoordinatorPattern
//
//  Created by Tim on 06/01/2022.
//

import UIKit

enum Event {
    case buttonTapped
}

protocol Coordinator {
    var navigationController: UINavigationController? {get set}
    func eventOccured(with type: Event)
    func start()
}


protocol Coordinating {
    var coordinator: Coordinator? {get set}
}
