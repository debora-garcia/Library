//
//  File.swift
//  
//
//  Created by Debora Garcia on 31/01/22.
//

import Foundation

protocol LoginInteractorInput {
    func login(email: String, password: String)
}

class LoginInteractor: LoginInteractorInput {
    
    var output: LoginInteractorOutput?
    var isLoged: Bool!
    
    public init() {
        self.output = LoginPresenter()
    }
    
    func login(email: String, password: String) {
        print("Testando se recebi os dados no INTERACTOR")
        print(email)
        print(password)
        print("Logou?")
        if email == "debora.silvagarcia@gmail.com" && password == "testLibraryViper" {
            isLoged = true
        } else {
            isLoged = false
        }
        self.output?.getIfUserIsLoged(isLoged: isLoged)
    }
}
