//
//  ViewController.swift
//  Xib-UIKit
//
//  Created by Gabriel Rossi on 29/06/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        topLabel.text = "sou uma label :)"
        
        
        let button = UIButton(frame: CGRect(x: 55, y: 700,
                                            width: 290, height:60))
        button.layer.cornerRadius = CGFloat(10)
        button.backgroundColor = .blue
        button.setTitle("click", for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        self.view.addSubview(button)
        
    }


    
    
    

    @objc private func didTapButton(){
        let vc = SecondViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

