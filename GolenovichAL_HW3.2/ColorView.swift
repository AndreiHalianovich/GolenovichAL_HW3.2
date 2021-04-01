//
//  ColorView.swift
//  GolenovichAL_HW3.2
//
//  Created by Andrei Halianovich on 31.03.21.
//

import SwiftUI

struct ColorView: View {
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color (
            red: red / 255,
            green: green / 255,
            blue: blue / 255
        )
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 3)
        )
        .frame(height: 150)
        .padding()
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 100, green: 100, blue: 100)
    }
}
