//
//  ContentView.swift
//  SimpleCalculator
//
//  Created by Dhai Alassaf on 21/08/1445 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var value1: Int?
    @State private var value2: Int?
    @State private var result = 0
    
    var body: some View {
        Spacer()
        NavigationStack{
            VStack {
                TextField("Enter the first number", value: $value1, format: .number)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.gray, lineWidth: 0.5)
                    )
                
                TextField("Enter the second number", value: $value2, format: .number)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.gray, lineWidth: 0.5)
                    )
                
                HStack{
                    //Plus
                    Button(action: {
                        
                        self.result = (self.value1 ?? 0) + (self.value2 ?? 0)
                    }) {
                        Image(systemName: "plus")
                    }
                    .font(.title2)
                    .bold()
                    .frame(width: 50, height: 50)
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .clipShape(Circle())
                    // Minus
                    Button(action: {
                        
                        self.result = (self.value1 ?? 0) - (self.value2 ?? 0)
                    }) {
                        Image(systemName: "minus")
                    }
                    .font(.title2)
                    .bold()
                    .frame(width: 50, height: 50)
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .clipShape(Circle())
                    // Divide
                    Button(action: {
                        
                        self.result = (self.value1 ?? 0) / (self.value2 ?? 0)
                    }) {
                        Image(systemName: "divide")
                    }
                    .font(.title2)
                    .bold()
                    .frame(width: 50, height: 50)
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .clipShape(Circle())
                    // multiply
                    Button(action: {
                        
                        self.result = (self.value1 ?? 0) - (self.value2 ?? 0)
                    }) {
                        Image(systemName: "multiply")
                    }
                    .font(.title2)
                    .bold()
                    .frame(width: 50, height: 50)
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .clipShape(Circle())
                } .padding()
                
                Text("Result: \(result)")
                    .font(.title2)
                    .padding()
//                    .overlay(
//                        RoundedRectangle(cornerRadius: 5)
//                            .stroke(Color.gray, lineWidth: 0.5)
//                    )
            }.padding()
            Spacer()
                .navigationTitle("Calculator")
                    .foregroundColor(.white)
        }
        
    }
}


#Preview {
    ContentView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
