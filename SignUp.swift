//
//  SignUp.swift
//  House of Canvas
//
//  Created by kai on 7/9/24.
//

import SwiftUI
import Firebase

struct SignUp: View {
    @State private var fullName: String = "   "
    @State private var username: String = "   "
    @State private var password: String = "   "
    
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
                        Text("SIGN UP")
                            .font(Font.largeTitle.weight(.bold))
                            .foregroundColor(.black)
                            .frame(maxWidth: 340, alignment: .leading)
                        ZStack {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 347, height: 349)
                                .background(.white)
                                .cornerRadius(7)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 7)
                                        .inset(by: 2.50)
                                        .stroke(Color(red: 0.64, green: 0.61, blue: 0.53), lineWidth: 5.00))
                            VStack (spacing: 14){
                                Text("Full Name")
                                    .font(Font.custom("Inter", size: 20).weight(.bold))
                                    .foregroundColor(.black)
                                    .frame(maxWidth: 311, alignment: .leading)
                                TextField("  Full Name", text: $fullName)
                                    .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.black)
                                    .frame(width: 311, height: 46)
                                    .background(Color(red: 0.64, green: 0.61, blue: 0.53))
                                    .cornerRadius(5)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 5)
                                            .inset(by: 1)
                                            .stroke(.black, lineWidth: 1))
                                Text("Username")
                                    .font(Font.custom("Inter", size: 20).weight(.bold))
                                    .foregroundColor(.black)
                                    .frame(maxWidth: 311, alignment: .leading)
                                TextField("  Username", text: $username)
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
//                        Button("CREATE AN ACCOUNT") {
//                                            Task {      addUser(fullName: self.fullName, username: self.username, password: self.password)
//                                            }
//                                        }
//                                        NavigationLink(destination: Login()) {
//                                            Text("").hidden()
////                                            Text("CREATE AN ACCOUNT")
//                                        }
                        
                        NavigationLink(destination: Login()) {
                            Text("CREATE AN ACCOUNT")
//                            Task {

//                            }
                            Button ("") {
//                                Task {
                                    addUser(fullName: self.fullName, username: self.username, password: self.password)
//                                }
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
    func addUser(fullName: String, username: String, password: String) {
            let usersDatabase = Firestore.firestore()
            let userData = ["fullName": fullName, "username": username, "password": password] as [String : Any]
            let reference = usersDatabase.collection("Users").document()
            reference.setData(userData)
        //        { error in
        //            if let error = error {
        //                print(error.localizedDescription)
        //            }
                print("Checking")
        }
}

#Preview {
    SignUp()
}

