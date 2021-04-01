//
//  ContentView.swift
//  GolenovichAL_HW3.2
//
//  Created by Andrei Halianovich on 29.03.21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redColorValue = 30.0
    @State private var greenColorValue = 120.0
    @State private var blueColorValue = 230.0
    
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.1183417514, green: 0.3233708143, blue: 0.5748734474, alpha: 1)).ignoresSafeArea()
            
            VStack(spacing: 50) {
                ColorView(red: redColorValue, green: greenColorValue, blue: blueColorValue)
                
                VStack (spacing: 15){
                    ColoredSlider(value: $redColorValue, minimumTrackTintColor: .red)
                    ColoredSlider(value: $greenColorValue, minimumTrackTintColor: .green)
                    ColoredSlider(value: $blueColorValue ,minimumTrackTintColor: .blue)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11 Pro")
    }
}


