//
//  ContentView.swift
//  ColorPicker
//
//  Created by Kevin Earls on 03/12/2023.
//

import SwiftUI

struct ContentView: View {
  @State private var redValue = 0.0;
  @State private var greenValue = 128.0;
  @State private var blueValue = 255.0;
  @State private var color = Color(red: 0.0, green: 128.0, blue: 255.0)

  var colorRange = 0.0...255.0

  var body: some View {
    VStack {
      VStack {
        Text("Color Picker")
          .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        RoundedRectangle(cornerSize: CGSize(width: 0.0, height: 0.0), style: .continuous)
          .foregroundColor(color)
        Text("Red")
        HStack {
          Slider(value: $redValue, in: colorRange)
          Text("\(Int(redValue.rounded()))")
        }
        Text("Green")
        HStack {
          Slider(value: $greenValue, in: colorRange)
          Text("\(Int(greenValue.rounded()))")
        }
        Text("Blue")
        HStack {
          Slider(value: $blueValue, in: colorRange)
          Text("\(Int(blueValue.rounded()))")
        }
        Button("Set Color") {
          calculateAndSetColor()
        }
      }
    }
    .padding()
  }

  func calculateAndSetColor() {
    let redComponent = redValue / 255
    let blueComponent = blueValue / 255
    let greenComponent = greenValue / 255

    color = Color(red: redComponent, green: greenComponent, blue: blueComponent)
  }
}

#Preview {
  ContentView()
}
