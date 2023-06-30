//
//  SecondViewController.swift
//  Xib-UIKit
//
//  Created by Gabriel Rossi on 29/06/23.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var labelTest: UILabel!
    
    @IBOutlet weak var buttonTest: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        labelTest.text = ":)  :/  :("
        
        buttonTest.backgroundColor = .purple
        buttonTest.setTitle("sou um bottao", for: .normal)
        
        buttonTest.layer.cornerRadius = 10
        
        buttonTest.addTarget(self, action: #selector(touchButton), for: .touchUpInside)
    }


    
    
    
    @objc private func touchButton() {
        let vc1 = ViewController()
        self.navigationController?.pushViewController(vc1, animated: false)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
