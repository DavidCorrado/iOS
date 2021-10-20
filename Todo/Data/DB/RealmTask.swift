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
    @objc dynamic var id = UUID().uuidString
    @objc dynamic var title: String = ""
    @objc dynamic var detail: String = ""

    convenience init(task: Task) {
        self.init()
        title = task.title
        detail = task.detail
    }

    override static func primaryKey() -> String? {
        return "identifer"
    }

    var entity: Task {
        return Task(id: 0, title: title,
                    detail: detail)
    }
}
