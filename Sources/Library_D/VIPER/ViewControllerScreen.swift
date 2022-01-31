//
//  ViewController.swift
//  Library_D
//
//  Created by Debora Garcia on 17/01/22.
//

import UIKit

protocol LoginViewInterface: AnyObject {

}

public class ViewControllerScreen: UIViewController, LoginViewInterface {
    
    var presenter: LoginModuleInterface?
    
    @IBOutlet weak var getPassword: UITextField!
    @IBOutlet weak var getEmail: UITextField!
    @IBOutlet weak var meuBotao: UIButton!
    
    @IBAction func loginAction(_ sender: Any) {
        print("entrou na func loginAction")
        self.presenter?.updateView()
    }
    

    override public init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
         super.init(nibName: "ViewControllerScreen", bundle: Bundle.module)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
        print("Testando a view controller Screen")
        self.presenter = LoginPresenter()
//        self.presenter?.updateView()
        
//        meuBotao.setTitle("Fazer login", for: .normal)
    }
}
