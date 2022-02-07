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

public protocol LoginInteractorOutput: AnyObject {
    func userDidLoad(isLoged: Bool, email: String) -> Bool

}

public class LoginPresenter: LoginModuleInterface, LoginInteractorOutput {

    var interactor: LoginInteractorInput?
    weak var view: LoginViewInterface?

    public init(view: LoginViewInterface) {
        self.interactor = LoginInteractor(output: self)
        self.view = view
    }
    
    func updateView(email: String, password: String) {
        
//        self.interactor = LoginInteractor()
        self.interactor?.login(email: email, password: password)
        
        print("chamou a presenter")
        print("Testando os dados recebidos:")
        print(email)
        print(password)
  }
    
    public func userDidLoad(isLoged: Bool, email: String) -> Bool {
        
        self.view?.returnResponseForApp(isLoged: isLoged, email: email)
        
        if isLoged {
            print("Logado com sucesso!")
            return true
        } else {
            print("Erro! Tente novamente.")
            return false
        }
    }
}
