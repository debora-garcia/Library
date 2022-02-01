//
//  File.swift
//  
//
//  Created by Carolina Mello on 31/01/22.
//

import Foundation
import UIKit

protocol LoginModuleInterface {
    func updateView(email: String, password: String)
}

//protocol LoginInteractorOutput: AnyObject {
//
//}

class LoginPresenter: LoginModuleInterface {

//  weak var view: LoginViewInterface!
    var interactor: LoginInteractorInput?

    public init() {
        self.interactor = LoginInteractor()
    }
    
    func updateView(email: String, password: String) {
      self.interactor?.login()
    print("chamou a presenter")
        print("Testando os dados recebidos:")
        print(email)
        print(password)
  }
}
