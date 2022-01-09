//
//  AppDelegate.swift
//  NewCoordinatorPattern
//
//  Created by Tim on 06/01/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let coordinator = MainCoordinator()
        let navVc = UINavigationController()
        coordinator.navigationController = navVc
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = navVc
        window.makeKeyAndVisible()
        self.window = window
        coordinator.start()
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    }
}

