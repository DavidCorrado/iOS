//
//  TasksViewModel.swift
//  Todo
//
//  Created by David Corrado on 1/24/18.
//  Copyright © 2018 David Corrado. All rights reserved.
//

import Foundation
import RealmSwift

class TasksViewModel: ObservableObject {
    private let taskRepo: TaskRepository
    @Published var tasks: [Task] = []
    private var token: NotificationToken?
    private let realm = try! Realm()
    init() {
        self.taskRepo = TaskRepository(realm: realm)
        setupObserver()
    }

    private func setupObserver() {
        let results = realm.objects(RealmTask.self)

        token = results.observe { [weak self] _ in
            self?.tasks = results.map(Task.init)
        }
    }

    func saveTask(task: Task) {
        taskRepo.save(data: task)
    }

    func deleteTask(task: Task) {
        taskRepo.delete(data: task)
    }
}
