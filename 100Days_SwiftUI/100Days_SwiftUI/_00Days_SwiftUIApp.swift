//
//  _00Days_SwiftUIApp.swift
//  100Days_SwiftUI
//
//  Created by Gabriel Rossi on 05/06/23.
//

import SwiftUI

@main
struct _00Days_SwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
