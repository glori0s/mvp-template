//
//  AppDelegate.swift
//  MVP Demo
//
//  Created by user on 06.04.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let navigationController = UINavigationController()
        let rootViewController = FirstModuleBuilder.createModule(view: FirstModuleView(), presenter: FirstModulePresenter(with: navigationController))
        navigationController.setViewControllers([rootViewController], animated: false)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        return true
    }
}

