//
//  ContentView.swift
//  ButtonDemo
//
//  Created by Ivan Chukharev on 10/18/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showDetails = false
    
    var body: some View {
        Button("Show details"){
            showDetails.toggle()
        }.font(.title)
         .padding()
         .background(showDetails ? Color.green : Color.gray)
         .foregroundColor(.white)
         .cornerRadius(10)
        
        if showDetails {
            Image("nycpic")
                .resizable()
                .scaledToFit()
        }
    }
}
        

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

