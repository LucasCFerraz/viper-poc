//
//  ViewController.swift
//  ios-poc
//
//  Created by Lucas Ferraz Paolillo on 08/08/17.
//  Copyright © 2017 Lucas Ferraz Paolillo. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    private var input: LoginPresenterInputProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.input = LoginPresenter(output: self)
        self.input.getAddress(with: "haha")
    }
}

extension LoginViewController : LoginViewControllerOutputProtocol {
    func showAddress(_ address: String) {
        label.text = address
    }
}

