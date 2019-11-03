//
//  MainViewModelImplementation.swift
//  revolut_test_task
//
//  Created by Dmitry Kurach on 26/10/2019.
//  Copyright © 2019 Dmitry Kurach. All rights reserved.
//

import Foundation

class MainViewModelImplementation: MainViewModel {
    private let model: MainModel
    private let pairs: CodedCurrencyPairs
    
    
    init(model: MainModel, pairs: CodedCurrencyPairs) {
        self.model = model
        self.pairs = pairs
    }
    
    func firstPair() {
        model.loadCurrency(firstPair: pairs.firstPairCurr, secondPair: pairs.reverseFirstPairCurr)
    }
    
    func secondPair() {
        model.loadCurrency(firstPair: pairs.secondPairCurr, secondPair: pairs.reverseSecondPairCurr)
    }
    
    func thirdPair() {
        model.loadCurrency(firstPair: pairs.thirdPairCurr, secondPair: pairs.reverseThirdPairCurr)
    }

}
