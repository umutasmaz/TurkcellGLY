//
//  ViewController.swift
//  AddList
//
//  Created by Umut Asmaz on 29.03.2023.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource{
    
    

    private var table : UITableView  {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }
    
    var items =  [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Add The List "
        view.addSubview(table)
        table.dataSource = self
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didTapAdd))
    }
    @objc private func didTapAdd () {
        let alert = UIAlertController(title: "New Message", message: "Enter the message!", preferredStyle: .alert)
        alert.addTextField { field in
            field.placeholder = "Enter Messsage ..."
            
        }
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel,handler: nil))
        alert.addAction(UIAlertAction(title: "OK", style: .default,handler: {(self) in
            
        }))
        
        if let field = alert.textFields?.first{
            if let text = field.text , !text.isEmpty {
                DispatchQueue.main.async {
                    self.items.append(text)
                    self.table.reloadData()
                }
            }
        }
        present(alert,animated: true)
        
    }
    
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        table.frame = view.bounds
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = items [indexPath.row]
        return cell
    }

}

