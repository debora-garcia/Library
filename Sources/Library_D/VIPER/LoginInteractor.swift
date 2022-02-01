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
    func login(email: String, password: String) {
        print("Testando se recebi os dados no INTERACTOR")
        print(email)
        print(password)
        print("Logou?")
    }
}
