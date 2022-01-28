//
//  File.swift
//  
//
//  Created by Debora Garcia on 26/01/22.
//

import Foundation

/*
 * Protocol that defines the Interactor's use case.
 */
protocol ValidationOfUserInput: class {
    func validateUser()
}

/*
 * The Interactor responsible for implementing
 * the business logic of the module.
 */
class UserInteractor : ValidationOfUserInput
{
    // Data users of Entity.
    let user = firstUser
    
    // Reference to the Presenter's output interface.
    weak var output: AnswerUserOutput!


    // MARK: ValidationOfUser
    func validateUser() {
        
        //  pegar as informacoes de email e senha que o usuario digitou e comparar com o que tenho em entity
        //  CORRIGIR A VIEW
    }
    
}





//protocol AnyInteractor {
//    var presenter: AnyPresenter? { get set }
//
//    func getUsers()
//}
//
//class UserInteractor: AnyInteractor {
//    var presenter: AnyPresenter?
//
//    func getUsers() {
//
//    }
//}



