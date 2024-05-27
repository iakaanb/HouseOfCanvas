//
//  RequestAQuote.swift
//  House of Canvas
//
//  Created by kai on 12/30/23.
//

import SwiftUI

struct RequestAQuote: View {
    @State private var fullName: String = "   "
    @State private var projectName: String = "   "
    @State private var frame: String = "   "
    @State private var height: String = "   "
    @State private var width: String = "   "
    @State private var extras: String = "   "
    @State private var others: String = "   "
    @State private var functionals: String = "   "
    @State private var mocks: String = "   "
    @State private var mockSewnPleats: String = "   "
//    @State private var extraVar = "   "
    private let extraChoices = ["Extras?", "Spear Points", "No Side Valances", "Extensions or Cut Outs", "Premium Cloth", "Overlay One Side or Raised", "Bound Top & Bottom", "Bound Top, Bottom, & Raised", "Overlay/Applique Two Sides", "Feature Stripe", "Separate Valance", "Lace on Awnings", "Tack Bands/Tack Flaps", "Second Story Installation", "Pipe Frames", "Trusses", "Valance Stablizers", "Stretcher Bars", "Service Call", "Service Call w/ Trailer", "Trip Charge"]
    private let otherChoices = ["Others?", "Box Awnings", "Circular Awnings", "Globular/Dome Awnings", "Globular/Dome with Different Arches", "French Dome/Long Dome", "French Bull/Convex", "French Bull Bay", "French Bull Arched Top", "Bay Window", "Patio Awning Welded Frame", "Entrance Canopies", "Rigid Valance", "Gazebos", "Recovers", "Frames Picked Up", "Equipment Rentals", "Salesman...", "Retractable Recovers", "Robusta Retractables", "Larger Frames"]
    private let functionalAndMockChoices = ["Choose an Option", "Standard Hardware", "Upgraded Hardware"]
    private let mockSewnPleatsChoices = ["Choose an Option", "Overlay 2.5 inches?", "For Steel Mounts", "Extra Long Tie Backs", "Additional Tie Backs"]
    
    var body: some View {
        VStack {
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 400, height: 103)
                        .background(.black)
                    Image("Logo")
                        .resizable()
                        .frame(width: 161, height: 104)
                }
//                ScrollView(.vertical, showsIndicators: true) {
                    Text("Contact Information")
                        .font(Font.custom("Rubik", size: 20).weight(.light))
                        .frame(maxWidth: 358, alignment: .leading)
                    Spacer()
                    Text("Full Name")
                        .font(Font.custom("Rubik", size: 14).weight(.light))
                        .frame(maxWidth: 358, alignment: .leading)
                    TextField("Full Name", text: $fullName)
                        .frame(width: 244, height: 35)
                        .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                        .cornerRadius(5)
                        .frame(maxWidth: 358, alignment: .leading)
                    Text("Project Name")
                        .font(Font.custom("Rubik", size: 14).weight(.light))
                        .frame(maxWidth: 358, alignment: .leading)
                    TextField("Project Name", text: $projectName)
                        .frame(width: 244, height: 35)
                        .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                        .cornerRadius(5)
                        .frame(maxWidth: 358, alignment: .leading)
                    Spacer()
                    Spacer()
                    Divider()
//                    Rectangle().fill(Color.gray).frame(width: 700, height: 0.50, alignment: .center)
                    Spacer()
                    Spacer()
                    Text("Frame")
                        .font(Font.custom("Rubik", size: 20).weight(.light))
                        .frame(maxWidth: 358, alignment: .leading)
                    //temporary
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
                    Spacer()
                    Spacer()
                    Text("Extras/Other")
                        .font(Font.custom("Rubik", size: 20).weight(.light))
                        .frame(maxWidth: 358, alignment: .leading)
                    //temporary
                    HStack (spacing: 9) {
//                        TextField("Extras", text: $extras)
//                            .frame(width: 175, height: 35)
//                            .background(Color(red: 0.85, green: 0.85, blue: 0.85))
//                            .cornerRadius(5)
                        Picker("Extras", selection: $extras) {
                            ForEach(extraChoices, id: \.self) { extra in
                                Text(extra)
//                                    .font(Font.custom("Rubik", size: 12).weight(.light))
//                                    .foregroundStyle(.black)
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
                    Spacer()
                    Spacer()
                    Text("Exterior")
                        .font(Font.custom("Rubik", size: 20).weight(.light))
                        .frame(maxWidth: 358, alignment: .leading)
                    Spacer()
                    Text("Functional")
                        .font(Font.custom("Rubik", size: 14).weight(.light))
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
                        .font(Font.custom("Rubik", size: 14).weight(.light))
                        .frame(maxWidth: 358, alignment: .leading)
                    //temporary
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
                        .font(Font.custom("Rubik", size: 14).weight(.light))
                        .frame(maxWidth: 358, alignment: .leading)
                    //temporary
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
                    Spacer()
//                }
                Divider()
//                Rectangle()
//                    .fill(Color.gray).frame(width: .infinity, height: 0.50, alignment: .center)
                Spacer()
                Spacer()
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 358, height: 64)
                    .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                    .cornerRadius(5)
                    .overlay(
                Text("SUBMIT")
                    .font(Font.custom("Rubik-Bold", size: 32).weight(.bold))
                    .foregroundColor(.black))
//                    .frame(alignment: .center)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    RequestAQuote()
}
