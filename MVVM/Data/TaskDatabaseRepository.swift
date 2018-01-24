//
//  TaskDatabaseRepository.swift
//  MVVM
//
//  Created by David Corrado on 1/23/18.
//  Copyright © 2018 David Corrado. All rights reserved.
//

import Foundation
import RealmSwift

class TaskDatabaseRepository: Repository {
    private let realm = try! Realm()
    func find(identifer: Int) -> Task? {
        return realm.object(ofType: RealmTask.self, forPrimaryKey: identifer)?.entity
    }

    func findAll() -> [Task] {
        return realm.objects(RealmTask.self).map { $0.entity }
    }

    func save(data: Task) {
        try! realm.write {
            realm.add(RealmTask(task: data))
        }
    }

    func delete(data: Task) {
        let object = RealmTask(task: data)
        try! realm.write {
            realm.delete(object)
        }
    }
}
