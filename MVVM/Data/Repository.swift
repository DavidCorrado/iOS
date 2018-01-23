//
//  Repository.swift
//  MVVM
//
//  Created by David Corrado on 1/23/18.
//  Copyright © 2018 David Corrado. All rights reserved.
//

import Foundation

protocol Repository {
    associatedtype RepositoryType
    func find(identifer: Int) -> RepositoryType
    func findAll() -> [RepositoryType]
    func save(data: RepositoryType)
    func delete(data: RepositoryType)
}
