//
//  TaskScreen.swift
//  Todo
//
//  Created by David Corrado on 10/18/21.
//  Copyright © 2021 David Corrado. All rights reserved.
//

import SwiftUI

struct TaskScreen: View {
    var taskId: Int?
    @State var title: String
    @State var detail: String
    @EnvironmentObject var taskViewModel: TasksViewModel
    @Environment(\.presentationMode) var presentation
    var body: some View {
        VStack {
            TextField("Title", text: $title)
            TextField("Detail", text: $detail)
        }
        .navigationBarTitle("ToDo Details", displayMode: .inline)
        .navigationBarItems(trailing:
            HStack {
                Button("Save") {
                    taskViewModel.saveTask(task: Task(id: taskId ?? UUID().hashValue, title: title, detail: detail))
                    self.presentation.wrappedValue.dismiss()
                }
                if let taskId = taskId {
                    Button("Delete") {
                        taskViewModel.deleteTask(task: Task(id: taskId, title: title, detail: detail))
                        self.presentation.wrappedValue.dismiss()
                    }
                }
            })
    }
}
