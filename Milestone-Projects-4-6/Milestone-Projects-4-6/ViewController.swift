//
//  ViewController.swift
//  Milestone-Projects-4-6
//
//  Created by Анна Никифорова on 20.07.2020.
//  Copyright © 2020 Анна Никифорова. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var shoppinglist = [String]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func addButtonTapped(_ sender: Any) {
        let ac = UIAlertController(title: "Add Shopping Item", message: nil, preferredStyle: .alert)
        ac.addTextField()
        
        let addAction = UIAlertAction(title: "Add", style: .default) { [weak self, weak ac] _ in
            guard let item = ac?.textFields?[0].text else { return }
            self?.add(item)
        }
        
        ac.addAction(addAction)
        present(ac, animated: true)
    }
    
    @IBAction func shareButtonTapped(_ sender: Any) {
        let list = shoppinglist.joined(separator: "\n")
        let vc = UIActivityViewController(activityItems: [list], applicationActivities: [])
        present(vc, animated: true)
    }
    
    func add(_ item: String) {
        shoppinglist.insert(item, at: 0)
        let indexPath = IndexPath(row: 0, section: 0)
        tableView.insertRows(at: [indexPath], with: .automatic)
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoppinglist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShoppingListItem", for: indexPath)
        cell.textLabel?.text = shoppinglist[indexPath.row]
        return cell
    }
    
    
}

