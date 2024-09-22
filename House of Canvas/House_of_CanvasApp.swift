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
//import FirebaseCore
//
//class AppDelegate: NSObject, UIApplicationDelegate {
//  func application(_ application: UIApplication,
//                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//    FirebaseApp.configure()
//    return true
//  }
//}

@main
struct House_of_CanvasApp: App {
  // register app delegate for Firebase setup
//  @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
//    @StateObject var dataManager = DataManager()
    
    init() {
        FirebaseApp.configure()
    }

  var body: some Scene {
    WindowGroup {
      NavigationView {
        EntryScreen()
//              .environmentObject(dataManager)
      }
    }
  }
}
