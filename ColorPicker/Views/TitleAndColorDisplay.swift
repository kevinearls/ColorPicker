//
//  TitleAndColorDisplay.swift
//  ColorPicker
//
//  Created by Kevin Earls on 12/12/2023.
//

import SwiftUI

struct TitleAndColorDisplay: View {
  @Binding var color: Color

  var body: some View {
    Text(Constants.titleText)
      .font(.largeTitle)
      .bold()
      .foregroundColor(Constants.textColor)
    RoundedRectangle(cornerRadius: 0.0)
      .foregroundColor(color)
      .border(color.gradient, width: Constants.colorDisplayBorderWidth)
  }
}

#Preview("Light mode") {
  TitleAndColorDisplay(color: .constant(.orange))
}

#Preview("Dark mode") {
  TitleAndColorDisplay(color: .constant(.orange))
    .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
