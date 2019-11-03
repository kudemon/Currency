//
//  MainAssembly.swift
//  revolut_test_task
//
//  Created by Dmitry Kurach on 02/11/2019.
//  Copyright © 2019 Dmitry Kurach. All rights reserved.
//

import UIKit

class MainAssembly: ModuleAssembly {
    var rootViewController: UIViewController {
        let mainModuleViewController: MainViewController = resolve()
        return mainModuleViewController
    }
}
