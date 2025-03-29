//
//  ThirdView.swift
//  Lab3
//
//  Created by Ivan Chukharev on 10/27/23.
//
import SwiftUI

struct ThirdView: View {
    @State private var message: String = "Tap the button for a surprise!"
    @State private var isShowingMessage: Bool = false

    var body: some View {
        ZStack {
            Color.purple
            VStack {
                Text("Third Screen")
                    .font(.largeTitle)
                    .padding()
                    .foregroundColor(.white)

                Text(message)
                    .font(.title)
                    .padding()
                    .foregroundColor(.white)

                Button("Reveal Message") {
                    isShowingMessage.toggle()
                    if isShowingMessage {
                        message = getRandomMessage()
                    } else {
                        message = "Tap the button for a surprise!"
                    }
                }
                .buttonStyle(CustomButtonStyle())
                .padding()
                
                NavigationLink( destination: FirstView().navigationBarBackButtonHidden(true),
                                label: {Text("Back")})
                .buttonStyle(CustomButtonStyle())
                .padding()
            }
        }

    }

    func getRandomMessage() -> String {
        let messages = ["You're awesome!", "Keep going!", "Success is near!", "Stay positive!"]
        return messages.randomElement() ?? "Surprise!"
    }
}
