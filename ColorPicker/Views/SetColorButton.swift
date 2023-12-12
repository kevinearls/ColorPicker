//
//  SetColorButton.swift
//  ColorPicker
//
//  Created by Kevin Earls on 12/12/2023.
//

import SwiftUI

struct SetColorButton: View {
  @Binding var redValue:Double
  @Binding var greenValue:Double
  @Binding var blueValue:Double
  @Binding var color:Color

  var body: some View {
    Button {
      calculateAndSetColor()
    } label: {
      Text(Constants.buttonText)
    }
    .font(.title3)
    .padding()
    .background(.blue)
    .cornerRadius(Constants.roundedRectangleCornerRadius)
    .foregroundColor(.white)
    .overlay(
      RoundedRectangle(cornerRadius: Constants.roundedRectangleCornerRadius)
        .strokeBorder(.white, lineWidth: Constants.roundedRectangleLineWidth)
    )
  }

  func calculateAndSetColor() {
    let redComponent = redValue / 255
    let blueComponent = blueValue / 255
    let greenComponent = greenValue / 255
    withAnimation {
      color = Color(red: redComponent, green: greenComponent, blue: blueComponent)
    }
  }
}

#Preview("Light mode") {
  SetColorButton(redValue: .constant(Constants.initialRedValue), greenValue: .constant(Constants.initialGreenValue),
                 blueValue: .constant(Constants.initialBlueValue), color: .constant(.blue))
}

#Preview("Dark Mode") {
  SetColorButton(redValue: .constant(Constants.initialRedValue), greenValue: .constant(Constants.initialGreenValue),
                 blueValue: .constant(Constants.initialBlueValue), color: .constant(.blue))
  .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
