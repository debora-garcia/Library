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

public protocol LoginInteractorOutput {
    func getIfUserIsLoged(isLoged: Bool) -> Bool
}

public class LoginPresenter: LoginModuleInterface, LoginInteractorOutput {

//  weak var view: LoginViewInterface!
    var interactor: LoginInteractorInput?

    public init() {

    }
    
    func updateView(email: String, password: String) {
        self.interactor = LoginInteractor()
        self.interactor?.login(email: email, password: password)    //??????? 
        print("chamou a presenter")
        print("Testando os dados recebidos:")
        print(email)
        print(password)
  }
    
    public func getIfUserIsLoged(isLoged: Bool) -> Bool {
        if isLoged {
            print("Logado com sucesso!")
            return true
        } else {
            print("Erro! Tente novamente.")
            return false
        }
    }
}
