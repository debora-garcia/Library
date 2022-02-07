//
//  File.swift
//  
//
//  Created by Debora Garcia on 31/01/22.
//

import Foundation

protocol LoginInteractorInput: AnyObject {
    func login(email: String, password: String)
}

class LoginInteractor: LoginInteractorInput {
    
    weak var output: LoginInteractorOutput?
    var isLoged: Bool = true
    
    public init(output: LoginInteractorOutput?) {
        self.output = output
    }
    
    func login(email: String, password: String) {
//        self.output = LoginPresenter()
        print("Testando se recebi os dados no INTERACTOR")
        print(email)
        print(password)
        print("Logou?")
        if email == "debora.silvagarcia@gmail.com" && password == "testLibraryViper" {
            isLoged = true
        } else {
            isLoged = false
        }
        self.output?.userDidLoad(isLoged: isLoged, email: email)
    }
}
