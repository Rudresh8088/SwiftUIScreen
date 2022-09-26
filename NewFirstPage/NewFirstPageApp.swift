//
//  NewFirstPageApp.swift
//  NewFirstPage
//
//  Created by Rudresh Uppin on 25/09/22.
//

import SwiftUI

@available(iOS 14.0, *)
@main
struct NewFirstPageApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            FirstView()
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
