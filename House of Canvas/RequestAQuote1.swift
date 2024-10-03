//
//  RequestAQuote1.swift
//  House of Canvas
//
//  Created by kai on 9/23/24.
//

import SwiftUI

struct RequestAQuote1: View {
    @State private var fullName: String = ""
    @State private var projectName: String = ""
    @State private var email: String = ""
    @State private var phoneNum: String = ""
    @State private var address: String = ""
    @State private var isActive = false
    
    var body: some View {
        NavigationStack {
            //                ZStack {
            //                    Color(UIColor.lightGray)
            //                        .opacity(0.5)
            //                        .ignoresSafeArea()
            
            VStack {
            VStack(spacing: 0) {
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: .infinity, height: 104)
                        .background(.black)
                    Image("Logo")
                        .resizable()
                        .frame(width: 161, height: 104)
                }
                Rectangle()
                    .frame(width: .infinity, height: 50)
                    .foregroundColor(Color(red: 0.64, green: 0.61, blue: 0.53))
                    .overlay {
                        HStack {
                            Text("Customer Information") .font(Font.title.weight(.bold)).frame(maxWidth: .infinity, alignment: .center)
                        }
                        .padding(.horizontal)
                    }
                Divider()
                    .frame(minHeight: 2)
                    .background(Color.black)
                Spacer()
            }
//                    Text("Customer Contact Information")
//                        .font(Font.custom("Rubik", size: 22).weight(.light))
//                        .frame(maxWidth: .infinity, alignment: .leading)
//                        .padding(.leading)
//                        .padding(.bottom)
                    Text("Full Name")
                        .font(Font.custom("Rubik", size: 18).weight(.light))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                    inputField(fieldName: "Full Name", fieldVar: $fullName)
                    .padding(.bottom, 10)
                    Text("Company/Project Name")
                        .font(Font.custom("Rubik", size: 18).weight(.light))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                    inputField(fieldName: "Company/Project Name", fieldVar: $projectName)
                    .padding(.bottom, 10)
                    Text("Email Address")
                        .font(Font.custom("Rubik", size: 18).weight(.light))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                    inputField(fieldName: "Email Address", fieldVar: $email)
                    .padding(.bottom, 10)
                    Text("Phone Number")
                        .font(Font.custom("Rubik", size: 18).weight(.light))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                    inputField(fieldName: "Phone Number", fieldVar: $phoneNum)
                    .padding(.bottom, 10)
                    Text("Address")
                        .font(Font.custom("Rubik", size: 18).weight(.light))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                    inputField(fieldName: "Address", fieldVar: $address)
                    .padding(.bottom, 10)
                Spacer()
                Divider()
                    .padding()
                    Button ("Next") {
                        isActive = true
                    }
                    .navigationDestination(isPresented: $isActive) {
                        RequestAQuote2(fullName: fullName, projectName: projectName, email: email, phoneNum: phoneNum, address: address)
                    }
                    .foregroundColor(.black)
                    .font(Font.title.weight(.bold)).frame(maxWidth: .infinity, alignment: .center)
                    .frame(width: 358, height: 50)
                    .background(Color(red: 0.64, green: 0.61, blue: 0.53))
                    .cornerRadius(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .inset(by: 1)
                            .stroke(.black, lineWidth: 2.5))
                    .padding()
                    Spacer()
            }
        }
                            .navigationBarBackButtonHidden(true)
                            .navigationTitle("")
                            .navigationBarHidden(true)
    }
    func inputField(fieldName: String, fieldVar: Binding<String>) -> some View {
        ZStack {
            Color(red: 0.85, green: 0.85, blue: 0.85)
                .cornerRadius(5)
                .padding(.horizontal, 16)
                .frame(height: 50)

            TextField(fieldName, text: fieldVar)
                .padding(.horizontal)
                .padding(.vertical, 10)
                .font(Font.custom("Rubik", size: 18).weight(.light))
                .padding(.leading)

        }
    }
//    func addQuote(fullName: String, projName: String, email: String, phoneNum: String, address: String) {
//        Auth.auth().createUser(withEmail: email, password: password) { result, error in
//            if let error = error {
//                print("Error creating user: \(error.localizedDescription)")
//                return
//            }
//            guard let user = result?.user else { return }
//            let usersDatabase = Firestore.firestore()
//            let userData = ["fullName": fullName, "email": email, "password": password, "uid": user.uid]
//            let reference = usersDatabase.collection("Users").document(user.uid)
//            reference.setData(userData) { error in
//                if let error = error {
//                    print("Error saving user data: \(error.localizedDescription)")
//                }
//            }
//            print("User created successfully!")
//        }
//        
//    }
}



#Preview {
    RequestAQuote1()
}
