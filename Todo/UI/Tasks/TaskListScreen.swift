//
//  TaskListScreen.swift
//  Todo
//
//  Created by David Corrado on 10/18/21.
//  Copyright © 2021 David Corrado. All rights reserved.
//

import SwiftUI

struct TaskListScreen: View {
    @State var tasks = [
        Task(id: 1, title: "Task 1", detail: "Detail 1"),
        Task(id: 2, title: "Task 2", detail: "Detail 2"),
        Task(id: 3, title: "Task 3", detail: "Detail 3")
    ]
    var body: some View {
        NavigationView {
            List(tasks, id: \.id) { task in
                NavigationLink(destination: TaskScreen(task: task)) {
                    VStack {
                        Text(task.title)
                        Text(task.detail)
                    }
                }
            }.navigationBarTitle("To Do", displayMode: .inline)
        }.navigationViewStyle(.stack)
    }
}
