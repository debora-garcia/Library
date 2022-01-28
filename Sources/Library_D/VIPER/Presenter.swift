//
//  File.swift
//  
//
//  Created by Debora Garcia on 26/01/22.
//

import Foundation


/*
 * Protocol that defines the commands sent from the View to the Presenter.
   In this case, the only command then we have is the LOGIN button
 */
protocol LoginModuleInterface: class {
    func updateView()
//    func showDetailsForArticle(article: Article)
}


/*
 * Protocol that defines the commands sent from the Interactor to the Presenter.
   To Make this after then I make the valited function in Interactor before
 */
protocol AnswerUserOutput: class {
    func articlesFetched(articles: [Article])
}


/*
 * The Presenter is also responsible for connecting
 * the other objects inside a VIPER module.
 */
class ArticlesPresenter : LoginModuleInterface, AnswerUserOutput
{
    // Reference to the View (weak to avoid retain cycle).
    weak var view: ArticlesViewInterface!

    // Reference to the Interactor's interface.
    var interactor: ValidationOfUserInput!

    // Reference to the Router
    var wireframe: ArticlesWireframe!


    // MARK: LoginModuleInterface

    func updateView() {
        self.interactor.validateUser()
    }

//    func showDetailsForArticle(article: Article) {
//        self.wireframe.presentDetailsInterfaceForArticle(article)
//    }

    // MARK: ArticlesInteractorOutput

    func articlesFetched(articles: [Article]) {
        if articles.count > 0 {
            self.articles = articles
            self.view.showArticlesData(articles)
        } else {
            self.view.showNoContentScreen()
        }
    }
}




//protocol AnyPresenter {
//    var router: AnyRouter? { get set }
//    var interactor: AnyInteractor? { get set }
//    var view: AnyView? { get set }
//
//    func interactorDidFetchUsers(with result: Result<[User], Error>) {
//
//    }
//}
//
//class UserPresenter: AnyPresenter {
//    var router: AnyRouter?
//
//    var interactor: AnyInteractor?
//
//    var view: AnyView?
//
//    func interactorDidFetchUsers(with result: Result<[User], Error>) {
//
//    }
//}

/*
Duvidas:

 pq tem "get set" nas var? O que e isso?

*/



