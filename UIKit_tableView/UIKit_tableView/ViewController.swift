//
//  ViewController.swift
//  UIKit_tableView
//
//  Created by Gabriel Rossi on 11/07/23.
//

import UIKit
import CoreData


class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var items: [Person]?
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    

//    var items: [Data] = [
//        Data(comida: "banana", numero: 0),
//        Data(comida: "maçã", numero: 1),
//        Data(comida: "jaca", numero: 2),
//        Data(comida: "uva", numero: 3)
//    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(barButtonSystemItem: .add, target: self, action: #selector(tapAddButton))
        
        
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    @objc func tapAddButton(){
        var alert = UIAlertController(title: "add name", message: "name:", preferredStyle: .alert)
        
        
    }
    
    
    
    func fetchPeople(){
//        fetch the data from core data
        
        do{
            self.items = try context.fetch(Person.fetchRequest())
            tableView.reloadData()
            DispatchQueue.main.async {
                self.tableView.reloadData()
                
            }
            
        }
        catch{
            print("erro fetch")
        }
    }
    
    
}








extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items?.count ?? 0
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //cria celula sem arquivo xib e sem register
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        let textLabel = items?[indexPath.row].name
        cell.textLabel?.text = textLabel
        return cell
    }
    
    
}




extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("cell ----->\(indexPath.row)")
    }
}
