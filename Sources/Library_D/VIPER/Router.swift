//
//  File.swift
//  
//
//  Created by Debora Garcia on 04/02/22.
//

import Foundation

protocol LoginRouterOutputScreen {
    func backToScreen(isLoged: Bool)
}

class LoginRouter: LoginRouterOutputScreen {
    
    var routerScreens: LoginInteractorOutput?
    
    public init() {
        
    }
    
//    when I connect the app with the lib, the lib will found the ViewController???
    func backToScreen(isLoged: Bool) {
        print("TESTANDO A ROUTER!")
        print(isLoged)
//        self.routerScreens = LoginPresenter()
//        self.present(ViewController(), animated: true, completion: nil)
    }
}
