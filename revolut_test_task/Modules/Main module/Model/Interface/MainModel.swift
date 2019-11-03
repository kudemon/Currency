//
//  MainModel.swift
//  revolut_test_task
//
//  Created by Dmitry Kurach on 26/10/2019.
//  Copyright © 2019 Dmitry Kurach. All rights reserved.
//

import Foundation

typealias MainModelCompletion = (Result<CurrencyPairsEntity, Error>) -> Void

protocol MainModel {
    func loadCurrency(firstPair: String, secondPair: String, completion: @escaping MainModelCompletion)
}
