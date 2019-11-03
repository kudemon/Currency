//
//  InternetClient.swift
//  revolut_test_task
//
//  Created by Dmitry Kurach on 25/10/2019.
//  Copyright © 2019 Dmitry Kurach. All rights reserved.
//

import Foundation

typealias InternetClientCompletion = (Result<Data, Error>) -> Void

protocol InternetClient {
    func loadData(ofURL: URL, completion: @escaping InternetClientCompletion)
}
