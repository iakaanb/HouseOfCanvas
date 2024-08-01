//
//  Login.swift
//  House of Canvas
//
//  Created by kai on 1/4/24.
//

import SwiftUI
import Firebase

struct Login: View {
    @State private var email: String = "   "
    @State private var password: String = "   "
    @State private var users: [User] = []
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 400, height: 103)
                        .background(.black)
                    Image("Logo")
                        .resizable()
                        .frame(width: 161, height: 104)
                }
//                .position(x: .centerX)
                    VStack (spacing: 7){
                        Text("LOGIN")
                            .font(Font.largeTitle.weight(.bold))
                            .foregroundColor(.black)
                            .frame(maxWidth: 340, alignment: .leading)
                        ZStack {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 347, height: 241)
                                .background(.white)
                                .cornerRadius(7)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 7)
                                        .inset(by: 2.50)
                                        .stroke(Color(red: 0.64, green: 0.61, blue: 0.53), lineWidth: 5.00))
                            VStack (spacing: 14) {
                                Text("Email Address")
                                    .font(Font.custom("Inter", size: 20).weight(.bold))
                                    .foregroundColor(.black)
                                    .frame(maxWidth: 311, alignment: .leading)
                                TextField("  Email Address", text: $email)
                                    .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.black)
                                    .frame(width: 311, height: 46)
                                    .background(Color(red: 0.64, green: 0.61, blue: 0.53))
                                    .cornerRadius(5)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 5)
                                            .inset(by: 1)
                                            .stroke(.black, lineWidth: 1))
                                Text("Password")
                                    .font(Font.custom("Inter", size: 20).weight(.bold))
                                    .foregroundColor(.black)
                                    .frame(maxWidth: 311, alignment: .leading)
                                TextField("  Password", text: $password)
//                                    .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.black)
                                    .frame(width: 311, height: 46)
                                    .background(Color(red: 0.64, green: 0.61, blue: 0.53))
                                    .cornerRadius(5)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 5)
                                            .inset(by: 1)
                                            .stroke(.black, lineWidth: 1))
                            }
                    }
                        NavigationLink(destination: Home()) {
//                            Text("LOGIN")
                            
                            Button ("LOGIN") {
//                                Task {
                                    login(email: self.email, password: self.password)
//                                }
//                                Text("hey")
                            }
                        }
                        .foregroundColor(.black)
                        .font(Font.title2.weight(.bold))
                        .frame(width: 311, height: 46)
                        .background(Color(red: 0.64, green: 0.61, blue: 0.53))
                        .cornerRadius(5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .inset(by: 1)
                                .stroke(.black, lineWidth: 2.5))
                        .padding(30)
                }
                .frame(maxWidth: 358, maxHeight: 844, alignment: .center)
//                .navigationBarBackButtonHidden(true)
            }
//            .navigationBarBackButtonHidden(true)
        }
        Spacer(minLength: 27)
        .navigationBarBackButtonHidden(true)
    }
//    func fetchUser() async {
////        guard let uid = Auth.auth().currentUser?.uid else { return }
////        guard let snapshot = try? await Firestore.firestore().collection("Users").document(uid).getDocument() else { return }
////        self.currentUser = try? snapshot.data(as: User.self)
//        users.removeAll()
//        let usersDatabase = Firestore.firestore()
//        let reference = usersDatabase.collection("Users")
//        reference.getDocuments { snapshot, error in
//            guard error == nil else {
//                print (error!.localizedDescription)
//                return
//            }
//            if let snapshot = snapshot {
//                for document in snapshot.documents {
//                    let data = document.data()
//                    
//                    let id = data["id"] as? String ?? ""
//                    
//                    let user = User(fullName: fullName, email: email, password: password)
//                    self.users.append(user)
//                }
//            }
//        }
//        
//    }
    
    func login(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if error != nil {
                print(error!.localizedDescription)
            }}
    }
}

#Preview {
    Login()
}
