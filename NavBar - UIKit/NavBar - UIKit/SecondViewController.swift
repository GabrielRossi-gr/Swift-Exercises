//
//  SecondViewController.swift
//  NavBar - UIKit
//
//  Created by Gabriel Rossi on 28/06/23.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemOrange
        
        self.navigationItem.title = "Tela 2"
        //tirar large title
        self.navigationItem.largeTitleDisplayMode = .never
      
        
    }
}
