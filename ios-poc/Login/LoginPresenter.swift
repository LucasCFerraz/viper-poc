//
//  LoginPresenter.swift
//  ios-poc
//
//  Created by Lucas Ferraz Paolillo on 08/08/17.
//  Copyright © 2017 Lucas Ferraz Paolillo. All rights reserved.
//

import Foundation

class LoginPresenter {
    private var output: LoginViewControllerOutputProtocol!
    private var wireframe: LoginWireframeProtocol!
    private var input: LoginInteractorInputProtocol!
    
    init(output: LoginViewControllerOutputProtocol) {
        self.output = output
        self.input = LoginInteractor(output: self)
    }
}

extension LoginPresenter: LoginPresenterInputProtocol {
    func getAddress(with cep: String) {
        input.getAddress(with: cep)
    }
}

extension LoginPresenter: LoginPresenterOutputProtocol {
    func showAddress(_ address: String) {
        output.showAddress(address)
    }
}
