//
//  ViewController.swift
//  Library_D
//
//  Created by Debora Garcia on 17/01/22.
//

import UIKit

public class ViewController: UIViewController {
    
    @IBOutlet weak var getPassword: UITextField!
    @IBOutlet weak var getEmail: UITextField!
    @IBOutlet weak var meuBotao: UIButton!
    
    public class LoginViewController: UIViewController {
        super.init(nibName: "LoginViewController", bundle: Bundle(for: LoginViewController.self))
    }
    
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        meuBotao.setTitle("Fazer login", for: .normal)
        
        print("Email: \(getEmail), senha: \(getPassword)")
         
    }
}
