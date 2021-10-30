//
//  RealmTask.swift
//  Todo
//
//  Created by David Corrado on 1/24/18.
//  Copyright © 2018 David Corrado. All rights reserved.
//

import Foundation
import RealmSwift

class RealmTask: Object {
    @objc dynamic var id: Int = UUID().hashValue
    @objc dynamic var title: String = ""
    @objc dynamic var detail: String = ""

    convenience init(task: Task) {
        self.init()
        id = task.id
        title = task.title
        detail = task.detail
    }

    override static func primaryKey() -> String? {
        return "id"
    }
}
