//
//  SecondView.swift
//  Lab3
//
//  Created by Ivan Chukharev on 10/27/23.
//

import SwiftUI

struct SecondView: View {
    @Binding var greeting: String

    var body: some View {
        NavigationView {
            ZStack {
                Color.green
                VStack {
                    Text("Second Screen")
                        .font(.largeTitle)
                        .padding()
                        .foregroundColor(.white)
                    
                    Text(greeting)
                        .font(.title)
                        .padding()
                        .foregroundColor(.white)
                    
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
                        .padding()
                    
                    
                    
                    NavigationLink( destination: FirstView().navigationBarBackButtonHidden(true),
                                    label: {Text("Back")})
                    .buttonStyle(CustomButtonStyle())
                    .padding()
                }
            }
            
        }
    }
}


