//
//  ViewController.swift
//  Library_D
//
//  Created by Debora Garcia on 17/01/22.
//

import UIKit

public class ViewControllerScreen: UIViewController {
    
    @IBOutlet weak var getPassword: UITextField!
    @IBOutlet weak var getEmail: UITextField!
    @IBOutlet weak var meuBotao: UIButton!

    override public init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
         super.init(nibName: "ViewControllerScreen", bundle: Bundle.module)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
//        meuBotao.tintColor = .black
        print("Testando a view controller")
        
//        meuBotao.setTitle("Fazer login", for: .normal)
    }
}
