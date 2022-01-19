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
        
//        public init() {
//        super.init(nibName: "ViewController", bundle: Bundle(for: ViewController.self))
//            print("Teste Library")
//        }
//
//        required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//        }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        print("Testando a view controller")
        meuBotao.setTitle("Fazer login", for: .normal)
    }
}
