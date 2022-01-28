//
//  File.swift
//  
//
//  Created by Debora Garcia on 26/01/22.
//

import Foundation
import UIKit

/*
 * Protocol that defines the view input methods.
 */
protocol ArticlesViewInterface: class {
    func showArticlesData(articles: [Article])
    func showNoContentScreen()
}

/*
 * A view responsible for displaying a list
 * of articles fetched from some source.
 */
class ArticlesViewController : UIViewController, ArticlesViewInterface
{
    // Reference to the Presenter's interface.
    var presenter: ArticlesModuleInterface!

    /*
     * Once the view is loaded, it sends a command
     * to the presenter asking it to update the UI.
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter.updateView()
    }

    // MARK: ArticlesViewInterface

    func showArticlesData(articles: [Article]) {
        self.articles = articles
        self.tableView.reloadData()
    }

    func showNoContentScreen() {
        // Show custom empty screen.
    }
}

//protocol AnyView {
//    var presenter: AnyPresenter? { get set }
//}
//
//class UserViewController: UIViewController, AnyView {
//
//}


