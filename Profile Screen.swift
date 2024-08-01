//
//  Profile Screen.swift
//  House of Canvas
//
//  Created by kai on 7/30/24.
//

import SwiftUI
import Firebase


struct ProfileScreen: View {
    @State private var fullName: String = "   "
    @State private var email: String = "   "
    @State private var password: String = "   "
    
    
    var body: some View {
        VStack (spacing: -1){
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: .infinity, height: 103)
                        .background(.black)
                    Image("Logo")
                        .resizable()
                        .frame(width: 161, height: 103)
                }
                .zIndex(3.0)
                ZStack {
                    Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: .infinity, height: 163)
                    .background(Color(red: 0.64, green: 0.61, blue: 0.53))
                    .overlay(
                        Rectangle()
                            .inset(by: 0)
                            .stroke(.black, lineWidth: 0.75))
                    VStack {
                        ZStack {
                            Circle()
                                .foregroundColor(.gray)
                                .frame(width: 85, height: 85)
                            //                        .background(.gray)
                                .overlay(Circle().stroke(.black, lineWidth: 0.5))
                            Text("N").font(Font.largeTitle.weight(.regular))
                        }
                        Text("Full Name").font(Font.largeTitle.weight(.regular))
                    }
                }
            Spacer()
            VStack(alignment: .leading) {
//            Group {
                HStack() {
                    Text("Customer/Project Name")
                    Text("Job #").frame(alignment: .trailing)
                }
                Text("Date").fontWeight(.light)
//            }
            }
            
            
            
                }
    }
}

#Preview {
    ProfileScreen()
}
