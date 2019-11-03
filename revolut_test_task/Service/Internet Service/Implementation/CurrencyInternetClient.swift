//
//  CurrencyInternetClient.swift
//  revolut_test_task
//
//  Created by Dmitry Kurach on 25/10/2019.
//  Copyright © 2019 Dmitry Kurach. All rights reserved.
//

import Foundation

class CurrencyInternetClient: InternetClient {
    func loadData(ofURL: URL, completion: @escaping InternetClientCompletion) {
        let task = URLSession.shared.dataTask(with: ofURL) { (data, response, error) in
            
            guard let data = data else {
                completion(.failure(error!))
                return
            }
            
            completion(.success(data))
        }
        task.resume()
    }
}
