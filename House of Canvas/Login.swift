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
                    
                VStack (){
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
                        VStack () {
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
                                .padding(.horizontal, 12)                                .foregroundColor(.black)
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
                    Button ("LOGIN") {
                        login(email: email, password: password)
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

//            }
            .navigationBarBackButtonHidden(true)
            .navigationTitle("")
        }
    }
}
    
    func login(email: String, password: String) {
            Auth.auth().signIn(withEmail: email, password: password) { result, error in
                if let error = error {
                    print("Error logging in: \(error.localizedDescription)")
                    return
                }
                isActive = true
            }
        }
    }


#Preview {
    Login()
}
