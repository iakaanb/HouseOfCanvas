//
//  Login.swift
//  House of Canvas
//
//  Created by kai on 1/4/24.
//

import SwiftUI

struct Login: View {
    @State private var user: String = "   "
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
                        Text("LOGIN")
                            .font(Font.largeTitle.weight(.bold))
                            .foregroundColor(.black)
                            .frame(maxWidth: 340, alignment: .leading)
                        ZStack {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 347, height: 237)
                                .background(.white)
                                .cornerRadius(7)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 7)
                                        .inset(by: 2.50)
                                        .stroke(Color(red: 0.64, green: 0.61, blue: 0.53), lineWidth: 5.00))
                            VStack {
                                Text("Username")
                                    .font(Font.custom("Inter", size: 20).weight(.bold))
                                    .foregroundColor(.black)
                                    .frame(maxWidth: 311, alignment: .leading)
                                TextField(" Username", text: $user)
                                    .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.black)
                                    .frame(width: 311, height: 46)
                                    .background(Color(red: 0.64, green: 0.61, blue: 0.53))
                                    .cornerRadius(5)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 5)
                                            .inset(by: 1)
                                            .stroke(.black, lineWidth: 1))
                                Text(" Password")
                                    .font(Font.custom("Inter", size: 20).weight(.bold))
                                    .foregroundColor(.black)
                                    .frame(maxWidth: 311, alignment: .leading)
                                TextField("Password", text: $password)
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
                        NavigationLink(destination: Login()) {
                            Text("LOGIN")
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
}

#Preview {
    Login()
}
