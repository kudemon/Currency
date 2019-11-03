//
//  AppDelegate.swift
//  revolut_test_task
//
//  Created by Dmitry Kurach on 25/10/2019.
//  Copyright © 2019 Dmitry Kurach. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let dependenciesService = DependencyService()
        dependenciesService.makeDependencies()
        
        let window = UIWindow()
        window.rootViewController = MainAssembly().rootViewController
        window.makeKeyAndVisible()
        self.window = window
        return true
    }

}

