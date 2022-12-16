//
//  ViewController.swift
//  Contacts
//
//  Created by Aleksandr  on 16.12.2022.
//

import UIKit

class ContaktsViewController: UIViewController {

           
      private let tableView = MainTableView()
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            setupViews()
            setConstraint()
        }
        
        private func setupViews() {
            
            view.backgroundColor = #colorLiteral(red: 0.9532985091, green: 0.9427116513, blue: 0.9085384011, alpha: 1)
            
            view.addSubview(tableView)
        }

    }

    extension ContaktsViewController {
        
        private func setConstraint() {
            
            NSLayoutConstraint.activate([
                
                tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
                tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
                tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
                tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10)
            ])
        }
    }


