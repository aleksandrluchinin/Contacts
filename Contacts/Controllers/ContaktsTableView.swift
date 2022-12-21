//
//  ContaktsTableView.swift
//  Contacts
//
//  Created by Aleksandr  on 16.12.2022.
//

import UIKit

class MainTableView: UIView {
    
    private var mytableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .none
        tableView.layer.cornerRadius = 21
        // tableView.separatorStyle = .none
        //tableView.bounces = false
        //tableView.showsVerticalScrollIndicator = false
        // tableView.delaysContentTouches = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    private let idTableViewCell = "idTableViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setSelegates()
        setConstraint()
    }
    
    private func setupViews() {
        
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(mytableView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure(cell: inout UITableViewCell, for indexPath: IndexPath) {
        var configuration = cell.defaultContentConfiguration()
        configuration.text = "Строка \(indexPath.row)"
        cell.contentConfiguration = configuration
        
    }
    
    private func setSelegates() {
        mytableView.delegate = self
        mytableView.dataSource = self
    }
}

extension MainTableView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell: UITableViewCell
        
        if let reuseCell = tableView.dequeueReusableCell(withIdentifier: idTableViewCell) {
            cell = reuseCell
        } else {
            
            cell = UITableViewCell(style: .default, reuseIdentifier: idTableViewCell)
        }
        
        configure(cell: &cell, for: indexPath)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        50
    }
}

extension MainTableView: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        50
        
    }
}

extension MainTableView {
    
    private func setConstraint() {
        NSLayoutConstraint.activate([
            mytableView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            mytableView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            mytableView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            mytableView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10)
        ])
    }
}

