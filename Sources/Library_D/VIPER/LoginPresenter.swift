//
//  File.swift
//  
//
//  Created by Carolina Mello on 31/01/22.
//

import Foundation

protocol LoginModuleInterface: AnyObject {
  func updateView()
}

//protocol LoginInteractorOutput: AnyObject {
//
//}

class LoginPresenter: LoginModuleInterface {

  weak var view: LoginViewInterface!

  func updateView() {
    print("chamou a presenter")
  }
}
