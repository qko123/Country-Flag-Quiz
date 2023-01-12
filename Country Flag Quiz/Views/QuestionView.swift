//
//  QuestionView.swift
//  Country Flag Quiz
//
//  Created by Quinn Kozak on 1/10/23.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var quizManager: QuizManager
    var body: some View {
        if quizManager.playingGame {
        VStack(spacing: 20) {
            HStack {
                Text("Country Flag Quiz")
                    .foregroundColor(.yellow)
                    .font(.title)
                    .fontWeight(.heavy)
                Spacer()
                Text("\(quizManager.index) out of \(quizManager.questions.count)")
                    .foregroundColor(.yellow)
                    .fontWeight(.heavy)
            }
            ProgressBar(progress: quizManager.progress)
            VStack(spacing: 20) {
                Text("What country's flag is this?")
                    .font(.title)
                Image(quizManager.country)
                    .resizable()
                    .frame(width: 300, height: 200)
                ForEach(quizManager.answerChoices) {
                    answer in
                    AnswerRow(answer: answer)
                        .environmentObject(quizManager)
                }
            }
            CustomButton(text: "Next")
            Spacer()
        }
        .padding()
        .frame(width: .infinity, height: .infinity)
        .background(.cyan)
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
