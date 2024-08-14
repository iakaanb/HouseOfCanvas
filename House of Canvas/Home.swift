//
//  Home.swift
//  House of Canvas
//
//  Created by kai on 7/17/24.
//

import SwiftUI

struct Home: View {
    @State private var showPopover = false
    var body: some View {
        //        NavigationView {
        //            Text("HELLO")
        //        }
        //        .navigationBarBackButtonHidden(true)
        VStack (spacing: -1) {
            Rectangle()
                .frame(width: .infinity, height: 104)
                .foregroundColor(.black)
                .overlay {
                    Image("Logo")
                        .resizable()
                        .frame(width: 161, height: 104)
                }
            Rectangle()
                .frame(width: .infinity, height: 200)
                .foregroundColor(Color(red: 0.64, green: 0.61, blue: 0.53))
                .overlay {
                    VStack {
                        ZStack{
                            Circle()
                                .foregroundColor(.gray)
                                .frame(width: 85, height: 85)
                                .overlay(Circle().stroke(.black, lineWidth: 0.5))
                            Text("N").font(Font.largeTitle.weight(.regular))
                        }
                        Text("Full Name").font(Font.largeTitle.weight(.regular))
                    }
                }
            Divider()
                .frame(minHeight: 0.75)
                .background(Color.black)
            Text("My Requests").font(Font.title2.weight(.regular))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding([.top], 16)
                .padding([.bottom], 7)
                .padding([.leading], 11)
            Divider()
                .frame(minHeight: 0.75)
                .background(Color.black)
//            HStack(spacing: 7) {
//            List(projects) { project in
                VStack() {
                    HStack(spacing: 17) {
//                        Text(project.name).frame(maxWidth: .infinity, alignment: .leading)
//                        Text(project.jobNum).frame(alignment: .trailing)
                        Text("Customer/Project Name").frame(maxWidth: .infinity, alignment: .leading)
                        Text("Job #").frame(alignment: .trailing)
                    }
                    HStack() {
//                        Text(project.date).fontWeight(.light).frame(maxWidth: .infinity, alignment: .leading)
                        Text("Date").fontWeight(.light).frame(maxWidth: .infinity, alignment: .leading)
                        //            }
                        
                        Button("get request >") {
                            showPopover.toggle()
                        }
                        //                    .padding([.trailing, .leading], 7)
                        //                    .buttonStyle(.borderedProminent)
                        .popover(isPresented: $showPopover,
                                 attachmentAnchor: .point(.topLeading),
                                 content: {
//                            Text(project.cost)
//                                .padding()
//                                .frame(minWidth: 300, maxHeight: 400)
//                                .presentationCompactAdaptation(.popover)
                            Text("$4,000.00")
                                .padding()
                                .frame(minWidth: 300, maxHeight: 400)
                            //                    .background(.)
                                .presentationCompactAdaptation(.popover)
                        })
                        //                    .background(Color.gray)
                        //                    .cornerRadius(5)
                    }
                }
                //            }
                .padding([.leading, .trailing], 11)
                .padding([.top, .bottom], 7)
                Divider()
                    .background(Color.gray)
//            }
        }
    }
}

#Preview {
    Home()
}
