//
//  TaskDatabaseRepository.swift
//  MVVM
//
//  Created by David Corrado on 1/23/18.
//  Copyright © 2018 David Corrado. All rights reserved.
//

import Foundation

class TaskDatabaseRepository: Repository {
    func find(identifer: Int) -> Task {
        return Task(identifer: 1, title: "", description: "")
    }

    func findAll() -> [Task] {
        return []
    }

    func save(data: Task) {
    }

    func delete(data: Task) {
    }
}
