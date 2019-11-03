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
    
    func firstPair(completion: @escaping MainViewModelCompletion) {
        model.loadCurrency(firstPair: pairs.firstPairCurr, secondPair: pairs.reverseFirstPairCurr) { currencyResult in
            switch currencyResult {
            case .success(let firstCurrencies):
                completion(.success(MainCellVMImplementation(entity: firstCurrencies)!))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func secondPair(completion: @escaping MainViewModelCompletion) {
        model.loadCurrency(firstPair: pairs.secondPairCurr, secondPair: pairs.reverseSecondPairCurr) { currencyResult in
                switch currencyResult {
                case .success(let secondCurrencies):
                    completion(.success(MainCellVMImplementation(entity: secondCurrencies)!))
                case .failure(let error):
                    completion(.failure(error))
                }
            }
        }
    
    func thirdPair(completion: @escaping MainViewModelCompletion) {
        model.loadCurrency(firstPair: pairs.thirdPairCurr, secondPair: pairs.reverseThirdPairCurr) { currencyResult in
                switch currencyResult {
                case .success(let thirdCurrencies):
                    completion(.success(MainCellVMImplementation(entity: thirdCurrencies)!))
                case .failure(let error):
                    completion(.failure(error))
                }
            }
        }
    }
