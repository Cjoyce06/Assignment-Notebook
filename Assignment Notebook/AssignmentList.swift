//
//  AssignmentList.swift
//  Assignment Notebook
//
//  Created by Colin Joyce on 2/14/23.
//

import Foundation
class AssignmentList: ObservableObject {
    @Published var items : [AssignmentItem] {
        didSet {
            let encoder = JSONEncoder()
            if let encoded = try? encoder.encode(items) {
                UserDefaults.standard.set(encoded, forKey: "Data")
            }
        }
    }
    init() {
        if let items = UserDefaults.standard.data(forKey: "Data") {
            let decoder = JSONDecoder()
            if let decoded = try? decoder.decode([AssignmentItem].self, from: items) {
                self.items = decoded
                return
            }
        }
        items = []
    }
}
