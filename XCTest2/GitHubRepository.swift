//
//  GitHubRepository.swift
//  XCTest2
//
//  Created by nsystem2 on 2019/12/11.
//  Copyright © 2019 nsystem2. All rights reserved.
//


struct GitHubRepository: Codable, Equatable{
    let id:   Int
    let star: Int
    let name: String
    
    enum CodingKeys: String, CodingKey{
        case id
        case star = "stargazers_count"
        case name
    }
}


