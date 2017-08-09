//
//  LoginDataManager.swift
//  ios-poc
//
//  Created by Lucas Ferraz Paolillo on 08/08/17.
//  Copyright © 2017 Lucas Ferraz Paolillo. All rights reserved.
//

import Foundation

class LoginDataManager : LoginDataManagerProtocol {
    
    init() {
        
    }
    
    func getAddress(with cep: String) -> String {
        sleep(5)
        return "Casa da mãe Joana"
    }
}
