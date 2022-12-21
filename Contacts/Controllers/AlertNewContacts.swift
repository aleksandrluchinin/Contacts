//
//  AlertNewContacts.swift
//  Contacts
//
//  Created by Aleksandr  on 21.12.2022.
//

import UIKit

extension ContaktsViewController {
    
    func alertContacts(title: String, placeholder: String, completionHandler: @escaping (String) -> Void) {
        
        let alertController = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        
        let alertOk = UIAlertAction(title: "Ок", style: .default) { (action) in

        }
        
        alertController.addTextField { (tf) in
            tf.placeholder = placeholder
        }
        
        let alertCansel = UIAlertAction(title: "Отмена", style: .default) { (_) in
            
        }
        
        alertController.addAction(alertOk)
        alertController.addAction(alertCansel)
        
        present(alertController, animated: true, completion: nil)
        
    }
    
    func alertError(title: String, message: String) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertOk = UIAlertAction(title: "Ok", style: .default)
        
        alertController.addAction(alertOk)
        
        present(alertController, animated: true)
    }
}
