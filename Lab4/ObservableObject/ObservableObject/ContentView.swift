//
//  ContentView.swift
//  ObservableObject
//
//  Created by Ivan Chukharev on 11/13/23.
//

import SwiftUI

class UserData: ObservableObject {
    @Published var username: String = "Guest"
    @Published var age: Int = 20
    var canVote: Bool {
        age >= 18
    }
    
    func increaseAge(){
        age += 1
    }
    
    func decreaseAge(){
        age -= 1
    }
}

struct ContentView: View {
    @ObservedObject var userData = UserData()
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.yellow
                VStack {
                    Text("Welcome, \(userData.username)")
                        .font(.headline)
                    Text("Age: \(userData.age)")
                        .font(.headline)
                    Text("Can vote: \(userData.canVote ? "Yes" : "No")")
                        .font(.headline)
                    
                    HStack{
                        Button("Increase Age") {
                            userData.increaseAge()
                        }.padding(10)
                        Button("Decrease Age") {
                            userData.decreaseAge()
                        }.padding(10)
                    }.padding(15)
                    
                    if(userData.age >= 18){
                        NavigationLink("Apply to Vote", destination: SecondView(age: $userData.age).navigationBarBackButtonHidden(true)).frame(width: 200, height: 50)
                            .background(Color.blue)
                            .foregroundColor(.white)
                    }
                    else {
                        NavigationLink("Apply to Vote", destination: SecondView(age: $userData.age).navigationBarBackButtonHidden(true)).frame(width: 200, height: 50)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .hidden()
                    }
                }
                .padding()}
        }
        
    }
}

