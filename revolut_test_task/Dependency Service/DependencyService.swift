//
//  Dependencies Service.swift
//  revolut_test_task
//
//  Created by Dmitry Kurach on 02/11/2019.
//  Copyright © 2019 Dmitry Kurach. All rights reserved.
//

import Foundation

class DependencyService {
    func makeDependencies() {
        DIFramework.shared.register {
            CurrencyInternetClient() as InternetClient
        }
        
        DIFramework.shared.register { () -> MainModel in
            let model = MainModelImplementation(internetClient: resolve())
            return model as MainModel
        }
        
        DIFramework.shared.register {
            MainViewModelImplementation(model: resolve(), pairs: resolve()) as MainViewModel
        }
        
        DIFramework.shared.register {
            MainCellVMImplementation(entity: resolve()) as! MainCellViewModel
        }
        
        DIFramework.shared.register {
            MainViewController(viewModel: resolve())
        }
        
        

    }

}
