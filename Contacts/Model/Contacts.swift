//
//  Contacts.swift
//  Contacts
//
//  Created by Aleksandr  on 16.12.2022.
//

import Foundation

protocol ContactProtocol {
    
    var title: String { get set }
    var phone: String { get set }
}

struct Contact: ContactProtocol {
    var title: String
    var phone: String
}
