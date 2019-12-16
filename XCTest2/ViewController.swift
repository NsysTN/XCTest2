//
//  ViewController.swift
//  XCTest2
//
//  Created by nsystem2 on 2019/12/11.
//  Copyright © 2019 nsystem2. All rights reserved.
//

import UIKit

protocol GitHubAPIClientProtocol {
    func fetchRepositories(user: String, handler: @escaping([GitHubRepository]?) -> Void)
}

class ViewController: UIViewController ,UITableViewDataSource{
    
    @IBOutlet weak var txt1: UITextField!
    @IBOutlet weak var txt2: UITextField!
    @IBOutlet weak var txt3: UITextField!
    @IBOutlet weak var btnTxtLbl: UIButton!
    @IBOutlet weak var lblA: UILabel!
    
    @IBAction func btnTxtOutLabel(_ sender: Any) {
        var lbltxt : String

        if txt1.text == "" && txt2.text == "" {lblA.text =  "値を入力してください"}
        else {
            lbltxt = (txt1.text ?? "") + " "
                   + (txt2.text ?? "")
            lblA.text = lbltxt
            txt3.text = lbltxt
        }
        /*
        func syori(txt1.text,txt2.text){
            
        }
        */
    }

    var manager: GitHubRepositoryManager!
    
    @IBOutlet weak var tableView: UITableView!
    //let tableview = UITableView()
    
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

