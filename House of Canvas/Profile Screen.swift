//
//  Profile Screen.swift
//  House of Canvas
//
//  Created by kai on 7/30/24.
//

import SwiftUI


struct ProfileScreen: View {
    @State private var fullName: String = "   "
    @State private var email: String = "   "
    @State private var password: String = "   "
//    
//    
    var body: some View {
        VStack () {
            Rectangle()
                .background(.red).frame(width: .infinity, height: 104)
                .overlay {
                    Image("Logo")
                        .resizable()
                        .frame(width: 161, height: 104)
                }
                Rectangle()
                .foregroundColor(Color(red: 0.64, green: 0.61, blue: 0.53))
                    .overlay(
//                        Text("Full Name").font(Font.largeTitle.weight(.regular)))
                        Text("My Requests").font(Font.title2.weight(.regular)).frame(alignment: .leading))
                    .frame(height: 50)
//            Divider()
//                .frame(minHeight: 0.75)
//                .background(Color.black)
////            Spacer()
////            Text("My Requests").font(Font.title2.weight(.regular)).frame(alignment: .leading)
            Divider()
                .frame(minHeight: 0.75)
                .background(Color.black)
//            
//                        ScrollView {
//                        List(requests) { request in
//                               HStack {
//                                   VStack(alignment: .leading) {
//                                       Text(request.customerName)
//                                           .font(.headline)
//                                       Text(request.date)
//                                           .fontWeight(.light)
//                                   }
//                                   Spacer()
//                                   Text(request.jobNumber)
//                               }
//                               .padding()
//                           }
//                           .listStyle(PlainListStyle())
//                           
//                           Spacer()
//                       }
//                       .padding(.top, 0)
//                        }
//            
//            
                }
    }
}

#Preview {
    ProfileScreen()
}





