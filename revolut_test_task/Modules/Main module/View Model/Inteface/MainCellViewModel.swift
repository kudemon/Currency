//
//  MainCellViewModel.swift
//  revolut_test_task
//
//  Created by Dmitry Kurach on 26/10/2019.
//  Copyright © 2019 Dmitry Kurach. All rights reserved.
//

import Foundation

protocol MainCellViewModel {
    var firstPair: String { get }
    var secondPair: String { get }
    
    var firstValue: Double { get }
    var secondValue: Double { get }
}
