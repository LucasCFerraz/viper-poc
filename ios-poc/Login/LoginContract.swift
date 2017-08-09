//
//  LoginContract.swift
//  ios-poc
//
//  Created by Lucas Ferraz Paolillo on 08/08/17.
//  Copyright © 2017 Lucas Ferraz Paolillo. All rights reserved.
//

import Foundation


/// This protocol is responsible for receive any view update from presenter or wireframe
protocol LoginViewControllerOutputProtocol {
    func showAddress(_ address: String)
}

/// This protocol is responsible for input data from view to presenter
protocol LoginPresenterInputProtocol {
    func getAddress(with cep: String)
}

/// This protocol is responsible for output data from interactor to presenter
protocol LoginPresenterOutputProtocol {
    func showAddress(_ address: String)
}

/// this protocol is responsible for input data from interactor to presenter
protocol LoginInteractorInputProtocol {
    func getAddress(with cep: String)
}

/// this protocol is responsible for get data from local and remote repos
protocol LoginDataManagerProtocol {
    func getAddress(with cep: String) -> String
}

protocol LoginWireframeProtocol {
    
}
