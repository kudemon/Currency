//
//  MainCell.swift
//  revolut_test_task
//
//  Created by Dmitry Kurach on 26/10/2019.
//  Copyright © 2019 Dmitry Kurach. All rights reserved.
//

import UIKit

class MainCell: UITableViewCell {
    private var firstPair: UILabel {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.text = ""
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }
    
    private var secondPair: UILabel {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.text = ""
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }
    
    private var firstValue: UILabel {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.text = ""
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }
    
    private var secondValue: UILabel {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.text = ""
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(firstValue)
        self.contentView.addSubview(firstPair)
        self.contentView.addSubview(secondValue)
        self.contentView.addSubview(secondPair)
        
        firstPair.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor).isActive = true
        firstPair.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 10).isActive = true
        
        firstValue.leadingAnchor.constraint(equalTo: firstPair.leadingAnchor, constant: 5).isActive = true
        firstValue.topAnchor.constraint(equalTo: firstPair.topAnchor, constant: 5).isActive = true
        
        secondPair.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor).isActive = true
        secondPair.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 10).isActive = true
        
        secondValue.trailingAnchor.constraint(equalTo: secondPair.trailingAnchor, constant: 5).isActive = true
        secondValue.topAnchor.constraint(equalTo: secondPair.topAnchor, constant: 5).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

