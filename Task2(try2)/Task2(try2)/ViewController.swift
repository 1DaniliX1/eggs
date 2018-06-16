//
//  ViewController.swift
//  Task2(try2)
//
//  Created by raccoonsky on 6/17/18.
//  Copyright © 2018 raccoonsky. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    var number = 0
    @IBOutlet weak var addTextField: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    var notes = ["Your Notes"]
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView(frame: CGRect.zero)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func createButton(_ sender: Any) {
        
     insertNewNote()
    }
    func insertNewNote() {
        notes.append(addTextField.text!)
        let indexPath = IndexPath(row: notes.count - 1, section: 0)
        
        tableView.beginUpdates()
        tableView.insertRows(at: [indexPath], with: .automatic)
        tableView.endUpdates()
        
        addTextField.text = ""
        view.endEditing(true)
        
    }
    
}

extension ViewController:  UITableViewDelegate, UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
        
    {
        return notes.count
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = notes[indexPath.row]
        
        return(cell)
    }
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            notes.remove(at: indexPath.row)
            
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .automatic)
            tableView.endUpdates()
        }
    }
}

