//
//  ProyectoVerdeApp.swift
//  ProyectoVerde
//
//  Created by Oscar Valdes on 08/11/23.
//

import SwiftUI

@main
struct ProyectoVerdeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
