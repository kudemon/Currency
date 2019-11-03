//
//  MainCellVMImplementation.swift
//  revolut_test_task
//
//  Created by Dmitry Kurach on 26/10/2019.
//  Copyright © 2019 Dmitry Kurach. All rights reserved.
//

import Foundation

class MainCellVMImplementation: MainCellViewModel {
    var firstPair: String
    var secondPair: String
    var firstValue: Double
    var secondValue: Double
    
    init?(entity: CurrencyPairsEntity) {
        firstPair = entity.firstPair
        secondPair = entity.secondPair
        firstValue = entity.firstValue
        secondValue = entity.secondValue
    }
}
