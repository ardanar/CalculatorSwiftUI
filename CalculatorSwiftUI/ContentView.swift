//
//  ContentView.swift
//  CalculatorSwiftUI
//
//  Created by Arda Nar on 30.07.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var number1: String = ""
    @State var number2: String = ""
    @State var result: Double = 0.0
    
    var body: some View {
        VStack {
            
            Text("Sonuç: \(String(format: "%.3f", result))")
                .font(.title)
                .padding(.bottom, 30)
            
            TextField("Sayı Giriniz", text: $number1)
                .frame(width: 270, height: 50)
                .multilineTextAlignment(.center)
                .background(Color.gray.opacity(0.2).shadow(radius: 5))
                .cornerRadius(7)
                .padding(.bottom, 20)
                .foregroundColor(.black)
                .font(.title2)
            
            TextField("Sayı Giriniz", text: $number2)
                .frame(width: 270, height: 50)
                .multilineTextAlignment(.center)
                .background(Color.gray.opacity(0.2).shadow(radius: 5))
                .cornerRadius(7)
                .padding(.bottom, 20)
                .foregroundColor(.black)
                .font(.title2)
                .padding(.bottom, 30)
            
            VStack{
                HStack{
                    Button(action: {
                        result = (Double(number1) ?? 0.0) + (Double(number2) ?? 0.0)
                        number1 = ""
                        number2 = ""
                    }, label: {
                        Text("Topla")
                    })
                    .foregroundColor(.white)
                    .frame(width: 80, height: 40)
                    .background(Color.blue)
                    .cornerRadius(10)
                    Spacer()
                    Button(action: {
                        result = (Double(number1) ?? 0.0) - (Double(number2) ?? 0.0)
                        number1 = ""
                        number2 = ""
                    }, label: {
                        Text("Çıkar")
                    })
                    .foregroundColor(.white)
                    .frame(width: 80, height: 40)
                    .background(Color.blue)
                    .cornerRadius(10)
                }
                .padding(.bottom, 30)
                
                HStack{
                    Button(action: {
                        result = (Double(number1) ?? 0.0) * (Double(number2) ?? 0.0)
                        number1 = ""
                        number2 = ""
                    }, label: {
                        Text("Çarp")
                    })
                    .foregroundColor(.white)
                    .frame(width: 80, height: 40)
                    .background(Color.blue)
                    .cornerRadius(10)
                    Spacer()
                    Button(action: {
                        if number2 == "0"{
                            result = 0.0
                        }else{
                            result = (Double(number1) ?? 0.0) / (Double(number2) ?? 0.0)
                            number1 = ""
                            number2 = ""
                        }
                    }, label: {
                        Text("Böl")
                    })
                    .foregroundColor(.white)
                    .frame(width: 80, height: 40)
                    .background(Color.blue)
                    .cornerRadius(10)
                }
            }
            .frame(width: 200)
            
        }
        
    }
}

#Preview {
    ContentView()
}
