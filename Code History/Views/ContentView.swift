//
//  ContentView.swift
//  Code History
//
//  Created by Brenna Pacheco on 02/01/24.
//

import SwiftUI

struct ContentView: View {
    
    let question = Question(questionText: "What was the first computer bug?",
                            possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"],
                            correctAnswerIndex: 2)
    
    @State var mainColor = Color(red: 69/255, green: 2/255, blue: 105/255)
    
    var body: some View {
        ZStack {
            mainColor.ignoresSafeArea()
            VStack{
                
                //Question number
                
                Text("1 / 10")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                
                //Question
                
                Text(question.questionText)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                Spacer()
                
                //Answer buttons
                
                HStack{
                    ForEach(0..<question.possibleAnswers.count) { answerIndex in
                        Button(action: {
                            print("Tapped on option with the text \(question.possibleAnswers[answerIndex])")
                            mainColor = answerIndex == question.correctAnswerIndex ? .green : .red
                        }, label: {
                            ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                        })
                    }
                }
            }
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    ContentView()
}
