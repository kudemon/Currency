//
//  MainViewController.swift
//  revolut_test_task
//
//  Created by Dmitry Kurach on 26/10/2019.
//  Copyright © 2019 Dmitry Kurach. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    private var viewModel: MainViewModel
    private let tableView = UITableView()
    private var viewModels: [MainCellViewModel] = []
    
    init(viewModel: MainViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
        setupTableView()
        tableView.dataSource = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.firstPair { result in
            switch result {
            case .success(let viewModels):
                self.viewModels = [viewModels]
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            case .failure(let error):
                print("Error: \(error)")
                break
            }
            
        }
        
        viewModel.secondPair { result in
            switch result {
            case .success(let viewModels):
                self.viewModels = [viewModels]
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            case .failure(let error):
                print("Error: \(error)")
                break
            }
            
        }
        
        viewModel.thirdPair{ result in
            switch result {
            case .success(let viewModels):
                self.viewModels = [viewModels]
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            case .failure(let error):
                print("Error: \(error)")
                break
            }
            
        }
    }
    
    func setupTableView() {
        view.addSubview(tableView)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
}

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MainCell
        return cell
    }
    
}
