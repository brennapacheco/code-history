//
//  ContentView.swift
//  Code History
//
//  Created by Brenna Pacheco on 02/01/24.
//

import SwiftUI

struct ContentView: View {
    
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
                
                Text("What was the first computer bug?")
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                Spacer()
                
                //Answer buttons
                
                HStack{
                    Button(action: {
                        print("Tapped on Choice 1")
                    }, label: {
                        Text("Ant")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .border(accentColor, width: 4)
                    })
                    Button(action: {
                        print("Tapped on Choice 2")
                    }, label: {
                        Text("Beetle")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .border(accentColor, width: 4)
                    })
                    Button(action: {
                        print("Tapped on Choice 3")
                    }, label: {
                        Text("Moth")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .border(accentColor, width: 4)
                    })
                    Button(action: {
                        print("Tapped on Choice 4")
                    }, label: {
                        Text("Fly")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .border(accentColor, width: 4)
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
