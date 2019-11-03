//
//  MainViewModel.swift
//  revolut_test_task
//
//  Created by Dmitry Kurach on 26/10/2019.
//  Copyright © 2019 Dmitry Kurach. All rights reserved.
//

import Foundation

typealias MainViewModelCompletion = (Result<MainCellViewModel, Error>) -> Void

protocol MainViewModel {
    func firstPair(completion: @escaping MainViewModelCompletion)
    func secondPair(completion: @escaping MainViewModelCompletion)
    func thirdPair(completion: @escaping MainViewModelCompletion)
}
