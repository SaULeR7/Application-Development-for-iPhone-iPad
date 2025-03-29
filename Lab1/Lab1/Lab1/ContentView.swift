//
//  ContentView.swift
//  Lab1
//
//  Created by Ivan Chukharev on 10/5/23.
//
import SwiftUI

struct ContentView: View {
    @State private var showDetails = false
    var body: some View {
        VStack {
            Text("New York")
                .font(.title)
                .padding(.top, 10)
                .bold()
                .padding(.leading, 10)
                .frame(maxWidth: .infinity, alignment: .leading)
            Image("nycpic")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxHeight: 400)
            Text("New York City comprises 5 boroughs sitting where the Hudson River meets the Atlantic Ocean. Its iconic sites include skyscrapers such as the Empire State Building and sprawling Central Park. Broadway theater is staged in neon-lit Times Square.")
                .padding(.top, 10)
                .padding(.leading, 10)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("City Tours")
                .font(.title2)
                .bold()
                .padding(.top, 5)
                .padding(.leading, 10)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("With a Pro subscription you can access city tour itineraries for every city!")
                .padding(.top, 5)
                .padding(.leading, 10)
                .frame(maxWidth: .infinity, alignment: .leading)
            Button(action: {
                showDetails = true
            }) {
                HStack {
                    Image(systemName: "map")
                        .foregroundColor(.red)
                    Text("Join Pro for Tours")
                }
                .padding(30)
                .frame(maxWidth: .infinity)
                .background(Color.indigo)
                .foregroundColor(.white)
                .cornerRadius(20)
            }
        }
        .sheet(isPresented: $showDetails) {
            DetailsView()
        }
    }
}



struct DetailsView: View {
    var body: some View {
        VStack {
            Image(systemName: "map")
                .font(.system(size: 80))
                .padding(.top, 10)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("Tour App – Pro")
                .padding(.top,10)
                .bold()
                .font(.title)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("With a Pro subscription, you'll be able to access all the city tour itineraries, best accommodations, places to eat and more!")
                .padding(.top,10)
                .frame(maxWidth: .infinity, alignment: .leading)

            Image("1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxHeight: .infinity)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
