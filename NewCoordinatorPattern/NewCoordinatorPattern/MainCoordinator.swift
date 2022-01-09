//
//  MainCoordinator.swift
//  NewCoordinatorPattern
//
//  Created by Tim on 06/01/2022.
//

import UIKit


class MainCoordinator: Coordinator {
    var navigationController: UINavigationController?
    func eventOccured(with type: Event) {
        switch type {
        case .buttonTapped:
            var secondVc: UIViewController & Coordinating = SecondViewController(nibName: "SecondViewController", bundle: nil)
            secondVc.coordinator = self
            navigationController?.pushViewController(secondVc, animated: true)
        }
    }
    
    func start() {
        var vc: UIViewController & Coordinating = FirstViewController()
        vc.coordinator = self
        navigationController?.setViewControllers([vc], animated: false)
    }
}
