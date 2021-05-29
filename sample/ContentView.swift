//
//  ContentView.swift
//  sample
//
//  Created by Nikhil Lihla on 29/05/21.
//

import SwiftUI

struct ContentView: View {
    let r = Double.random(in: 0 ..< 1)
    let g = Double.random(in: 0 ..< 1)
    let b = Double.random(in: 0 ..< 1)
    @State var rGuess: Double
    @State var gGuess: Double
    @State var bGuess: Double
    
    var body: some View {
        VStack{
            HStack {
                VStack {
                    Rectangle().foregroundColor(Color(red: r, green: g, blue: b))
                    Text("Match This Color")
                }
                VStack{
                    Rectangle().foregroundColor(Color(red: rGuess, green: gGuess, blue: bGuess))
                    HStack {
                      Text("R: \(Int(rGuess * 255.0))")
                      Text("G: \(Int(gGuess * 255.0))")
                      Text("B: \(Int(bGuess * 255.0))")
                    }
                }
            }
            ColorSlider(value: $rGuess, textColor: .red)
            ColorSlider(value: $gGuess, textColor: .green)
            ColorSlider(value: $bGuess, textColor: .blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(rGuess: 0.1, gGuess: 0.3, bGuess: 0.9)
        }
    }
}

struct ColorSlider: View {
    @Binding var value: Double
    var textColor: Color
    var body: some View {
        HStack {
            Text("0").foregroundColor(textColor)
            Slider(value: $value)
            Text("255").foregroundColor(textColor)
        }.padding()
    }
}
