//
//  SecondView.swift
//  ObservableObject
//
//  Created by Ivan Chukharev on 11/13/23.
//

import SwiftUI

struct SecondView: View {
    @State private var name: String = ""
    @Binding var age: Int

    var body: some View {
        NavigationView {
            ZStack {
                Color.green
                VStack {
                    Text("Vote Form")
                        .font(.largeTitle)
                        .padding()
                        .foregroundColor(.white)
                    
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
                        .padding()
                    
                    TextField("Enter your name", text: $name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    
                    Text("Age: \(age)")
                        .font(.title)
                        .padding()
                        .foregroundColor(.white)
                    
                    
                    Button("Submit") {
                        
                    }
                    
                    
                    NavigationLink( destination: ContentView().navigationBarBackButtonHidden(true),
                                    label: {Text("Back")}).frame(width: 200, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                    .padding()
                }
            }
            
        }
    }
}
