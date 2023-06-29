//
//  ViewController.swift
//  NavBar - UIKit
//
//  Created by Gabriel Rossi on 28/06/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemPurple
        self.navigationItem.title = "Tela 1"
        //large title
        self.navigationItem.largeTitleDisplayMode = .always
        self.navigationController?.navigationBar.prefersLargeTitles = true
       
        
//        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: " botao ", style: .plain, target: nil, action: nil)
        
        self.navigationItem.rightBarButtonItem =  UIBarButtonItem(image: UIImage(systemName: "star"), style: .plain, target: self, action: #selector(didTapButton))
        
        //criando button
        let button1 = UIButton()
        button1.frame = (CGRect(x: 20, y: 700, width: 350, height: 60))
        button1.backgroundColor = .systemBlue
        button1.setTitle("da um click ae", for: .normal)
        button1.layer.cornerRadius = 14
        button1.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        view.addSubview(button1)
    }
    
    //cria o selector
    @objc private func didTapButton(){
        let vc = SecondViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

