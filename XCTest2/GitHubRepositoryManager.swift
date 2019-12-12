//
//  GitHubRepositoryManager.swift
//  XCTest2
//
//  Created by nsystem2 on 2019/12/11.
//  Copyright © 2019 nsystem2. All rights reserved.
//

import Foundation

class GitHubRepositoryManager {

    private let client: GitHubAPIClient
    private var repos: [GitHubRepository]?
    
    var majorRepositories: [GitHubRepository]{
        guard let repositories = self.repos else{return[]}
        return repositories.filter {
            $0.star >= 10
        }
    }
    
    init(){
        self.client = GitHubAPIClient()
    }
    
    func load(user: String, completion: @escaping() -> Void){
        self.client.fetchRepositories(user: user){
            (repositories) in self.repos = repositories
            completion()
        }
    }
    
}
