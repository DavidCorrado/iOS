//
//  Repository.swift
//  Todo
//
//  Created by David Corrado on 1/23/18.
//  Copyright © 2018 David Corrado. All rights reserved.
//

import Foundation

protocol Repository {
    associatedtype RepositoryType
    func find(id: Int) -> RepositoryType?
    func findAll() -> [RepositoryType]
    func save(data: RepositoryType)
    func delete(data: RepositoryType)
}
