//
//  Home.swift
//  House of Canvas
//
//  Created by kai on 7/17/24.
//

import SwiftUI

struct Home: View {
    @State private var showPopover = false
    @State private var isPlusPressed = false
    @State private var isActive = false

    
    var body: some View {
        NavigationStack {
            //                ZStack {
            //                    Color(UIColor.lightGray)
            //                        .opacity(0.5)
            //                        .ignoresSafeArea()
            VStack (spacing: 0){
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
                            Image(systemName: "gear")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                                .padding(.trailing)
                            Text("My Requests").font(Font.title2.weight(.regular)).frame(maxWidth: .infinity, alignment: .center)
                            Image(systemName: "person.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                                .padding(.leading)
                        }
                        .padding(.horizontal)
                    }
                Divider()
                    .frame(minHeight: 0.75)
                    .background(Color.black)
                ScrollView {
                    VStack() {
                        HStack() {
                            Text("Customer/Project Name").frame(maxWidth: .infinity, alignment: .leading)
                            Text("Job #").frame(alignment: .trailing)
                        }
                        .padding(.bottom, 5)
                        HStack() {
                            Text("Date").fontWeight(.light).frame(maxWidth: .infinity, alignment: .leading)
                            
                            Button("get request >") {
                                showPopover.toggle()
                            }
                            .popover(isPresented: $showPopover,
                                     attachmentAnchor: .point(.topLeading),
                                     content: {
                                Text("$4,000.00")
                                    .padding()
                                    .frame(minWidth: 300, maxHeight: 400)
                                    .presentationCompactAdaptation(.popover)
                            })
                        }
                        
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal, 10)
                    Divider()
                        .background(Color.gray)
                }
//                Spacer()
//                HStack {
                    Spacer()
                    Button(action: {
                        isPlusPressed = true
                        isActive = true
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60)
                            .foregroundColor(isPlusPressed ? Color(red: 0.64, green: 0.61, blue: 0.53) : .black)
                            .padding( .horizontal, 20)
                            .padding( .vertical, 10)
                    }
                    .navigationDestination(isPresented: $isActive) {
                        RequestAQuote1()
                    }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
        }
    }
}

#Preview {
    Home()
}
