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
    var mainColor = Color(red: 69/255, green: 2/255, blue: 105/255)
    let accentColor = Color(red: 66/255, green: 245/255, blue: 75/255)
    
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
                    Button(action: {
                        print("Tapped on Choice 1")
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[0])
                    })
                    Button(action: {
                        print("Tapped on Choice 2")
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[1])
                    })
                    Button(action: {
                        print("Tapped on Choice 3")
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[2])
                    })
                    Button(action: {
                        print("Tapped on Choice 4")
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[3])
                    })
                }
            }
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    ContentView()
}
