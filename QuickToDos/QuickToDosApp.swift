//
//  QuickToDosApp.swift
//  QuickToDos
//
//  Created by Dominik Woźniak on 30/01/2022.
//

import SwiftUI

@main
struct QuickToDosApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ToDoListViev()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
