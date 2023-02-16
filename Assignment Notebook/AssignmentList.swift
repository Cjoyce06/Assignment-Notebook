//
//  AssignmentList.swift
//  Assignment Notebook
//
//  Created by Colin Joyce on 2/14/23.
//

import Foundation
class AssignmentList: ObservableObject {
    @Published var items = [AssignmentItem(course: "Math", description: "Do your homework", dueDate: Date()),
                            AssignmentItem(course: "Chinese", description: "Study For Test", dueDate: Date()),
                            AssignmentItem(course: "English", description: "Work on Project", dueDate: Date())]
}
