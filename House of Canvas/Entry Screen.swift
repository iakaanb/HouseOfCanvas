//
//  Entry Screen.swift
//  House of Canvas
//
//  Created by kai on 7/8/24.
//

import SwiftUI
import Firebase

struct EntryScreen: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(UIColor.lightGray)
//                    .brightness(9)
                    .opacity(0.5)
                    .ignoresSafeArea()
                VStack (spacing: 50) {
                    Image("Logo")
                        .resizable()
                        .frame(width: 345, height: 245)
                        .cornerRadius(5)
                    HStack (spacing: 30) {
                        NavigationLink(destination: SignUp()) {
                            Text("SIGN UP")
                        }
                        .foregroundColor(.black)
                        .font(Font.title2.weight(.bold))
                        .frame(width: 155, height: 46)
                        .background(Color(red: 0.64, green: 0.61, blue: 0.53))
                        .cornerRadius(5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .inset(by: 1)
                                .stroke(.black, lineWidth: 2.5))
                        NavigationLink(destination: Login()) {
                            Text("LOGIN")
                        }
                        .foregroundColor(.black)
                        .font(Font.title2.weight(.bold))
                        .frame(width: 155, height: 46)
                        .background(Color(red: 0.64, green: 0.61, blue: 0.53))
                        .cornerRadius(5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .inset(by: 1)
                                .stroke(.black, lineWidth: 2.5))
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    EntryScreen()
}
