//
//  CoreData+PersonProperties.swift
//  UIKit_tableView
//
//  Created by Gabriel Rossi on 05/08/23.
//

import Foundation
import CoreData

extension Person {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Person> {
    
        return NSFetchRequest<Person>(entityName: "Person")
    }
    
    @NSManaged public var name : String
    @NSManaged public var age: Int16
    
}
