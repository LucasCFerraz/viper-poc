//
//  LoginInteractor.swift
//  ios-poc
//
//  Created by Lucas Ferraz Paolillo on 08/08/17.
//  Copyright © 2017 Lucas Ferraz Paolillo. All rights reserved.
//

import Foundation

class LoginInteractor {
    private var output: LoginPresenterOutputProtocol!
    private var dataManager: LoginDataManagerProtocol!
    
    init(output: LoginPresenterOutputProtocol) {
        self.output = output
        self.dataManager = LoginDataManager()
    }
}

extension LoginInteractor: LoginInteractorInputProtocol {
    func getAddress(with cep: String) {
        let address = dataManager.getAddress(with: cep)
        output.showAddress(address)
    }
}
