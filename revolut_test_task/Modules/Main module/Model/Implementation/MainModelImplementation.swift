//
//  MainModelImplementation.swift
//  revolut_test_task
//
//  Created by Dmitry Kurach on 26/10/2019.
//  Copyright © 2019 Dmitry Kurach. All rights reserved.
//

import Foundation

class MainModelImplementation {
    private let internetClient: InternetClient
    
    init(internetClient: InternetClient) {
        self.internetClient = internetClient
    }
}

extension MainModelImplementation: MainModel {
    func loadCurrency(firstPair: String, secondPair: String, completion: @escaping MainModelCompletion) {
        let apiURL = "https://europe-west1-revolut-230009.cloudfunctions.net/revolut-ios"
        let finalURL = apiURL + "?pairs=\(firstPair)&pairs=\(secondPair)"
        
        let url = URL(string: finalURL)!
        
        internetClient.loadData(ofURL: url) { currencyResponse in
            switch currencyResponse {
            case .success(let data):
                do {
                    let currencyResponse = try JSONDecoder().decode(CurrencyPairsEntity.self, from: data)
                    completion(.success(currencyResponse))
                } catch {
                    completion(.failure(error))
                    print("Error \(error)")
                }
            case .failure(let error):
                print("Error \(error)")
            }
            
        }
    }
    
    
}
