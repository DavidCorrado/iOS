//
//  TaskScreen.swift
//  Todo
//
//  Created by David Corrado on 10/18/21.
//  Copyright © 2021 David Corrado. All rights reserved.
//

import SwiftUI

struct TaskScreen: View {
    var task: Task
    var body: some View {
        Text(task.detail)
            .navigationBarTitle(task.title, displayMode: .inline)
    }
}
