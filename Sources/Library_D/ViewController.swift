//
//  ViewController.swift
//  Library_D
//
//  Created by Debora Garcia on 17/01/22.
//

import UIKit

public class ViewController: UIViewController {
    @IBOutlet weak var meuBotao: UIButton!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        meuBotao.setTitle("Fazer login", for: .normal)
    }
}