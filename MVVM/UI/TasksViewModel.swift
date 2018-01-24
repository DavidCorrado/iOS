//
//  TasksViewModel.swift
//  MVVM
//
//  Created by David Corrado on 1/24/18.
//  Copyright © 2018 David Corrado. All rights reserved.
//

import Foundation

class TaskViewModel {
    let taskRepo: TaskRepository
    init(taskRepo: TaskRepository = TaskRepository() ) {
        self.taskRepo = taskRepo
    }

    func getTasks() -> [Task] {
        return taskRepo.findAll()
    }

    func getTask(identifier: Int) -> Task? {
        return taskRepo.find(identifer: identifier)
    }

    func saveTask(task: Task) {
        taskRepo.save(data: task)
    }

    func deleteTask(task: Task) {
        taskRepo.delete(data: task)
    }
}
