//
//  TaskListScreen.swift
//  Todo
//
//  Created by David Corrado on 10/18/21.
//  Copyright © 2021 David Corrado. All rights reserved.
//

import SwiftUI

struct TaskListScreen: View {
    @EnvironmentObject var taskViewModel: TasksViewModel
    var body: some View {
        NavigationView {
            List(taskViewModel.tasks, id: \.id) { task in
                NavigationLink(destination: TaskScreen(taskId: task.id, title: task.title, detail: task.detail)) {
                    VStack {
                        Text(task.title)
                        Text(task.detail)
                    }
                }
            }.navigationBarTitle("To Do", displayMode: .inline)
                .navigationBarItems(trailing:
                    NavigationLink(destination:
                        TaskScreen(title: "", detail: "")) {
                            Text("Add")
                    })
        }.navigationViewStyle(.stack)
    }
}
