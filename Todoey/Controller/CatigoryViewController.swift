//
//  CatigoryViewController.swift
//  Todoey
//
//  Created by Mukhammademin Eminov on 15/03/23.
//

import UIKit
import CoreData

class CatigoryViewController: UITableViewController {

    let catigoryArray = [Catigory]()
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }

    // MARK: - Table view data source

    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return catigoryArray.count
        
        
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CatigoryCell", for: indexPath)
        
        let catigory = catigoryArray[indexPath.row]
        
        cell.textLabel?.text = catigory.name
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }

    @IBAction func addItemButton(_ sender: UIBarButtonItem) {
        
        var textField = UITextField()
        
        let alert = UIAlertController(title: "Add New Catigory", message: "", preferredStyle: .alert)
        let action = UIAlertAction(title: "Add catigory", style: .default) { (action) in
            
            let newCatigory = Catigory(self.context: context)
            newCatigory.text = textField.text!
            
            self.catigoryArray.append(newCatigory)
            
            self.saveCatigory()
        }
        
    }
    func saveCatigory() {
        do {
            try context.save()
        } catch {
            print(error)
        }
        tableView.reloadData()
    }
    func loadCatigory() {
        
    }
    
}
