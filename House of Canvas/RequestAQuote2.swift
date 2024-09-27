//
//  RequestAQuote2.swift
//  House of Canvas
//
//  Created by kai on 12/30/23.
//

import SwiftUI
import Firebase
import FirebaseFirestore

struct RequestAQuote2: View {
    var fullName: String
    var projectName: String
    var email: String
    var phoneNum: String
    var address: String
    
    @State private var frame: String = "   "
    @State private var height: String = "   "
    @State private var width: String = "   "
    @State private var extras: String = "   "
    @State private var others: String = "   "
    @State private var functionals: String = "   "
    @State private var mocks: String = "   "
    @State private var mockSewnPleats: String = "   "
    @State private var isActive = false
    @State private var submissionMessage: String = ""

    //    @State private var extraVar = "   "
    private let extraChoices = ["Extras?", "Spear Points", "No Side Valances", "Extensions or Cut Outs", "Premium Cloth", "Overlay One Side or Raised", "Bound Top & Bottom", "Bound Top, Bottom, & Raised", "Overlay/Applique Two Sides", "Feature Stripe", "Separate Valance", "Lace on Awnings", "Tack Bands/Tack Flaps", "Second Story Installation", "Pipe Frames", "Trusses", "Valance Stablizers", "Stretcher Bars", "Service Call", "Service Call w/ Trailer", "Trip Charge"]
    private let otherChoices = ["Others?", "Box Awnings", "Circular Awnings", "Globular/Dome Awnings", "Globular/Dome with Different Arches", "French Dome/Long Dome", "French Bull/Convex", "French Bull Bay", "French Bull Arched Top", "Bay Window", "Patio Awning Welded Frame", "Entrance Canopies", "Rigid Valance", "Gazebos", "Recovers", "Frames Picked Up", "Equipment Rentals", "Salesman...", "Retractable Recovers", "Robusta Retractables", "Larger Frames"]
    private let functionalAndMockChoices = ["Choose an Option", "Standard Hardware", "Upgraded Hardware"]
    private let mockSewnPleatsChoices = ["Choose an Option", "Overlay 2.5 inches?", "For Steel Mounts", "Extra Long Tie Backs", "Additional Tie Backs"]
    
    var body: some View {
        NavigationStack {
            //                ZStack {
            //                    Color(UIColor.lightGray)
            //                        .opacity(0.5)
            //                        .ignoresSafeArea()
                VStack {
                    VStack(spacing: -8) {
                        ZStack {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: .infinity, height: 104)
                                .background(.black)
                            Image("Logo")
                                .resizable()
                                .frame(width: 161, height: 104)
                        }
                        ZStack{
                            Rectangle()
                                .fill(Color(red: 0.64, green: 0.61, blue: 0.53))
                                .frame(width: .infinity, height: 50)
                                .overlay(
                                    Rectangle()
                                        .inset(by: 1)
                                        .stroke(.black, lineWidth: 2.5))
                            Text("Request A Quote")
                                .frame(alignment: .center)
                                .font(Font.title.weight(.bold))
                        }
                        
                    }
                Spacer()
                Text("Frame")
                    .font(Font.custom("Rubik", size: 20).weight(.light))
                    .frame(maxWidth: 358, alignment: .leading)
                HStack (spacing: 9) {
                    TextField("Frame", text: $frame)
                        .frame(width: 115, height: 35)
                        .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                        .cornerRadius(5)
                    TextField("Height/Proj.", text: $height)
                        .frame(width: 115, height: 35)
                        .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                        .cornerRadius(5)
                    TextField("Width", text: $width)
                        .frame(width: 115, height: 35)
                        .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                        .cornerRadius(5)
                }
                .padding(.bottom, 15)
                Text("Extras/Other")
                    .font(Font.custom("Rubik", size: 20).weight(.light))
                    .frame(maxWidth: 358, alignment: .leading)
                HStack (spacing: 9) {
                    //                        TextField("Extras", text: $extras)
                    //                            .frame(width: 175, height: 35)
                    //                            .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                    //                            .cornerRadius(5)
                    Picker("Extras", selection: $extras) {
                        ForEach(extraChoices, id: \.self) { extra in
                            Text(extra)                                 .foregroundStyle(.black)
                        }
                    }
                    .pickerStyle(.menu)
                    .frame(width: 175, height: 35)
                    .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                    .cornerRadius(5)
                    
                    Picker("Other", selection: $others) {
                        ForEach(otherChoices, id: \.self) { other in
                            Text(other)
                        }
                    }
                    .pickerStyle(.menu)
                    .frame(width: 175, height: 35)
                    .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                    .cornerRadius(5)
                }
                .padding(.bottom, 15)
                Text("Exterior")
                    .font(Font.custom("Rubik", size: 20).weight(.light))
                    .frame(maxWidth: 358, alignment: .leading)
                Text("Functional")
                    .font(Font.custom("Rubik", size: 17).weight(.light))
                    .frame(maxWidth: 358, alignment: .leading)
                Picker("Functional", selection: $functionals) {
                    ForEach(functionalAndMockChoices, id: \.self) { functional in
                        Text(functional)
                    }
                }
                .pickerStyle(.menu)
                .frame(width: 358, height: 35)
                .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                .cornerRadius(5)
                
                Text("Mock")
                    .font(Font.custom("Rubik", size: 17).weight(.light))
                    .frame(maxWidth: 358, alignment: .leading)
                Picker("Mocks", selection: $mocks) {
                    ForEach(functionalAndMockChoices, id: \.self) { mock in
                        Text(mock)
                    }
                }
                .pickerStyle(.menu)
                .frame(width: 358, height: 35)
                .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                .cornerRadius(5)
                Text("Mock Sewn Pleats")
                    .font(Font.custom("Rubik", size: 17).weight(.light))
                    .frame(maxWidth: 358, alignment: .leading)
                Picker("Functional", selection: $mockSewnPleats) {
                    ForEach(mockSewnPleatsChoices, id: \.self) { mockSewnPleat in
                        Text(mockSewnPleat)
                    }
                }
                .pickerStyle(.menu)
                .frame(width: 358, height: 35)
                .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                .cornerRadius(5)
                Spacer()
                Divider()
                    .padding()
                    Button ("Submit") {
                        isActive = true
                        createQuote()
                    }
                    .navigationDestination(isPresented: $isActive) {
                        ProfileScreen()
                    }
                    .foregroundColor(.black)
                    .font(Font.title.weight(.bold))
                    .frame(width: 358, height: 50)
                    .background(Color(red: 0.64, green: 0.61, blue: 0.53))
                    .cornerRadius(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .inset(by: 1)
                            .stroke(.black, lineWidth: 2.5))
                    .padding()
                    
                    Text(submissionMessage)
                        .foregroundColor(.green)
                        .padding()
                    
                    Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
    func createQuote() {
        print("Creating quote...")
        let db = Firestore.firestore()
        guard let user = Auth.auth().currentUser else {
            DispatchQueue.main.async {
                submissionMessage = "Error: User not logged in."
            }
            return
        }
        print("User logged in: \(user.uid)")
        
        db.collection("Users").document(user.uid).getDocument { document, error in
            if let error = error {
                DispatchQueue.main.async {
                    submissionMessage = "Error fetching user data: \(error.localizedDescription)"
                }
                print("Error fetching user data: \(error.localizedDescription)")
                return
            }

            guard let document = document, document.exists,
                  let data = document.data(), let username = data["username"] as? String else {
                DispatchQueue.main.async {
                    submissionMessage = "Error: Username not found."
                }
                print("Error: Username not found.")
                return
            }

            let quoteData: [String: Any] = [
                "fullName": fullName,
                "projectName": projectName,
                "frame": frame,
                "height": height,
                "width": width,
                "extras": extras,
                "others": others,
                "functionals": functionals,
                "mocks": mocks,
                "mockSewnPleats": mockSewnPleats,
                "username": username,
                "timestamp": FieldValue.serverTimestamp()
            ]
            
            db.collection("Quotes").addDocument(data: quoteData) { error in
                if let error = error {
                    DispatchQueue.main.async {
                        submissionMessage = "Error: \(error.localizedDescription)"
                    }
                    print("Error adding document: \(error.localizedDescription)")
                } else {
                    DispatchQueue.main.async {
                        submissionMessage = "Quote submitted successfully!"
                        print("Quote submitted successfully!")
                    }
                }
            }
        }
    }

}

#Preview {
    RequestAQuote2(fullName: "Me", projectName: "Project1", email: "me@gmail.com", phoneNum: "4803536407", address: "301 SOmething Dr")
}
