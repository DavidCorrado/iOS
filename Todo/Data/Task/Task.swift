//
//  Task.swift
//  Todo
//
//  Created by David Corrado on 1/23/18.
//  Copyright © 2018 David Corrado. All rights reserved.
//

import Foundation

struct Task: Identifiable {
    let id: Int
    let title: String
    let detail: String

    init(id: Int, title: String, detail: String) {
        self.id = id
        self.title = title
        self.detail = detail
    }

    init(realmTask: RealmTask) {
        self.id = realmTask.id
        self.title = realmTask.title
        self.detail = realmTask.detail
    }
}
