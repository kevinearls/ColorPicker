//
//  ContentView.swift
//  ColorPicker
//
//  Created by Kevin Earls on 03/12/2023.
//

import SwiftUI

struct ContentView: View {
  @Environment(\.verticalSizeClass) var verticalSizeClass
  @Environment(\.horizontalSizeClass) var horizontalSizeClass

  @State private var redValue = Constants.initialRedValue
  @State private var greenValue = Constants.initialGreenValue
  @State private var blueValue = Constants.initialBlueValue
  @State private var color = Color(red: Constants.initialRedValue/255, green: Constants.initialGreenValue/255, blue: Constants.initialBlueValue/255)

  var body: some View {
    VStack {
      VStack {
        if verticalSizeClass == .regular && horizontalSizeClass == .compact {  // Are we in portrait mode?
          TitleAndColorDisplay(color: $color)
            .padding()
          ColorPickerSlider(color: Color.red, colorValue: $redValue)
          ColorPickerSlider(color: Color.green, colorValue: $greenValue)
          ColorPickerSlider(color: Color.blue, colorValue: $blueValue)
          SetColorButton(redValue: $redValue, greenValue: $greenValue, blueValue: $blueValue, color: $color)
        } else {
          HStack {
            VStack {
              TitleAndColorDisplay(color: $color)
            }
            .padding()
            VStack {
              ColorPickerSlider(color: Color.red, colorValue: $redValue)
              ColorPickerSlider(color: Color.green, colorValue: $greenValue)
              ColorPickerSlider(color: Color.blue, colorValue: $blueValue)
              SetColorButton(redValue: $redValue, greenValue: $greenValue, blueValue: $blueValue, color: $color)
            }
            .padding()
          }
        }
      }
    }
    .padding()
  }
}

#Preview("Light mode, portrait") {
  ContentView()
}

#Preview("Dark mode, portrait") {
  ContentView()
    .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}

#Preview("Light mode, Landscape left", traits: .landscapeLeft) {
  ContentView()
}

