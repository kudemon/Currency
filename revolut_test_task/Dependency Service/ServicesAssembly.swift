//
//  ServicesAssembly.swift
//  revolut_test_task
//
//  Created by nikita on 03/11/2019.
//  Copyright © 2019 Dmitry Kurach. All rights reserved.
//

import EasyDi

class ServicesAssembly: Assembly {
    var internetClient: InternetClient {
        return define(scope: .lazySingleton, init: CurrencyInternetClient())
    }
}

class ModelsAssembly: Assembly {
    private lazy var servicesAssembly: ServicesAssembly = context.assembly()
    
    
    var mainModel: MainModel {
        return define(init: MainModelImplementation()) {
            $0.internetClient = self.servicesAssembly.internetClient
            return $0
        }
    }
}

class ViewModelsAssembly: Assembly {
    private lazy var modelsAssembly: ModelsAssembly = context.assembly()
    
    var mainViewModel: MainViewModel {
        return define(init: MainViewModelImplementation(model: self.modelsAssembly.mainModel,
                                                        pairs: CodedCurrencyPairs()))
    }
}

class ViewAssembly: Assembly {
    private lazy var vmsAssembly: ViewModelsAssembly = context.assembly()
    
    var view: MainViewController {
        return define(init: MainViewController(viewModel: self.vmsAssembly.mainViewModel))
    }
}


