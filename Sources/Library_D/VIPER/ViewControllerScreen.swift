//
//  ViewController.swift
//  Library_D
//
//  Created by Debora Garcia on 17/01/22.
//

import UIKit

public protocol LoginViewInterface: AnyObject {
    func returnResponseForApp(isLoged: Bool, email: String)
}

public class ViewControllerScreen: UIViewController, LoginViewInterface {
    
    var presenter: LoginModuleInterface?
    public weak var delegate: ViewControllerScreenDelegate?
    
    @IBOutlet weak var getEmail: UITextField!
    @IBOutlet weak var getPassword: UITextField!
    @IBOutlet weak var meuBotao: UIButton!
    
    @IBAction func loginAction(_ sender: Any) {
        print("entrou na func loginAction")
        
        if getEmail.text == "" || getPassword.text == "" {
            let dialogMessage = UIAlertController(title: "Attention", message: "E-mail or password is empty", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
                 print("Ok button tapped")
              })
            dialogMessage.addAction(ok)
            self.present(dialogMessage, animated: true, completion: nil)
        } else {
            self.presenter?.updateView(email: getEmail.text!, password: getPassword.text!)
        }
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
        self.presenter = LoginPresenter(view: self)
//        self.dismiss(animated: true, completion: nil)
    }
    
    public func returnResponseForApp(isLoged: Bool, email: String) {
        delegate?.loginDidFinish(isLogged: isLoged, email: email)
        self.dismiss(animated: true, completion: nil)
    }

}


public protocol ViewControllerScreenDelegate: AnyObject {
    func loginDidFinish(isLogged: Bool, email: String)
}

