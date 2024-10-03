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
    @State private var showPopup = false

    
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
                            Text("My Requests").font(Font.title.weight(.bold)).frame(maxWidth: .infinity, alignment: .center)
                            Image(systemName: "person.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                                .padding(.leading)
                        }
                        .padding(.horizontal)
                    }
                Divider()
                    .frame(minHeight: 2)
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
                if showPopup {
                    VStack {
                        Rectangle()
                            .fill(Color(red: 0.64, green: 0.61, blue: 0.53))
                            .frame(width: 250, height: 50)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black, lineWidth: 2)
                            )
                            .overlay(
                                VStack {
                                    Button("Request A Quote") {
                                        showPopup = false
                                        isActive = true
                                    }
                                    .font(.headline)
                                    .foregroundColor(.black)
                                }
                            )
                    }
                    .padding(.leading, 90)
                    .padding(.bottom, 10)
                }
                Button(action: {
                    isPlusPressed = true
                    showPopup = true
                }) {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                        .foregroundColor(isPlusPressed ? .black : Color(red: 0.64, green: 0.61, blue: 0.53))
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                }
                .padding(.leading, 275)
                .navigationDestination(isPresented: $isActive) {
                    RequestAQuote1()
                }
            }
            .animation(.easeInOut(duration: 0.5), value: showPopup)
        }
        .navigationTitle("")
        .navigationBarHidden(true)
        }
//    }
}

#Preview {
    Home()
}
