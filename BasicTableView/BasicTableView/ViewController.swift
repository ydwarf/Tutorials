//
//  ViewController.swift
//  BasicTableView
//
//  Created by Oli on 13/12/2018.
//  Copyright © 2018 Smartouch. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    private var data: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Initialize the data variable
        for i in 0...1000 {
            data.append("\(i)")
        }
        
        tableView.dataSource = self
    
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")! //1
        let text = data[indexPath.row] //2
        cell.textLabel?.text = text //3
        return cell //4
    }
}

