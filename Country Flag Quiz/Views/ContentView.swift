//
//  ContentView.swift
//  Country Flag Quiz
//
//  Created by Quinn Kozak on 1/10/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var quizManager = QuizManager()
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                VStack(spacing:20) {
                    Text("Country Flag Game")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.yellow)
                    Text("Ready to test your skills?")
                        .foregroundColor(.yellow)
                }
                NavigationLink {
                    QuestionView()
                        .environmentObject(quizManager)
                } label: {
                    CustomButton(text: "Start")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea(.all)
            .background(.cyan)
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
