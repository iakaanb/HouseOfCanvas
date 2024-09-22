//
//  SignUp.swift
//  House of Canvas
//
//  Created by kai on 7/9/24.
//

import SwiftUI
import Firebase
import FirebaseAuth

struct SignUp: View {
    @State private var fullName: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    
    @State private var isActive = false
    
    var body: some View {
            NavigationStack {
//                ZStack {
//                    Color(UIColor.lightGray)
//                        .opacity(0.5)
//                        .ignoresSafeArea()
                VStack {
                    ZStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: .infinity, height: 104)
                            .background(.black)
                        Image("Logo")
                            .resizable()
                            .frame(width: 161, height: 104)
                    }
                    
                    Spacer()

                    VStack () {
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
                            VStack () {
                                Text("Full Name")
                                    .font(Font.custom("Inter", size: 20).weight(.bold))
                                    .foregroundColor(.black)
                                    .frame(maxWidth: 311, alignment: .leading)
                                TextField("Full Name", text: $fullName)
                                    .padding(.horizontal, 12)
                                    .foregroundColor(.black)
                                    .frame(width: 311, height: 46)
                                    .background(Color(red: 0.64, green: 0.61, blue: 0.53))
                                    .cornerRadius(5)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 5)
                                            .inset(by: 1)
                                            .stroke(.black, lineWidth: 1))
                                    .padding(.bottom, 12)
                                Text("Email Address")
                                    .font(Font.custom("Inter", size: 20).weight(.bold))
                                    .foregroundColor(.black)
                                    .frame(maxWidth: 311, alignment: .leading)
                                TextField("Email Address", text: $email)
                                    .padding(.horizontal, 12)
                                    .foregroundColor(.black)
                                    .frame(width: 311, height: 46)
                                    .background(Color(red: 0.64, green: 0.61, blue: 0.53))
                                    .cornerRadius(5)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 5)
                                            .inset(by: 1)
                                            .stroke(.black, lineWidth: 1))
                                    .padding(.bottom, 12)
                                Text("Password")
                                    .font(Font.custom("Inter", size: 20).weight(.bold))
                                    .foregroundColor(.black)
                                    .frame(maxWidth: 311, alignment: .leading)
                                SecureField("Password", text: $password)
                                    .padding(.horizontal, 12)
                                    .foregroundColor(.black)
                                    .frame(width: 311, height: 46)
                                    .background(Color(red: 0.64, green: 0.61, blue: 0.53))
                                    .cornerRadius(5)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 5)
                                            .inset(by: 1)
                                            .stroke(.black, lineWidth: 1))
                                    .padding(.bottom, 12)
                            }
                        }
                        Button ("CREATE AN ACCOUNT") {
                            addUser(fullName: self.fullName, email: self.email, password: self.password)
                            isActive = true
                        }
                        .navigationDestination(isPresented: $isActive) {
                            Home()
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
                    Spacer()

//                }
                .navigationBarBackButtonHidden(true)
                .navigationTitle("")
            }
        }
        .padding(.bottom, 27)
    }
    func addUser(fullName: String, email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("Error creating user: \(error.localizedDescription)")
                return
            }
            guard let user = result?.user else { return }
            let usersDatabase = Firestore.firestore()
            let userData = ["fullName": fullName, "email": email, "password": password, "uid": user.uid]
            let reference = usersDatabase.collection("Users").document(user.uid)
            reference.setData(userData) { error in
                if let error = error {
                    print("Error saving user data: \(error.localizedDescription)")
                }
            }
            print("User created successfully!")
        }
        
    }
}

#Preview {
    SignUp()
}

