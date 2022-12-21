//
//  ViewController.swift
//  Contacts
//
//  Created by Aleksandr  on 16.12.2022.
//

import UIKit

class ContaktsViewController: UIViewController {

    private var newContacts: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .none
        button.setTitle("Создать контакт", for: .normal)
        button.layer.cornerRadius = 10
        button.tintColor = .systemPurple
        button.addTarget(self, action: #selector(addButtonTaped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let tableView = MainTableView()
    
      override func viewDidLoad() {
          super.viewDidLoad()
          
          setupViews()
          setConstraint()
      }
      
      private func setupViews() {
          
          view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
          view.addSubview(newContacts)
          view.addSubview(tableView)
      }
    
    @objc private func addButtonTaped() {
        alertContacts(title: "Создать новый контакт", placeholder: "Введите имя и телефон") { (text) in
            print(text)
        }
    }
}

  extension ContaktsViewController {
      
      private func setConstraint() {
          
          NSLayoutConstraint.activate([
            
            newContacts.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,  constant: 20),
            newContacts.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -35),
            
              tableView.topAnchor.constraint(equalTo: newContacts.bottomAnchor, constant: 10),
              tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
              tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
              tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10)
          ])
      }
  }



