//
//  TableView.swift
//  TableView_ICE
//
//  Created by Student Account on 5/10/22.
//

import Foundation
import UIKit

class ICEViewController: UITableViewController {
    
    var ds:DataStore = DataStore()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(newCustomCell.self, forCellReuseIdentifier: "CustomCell")
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ds.persons.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let newCell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath)
        newCell.textLabel?.text = "Placeholder Data Here"
        return newCell
        
    }
    

}

class Person {
    var personName: String
    var age: Int
    var location: String
    
    init(personName: String, age: Int, location: String) {
        self.personName = personName
        self.age = age
        self.location = location
    }
    
    convenience init() {
        self.init(personName: "[Unnamed]", age: 18, location: "[No Location]")
    }
}

class DataStore {
    var persons:[Person]
    init() {
    let person1 = Person(personName: "Shahin", age: 36, location: "Kirkland")
    let person2 = Person(personName: "Andrea", age: 37, location: "Bothell")
    let person3 = Person(personName: "Fabrice", age: 31, location: "Lynnwood")
    let person4 = Person(personName: "Zach", age: 22, location: "Everett")
    persons = [person1, person2, person3, person4]
    }
   
}

class newCustomCell: UITableViewCell {

}

