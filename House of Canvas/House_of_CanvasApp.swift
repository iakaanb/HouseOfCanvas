//
//  House_of_CanvasApp.swift
//  House of Canvas
//
//  Created by kai on 12/30/23.
//

//import SwiftUI
//
//@main
//struct House_of_CanvasApp: App {
//    var body: some Scene {
//        WindowGroup {
//            EntryScreen()
//        }
//    }
//}

import SwiftUI
import Firebase

@main
struct House_of_CanvasApp: App {
    init() {
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
            NavigationView {
                TabView {
                    EntryScreen()
                        .tabItem {
                            Label("Home", systemImage: "house")
                        }
                    RequestAQuote1()
                        .tabItem {
                            Label("Settings", systemImage: "gear")
                        }
                    ProfileScreen()
                        .tabItem {
                            Label("Settings", systemImage: "gear")
                        }
                }
            }
        }
    }
}

