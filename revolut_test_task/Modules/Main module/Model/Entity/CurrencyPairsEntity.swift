//
//  CurrencyPairsEntity.swift
//  revolut_test_task
//
//  Created by Dmitry Kurach on 26/10/2019.
//  Copyright © 2019 Dmitry Kurach. All rights reserved.
//

import Foundation

struct CurrencyPairsEntity: Codable {
    var firstPair: String
    var secondPair: String
    var firstValue: Double
    var secondValue: Double
}
