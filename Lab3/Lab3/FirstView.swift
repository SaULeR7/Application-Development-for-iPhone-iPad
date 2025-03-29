//
//  FirstView.swift
//  Lab3
//
//  Created by Ivan Chukharev on 10/27/23.
//

import SwiftUI


struct CustomButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color.white)
            .foregroundColor(Color.black)
            .cornerRadius(15)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }
}


struct FirstView: View {
    @State private var name: String = ""
    @State private var greeting: String = "Hello, Guest"

    var body: some View {
           NavigationView {
               ZStack {
                   Color.blue
                   VStack {
                       Text("First Screen")
                           .font(Font.custom("YourCustomFont", size: 40))
                           .padding()
                       
                       TextField("Enter your name", text: $name)
                           .textFieldStyle(RoundedBorderTextFieldStyle())
                           .padding()
                       
                       Button("Update Greeting") {
                           if !name.isEmpty {
                               greeting = "Hello, \(name)"
                           } else {
                               greeting = "Hello, Guest"
                           }
                       }
                       .buttonStyle(CustomButtonStyle())
                       .padding()
                       
                       NavigationLink("Go to SecondView", destination: SecondView(greeting: $greeting).navigationBarBackButtonHidden(true))
                           .buttonStyle(CustomButtonStyle())
                           .padding()
                       NavigationLink("Go to ThirdView", destination: ThirdView().navigationBarBackButtonHidden(true))
                           .buttonStyle(CustomButtonStyle())
                           .padding()
                   }
               }
           }
       }
   }
