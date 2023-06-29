//
//  ViewController.swift
//  UIKit_base
//
//  Created by Gabriel Rossi on 23/06/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //cria uma constante que recebe uma view do tipo UILabel
        let label1 = UILabel(frame: CGRect(x: 50, y: 100, width: 300, height: 300))
        
        //define o text da UILabel (o text é um metodo do UILabel)
        label1.text = "first label"
        
        
        self.view.addSubview(label1)
    }


}

