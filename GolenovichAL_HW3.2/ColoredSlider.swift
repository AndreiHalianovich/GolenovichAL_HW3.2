//
//  ColoredSlider.swift
//  GolenovichAL_HW3.2
//
//  Created by Andrei Halianovich on 30.03.21.
//

import SwiftUI

struct ColoredSlider: View {
    
    @Binding var value: Double
    
    @State private var text = ""
    @State private var alertPresented = false
    
    var minimumTrackTintColor: Color
    
    var body: some View {
        HStack {
            Text("\(lround(value))")
                .foregroundColor(.white)
                .frame(width: 35)
            
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(minimumTrackTintColor)
    
            TextField("", text: $text,  onCommit: {
                checkValueFromTextField()
            })
            .alert(isPresented: $alertPresented, content: {
                Alert(title: Text("Wrong format!"), message: Text("Enter a value between 0 and 255"))
            })
            .frame(width: 45, alignment: .center)
            .onReceive(text.publisher.collect()) {
                self.text = String($0.prefix(3))
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())
        }
        .padding(.horizontal)
    }
    
    private func checkValueFromTextField() {
        if let value = Double(text), 0...255 ~= value {
            self.value = value
        } else {
            text = String(lround(value))
            alertPresented.toggle()
        }
        
    }
}

