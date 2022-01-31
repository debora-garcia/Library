//
//  File.swift
//  
//
//  Created by Debora Garcia on 31/01/22.
//

import Foundation

protocol LoginInteractorInput {
    func login()
}

class LoginInteractor: LoginInteractorInput {
    func login() {
        print("Logou")
    }
}
