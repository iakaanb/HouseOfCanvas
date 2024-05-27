//
//  Login.swift
//  House of Canvas
//
//  Created by kai on 1/4/24.
//

import SwiftUI

struct Login: View {
    @State private var firstName: String = "   "
    @State private var phoneNum: String = "   "
    
    var body: some View {
        VStack () {
            ZStack {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 400, height: 103)
                    .background(.black)
                Image("Logo")
                    .resizable()
                    .frame(width: 161, height: 104)
            }
            VStack {
                Text("LOGIN")
                    .font(Font.custom("Inter", size: 22).weight(.bold))
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
                        Text("First Name")
                            .font(Font.custom("Inter", size: 20).weight(.bold))
                            .foregroundColor(.black)
                            .frame(maxWidth: 311, alignment: .leading)
                        TextField("First Name", text: $firstName)
                            .foregroundColor(.clear)
                            .frame(width: 311, height: 46)
                            .background(Color(red: 0.64, green: 0.61, blue: 0.53))
                            .cornerRadius(5)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .inset(by: 1)
                                    .stroke(.black, lineWidth: 1))
                        Text("Phone Number")
                            .font(Font.custom("Inter", size: 20).weight(.bold))
                            .foregroundColor(.black)
                            .frame(maxWidth: 311, alignment: .leading)
                        TextField("Phone Number", text: $phoneNum)
                            .foregroundColor(.clear)
                            .frame(width: 311, height: 46)
                            .background(Color(red: 0.64, green: 0.61, blue: 0.53))
                            .cornerRadius(5)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .inset(by: 1)
                                    .stroke(.black, lineWidth: 1))
                    }
                }
            }
//            .position(x: HorizontalAlignment.center)
            .frame(maxWidth: 358, maxHeight: 844, alignment: .center)
        }
    }
}

#Preview {
    Login()
}
