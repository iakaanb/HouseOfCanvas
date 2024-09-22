////
////  DataManager.swift
////  House of Canvas
////
////  Created by kai on 8/15/24.
////
//
//import SwiftUI
//import Firebase
//
//class DataManager: ObservedObject<<#ObjectType: ObservableObject#>> {
//    @Published var users: [User] = []
//    
//    init() {
//        fetchUsers()
//    }
//    
//    func fetchUsers() {
//        users.removeAll()
//        let database = Firestore.firestore()
//        let reference = database.collection("Users")
//        reference.getDocuments { snapshot, error in
//            guard error == nil else {
//                print(error!.localizedDescription)
//                return
//            }
//            if let snapshot = snapshot {
//                for document in snapshot.documents {
//                    let data = document.data()
//                    
//                    let id = data["id"] as? String ?? ""
//                    let name = data["name"] as? String ?? ""
//                    let email = data["email"] as? String ?? ""
//                    let pass = data["pass"] as? String ?? ""
//                    let projects = data["projects"] as? [Project] ?? []
//                    
//                    let user = User(id: id, name: name, email: email, pass: pass, projects: projects)
//                    self.users.append(user)
//                }
//            }
//        }
//    }
//}
