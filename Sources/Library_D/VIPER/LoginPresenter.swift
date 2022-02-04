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
//    func showResponseInScreen()    // function for Router
}

public protocol LoginInteractorOutput {
//    func getIfUserIsLoged(isLoged: Bool) -> Bool
    func getIfUserIsLoged(isLoged: Bool)

}

public class LoginPresenter: LoginModuleInterface, LoginInteractorOutput {

    var interactor: LoginInteractorInput?
    var router: LoginRouter?    // variable for class router

    public init() {

    }
    
    func updateView(email: String, password: String) {
        self.interactor = LoginInteractor()
        self.interactor?.login(email: email, password: password)
        print("chamou a presenter")
        print("Testando os dados recebidos:")
        print(email)
        print(password)
  }
    
    public func getIfUserIsLoged(isLoged: Bool) {
        if isLoged {
            print("Logado com sucesso!")
//            return true
        } else {
            print("Erro! Tente novamente.")
//            return false
        }
        self.router?.backToScreen(isLoged: isLoged)
    }
    
//    public func showResponseInScreen() {
//
//    }
    
}
