//
//  File.swift
//  
//
//  Created by Carolina Mello on 31/01/22.
//

import Foundation

protocol LoginModuleInterface {
  func updateView()
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
    
  func updateView() {
      self.interactor?.login()
    print("chamou a presenter")
  }
}
