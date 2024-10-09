//
//  Home.swift
//  House of Canvas
//
//  Created by kai on 7/17/24.
//

import SwiftUI
import Firebase

struct Home: View {
    @State private var showPopover = false
    @State private var showLogoutPopover = false
    @State private var isPlusPressed = false
    @State private var isActive = false
    @State private var isActive2 = false
    @State private var showPopup = false
    @State private var showActionSheet = false
    @State private var showLogoutAlert = false
    @State private var showEmailAlert = false
    @State private var showPasswordAlert = false
    @State private var newEmail: String = ""
    @State private var newPassword: String = ""
    @State private var showEmailInUseAlert = false
    
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
                            //                            Image(systemName: "gear")
                            //                                .resizable()
                            //                                .scaledToFit()
                            //                                .frame(width: 25, height: 25)
                            //                                .padding(.trailing)
                            Spacer()
                            Text("My Requests").font(Font.title.weight(.bold)).frame(maxWidth: .infinity, alignment: .center)
//                                .padding(.leading)
                            
                            
//                            Button(action: {
//                                showActionSheet = true
//                            }) {
//                                Image(systemName: "person.fill")
//                                    .resizable()
//                                    .scaledToFit()
//                                    .frame(width: 23, height: 23)
//                                    .padding(.leading)
//                                    .foregroundColor(Color.black)
//                            }
//                            .actionSheet(isPresented: $showActionSheet) {
//                                ActionSheet(title: Text("Account Settings"), message: nil, buttons: [
//                                    .default(Text("Change Email")) {
//                                        showEmailAlert = true
//                                    },
//                                    .default(Text("Change Password")) {
//                                        showPasswordAlert = true
//                                    },
//                                    .default(Text("Logout")) {
//                                        showLogoutAlert = true
//                                    },
//                                    .cancel()
//                                ])
//                            }
//                            
//                            .alert(isPresented: $showEmailAlert) {
//                                Alert(
//                                    title: Text("Change Email"),
//                                    message: Text("Enter your new email address."),
//                                    primaryButton: .default(Text("Submit")) {
//                                        changeEmail(to: newEmail)
//                                    },
//                                    secondaryButton: .cancel()
//                                )
//                            }
//                            
//                            .alert(isPresented: $showPasswordAlert) {
//                                Alert(
//                                    title: Text("Change Password"),
//                                    message: Text("Enter your new password."),
//                                    primaryButton: .destructive(Text("Continue")) {
//                                        changePassword(to: newPassword)
//                                    },
//                                    secondaryButton: .cancel()
//                                )
//                            }
//                            .alert(isPresented: $showLogoutAlert) {
//                                Alert(
//                                    title: Text("Logout"),
//                                    message: Text("Are you sure you want to log out?"),
//                                    primaryButton: .destructive(Text("Logout")) {
//                                        logoutUser()
//                                        isActive2.toggle()
//                                    },
//                                    secondaryButton: .cancel()
//                                )
//                            }
                            
                            
                            
                            Spacer()
                                                        Button(action: {
                                                            showLogoutPopover.toggle()
                                                        }) {
                                                            Image(systemName: "person.fill")
                                                                .resizable()
                                                                .scaledToFit()
                                                                .frame(width: 23, height: 23)
//                                                                .padding(.leading)
                                                                .foregroundColor(Color.black)
                                                        }
                                                        .popover(isPresented: $showLogoutPopover,
                                                                 attachmentAnchor: .point(.topLeading),
                                                                 arrowEdge: .top) {
                                                            VStack {
                                                                Text("Logout")
                                                                    .padding()
                                                                    .font(Font.title2.weight(.bold))
                                                                HStack {Button("Confirm") {
                                                                    logoutUser()
                                                                    isActive2 = true
                                                                    showLogoutPopover = false
                                                                }
                                                                .foregroundColor(Color.black)
                                                                .padding(.top)
                                                                .padding(.trailing)
                                                                    Button("Cancel") {
                                                                        showLogoutPopover = false
                                                                    }
                                                                    .padding(.top)
                                                                    .padding(.leading)
                                                                    .foregroundColor(Color.black)
                                                                }
                                                            }
                                                                .cornerRadius(10)
                                                                .shadow(radius: 10)
                                                                .frame(minWidth: 300, minHeight: 125)
                                                                .presentationCompactAdaptation(.popover)
                            
//                                                                                    })
                                                        }
                            
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
                .navigationDestination(isPresented: $isActive2) {
                    EntryScreen()
                }
            }
            .animation(.easeInOut(duration: 0.5), value: showPopup)
            //            .navigationBarBackButtonHidden(true)
            .navigationTitle("")
            .navigationBarHidden(true)
        }
        
    }
    //    }
    
    private func logoutUser() {
        do {
            try Auth.auth().signOut()
        } catch let signOutError {
            print("Error signing out: %@", signOutError)
        }
    }
    private func changeEmail(to email: String) {
        guard let user = Auth.auth().currentUser else { return }
        user.sendEmailVerification(beforeUpdatingEmail: email) { error in
            if let error = error as NSError? {
                let errCode = AuthErrorCode( _nsError : error)
                switch errCode.code {
                    case .emailAlreadyInUse:
                        print("The email address is already in use.")
                    case .invalidEmail:
                        print("Invalid email format.")
                    default:
                        print("Error updating email: \(error.localizedDescription)")
                    }
                
            } else {
                print("Email updated successfully.")
            }
        }
    }
    
    private func changePassword(to password: String) {
        Auth.auth().currentUser?.updatePassword(to: password) { error in
            if let error = error {
                print("Error updating password: \(error.localizedDescription)")
            } else {
                print("Password updated successfully.")
            }
        }
    }
}

#Preview {
    Home()
}
