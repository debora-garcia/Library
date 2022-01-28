//
//  File.swift
//  
//
//  Created by Debora Garcia on 26/01/22.
//

import Foundation


/*
 * Protocol that defines the possible routes from the Articles module.
 */
protocol ArticlesWireframeInput {
    func presentDetailsInterfaceForArticle(article: Article)
}


/*
 * The Router responsible for navigation between modules.
 */
class ArticlesWireframe : NSObject, ArticlesWireframeInput
{
    // Reference to the ViewController (weak to avoid retain cycle).
    weak var articlesViewController: ArticlesViewController!

    // Reference to the Router of the next VIPER module.
    var detailsWireframe: DetailsWireframe!


    // MARK: ArticlesWireframeInput

    func presentDetailsInterfaceForArticle(article: Article) {
        // Create the Router for the upcoming module.
        self.detailsWireframe = DetailsWireframe()

        // Sends the article data to the next module's Presenter.
        self.sendArticleToDetailsPresenter(self.detailsWireframe.detailsPresenter, article: article)

        // Presents the next View.
        self.detailsWireframe.presentArticleDetailsInterfaceFromViewController(self.articlesViewController)
    }


    // MARK: Private

    private func sendArticleToDetailsPresenter(detailsPresenter: DetailsPresenter, article: Article) {
        detailsPresenter.article = article
    }
}







//
//protocol AnyRouter {
//    static func start() -> AnyRouter
//}
//
//class ValidUserRouter: AnyRouter {
//    static func start() -> AnyRouter {
//        let router = ValidUserRouter()
//
//        // Assign VIP
//
//        return router
//    }
//}



/*
Duvidas:

 Pq criar protocol se ja estou criando tudo dentro de class?
 
 Me parece que um aponta para o outro, confuso.

*/
