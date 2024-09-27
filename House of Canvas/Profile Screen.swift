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
        VStack (spacing: 3){
//                HStack {
//                    Rectangle()
//                        .foregroundColor(.clear)
//                        .frame(width: .infinity, height: 103)
//                        .background(.black)
//                    Image("Logo")
//                        .resizable()
//                        .frame(width: 161, height: 103)
//                        .background(Color.black).frame(width: .infinity, height: 103)
//                        .ignoresSafeArea()
//                }
//                .zIndex(3.0)
//            Divider()
//                .frame(minHeight: 0.75)
//                .background(Color.black)
//                ZStack {
//                    Rectangle()
//                    .foregroundColor(.clear)
//                    .frame(width: .infinity, height: 163)
//                    .background(Color(red: 0.64, green: 0.61, blue: 0.53))
//                    .overlay(
//                        Rectangle()
//                            .inset(by: 0)
//            .stroke(.black, lineWidth: 0.75))
            Rectangle()
                .background(.red).frame(width: .infinity, height: 104)
                .overlay {
                    Image("Logo")
                        .resizable()
                        .frame(width: 161, height: 104)
                }
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
                .background(Color(red: 0.64, green: 0.61, blue: 0.53))
                .ignoresSafeArea()
            Divider()
                .frame(minHeight: 0.75)
                .background(Color.black)
            Spacer()
            Text("My Requests").font(Font.title2.weight(.regular)).frame(alignment: .leading)
            Divider()
                .frame(minHeight: 0.75)
                .background(Color.black)
            
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
