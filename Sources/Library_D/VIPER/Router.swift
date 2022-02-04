//
//  File.swift
//  
//
//  Created by Debora Garcia on 04/02/22.
//

import Foundation

protocol LoginRouterOutputScreen {
    func backToScreen()
}

class LoginRouter: LoginRouterOutputScreen {
    
    var routerScreens: LoginRouterOutput?
    
    public init() {
        
    }
    
//    when I connect the app with the lib, the lib will found the ViewController???
    func backToScreen() {
        print("TESTANDO A ROUTER!")
        self.routerScreens = LoginPresenter()
        self.present(ViewController(), animated: true, completion: nil)
    }
}
