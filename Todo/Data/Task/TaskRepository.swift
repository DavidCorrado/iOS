//
//  TaskRepository.swift
//  Todo
//
//  Created by David Corrado on 1/23/18.
//  Copyright © 2018 David Corrado. All rights reserved.
//

import Foundation
import RealmSwift

class TaskRepository {
    private let realm: Realm
    init(realm: Realm) {
        self.realm = realm
    }

    func save(data: Task) {
        try! realm.write {
            realm.add(RealmTask(task: data), update: .modified)
        }
    }

    func delete(data: Task) {
        try! realm.write {
            if let realmTask = realm.object(ofType: RealmTask.self, forPrimaryKey: data.id) {
                realm.delete(realmTask)
            }
        }
    }
}
