//
//  ViewController.swift
//  XCTest2
//
//  Created by nsystem2 on 2019/12/11.
//  Copyright © 2019 nsystem2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var manager: GitHubRepositoryManager!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.manager = GitHubRepositoryManager()
        self.manager.load(user: "apple"){
            [weak self] in self?.tableView?.reloadData()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return self.manager.majorRepositories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        let repository = self.manager.majorRepositories[indexPath.row]
        cell.textLabel?.text = repository.name
        return cell
    }

}

